param (
    # Specifies the service name
    #[Parameter(Mandatory = $true)]
    #[string]$serviceName = '',
    
    # Specifies the directory for the log file
    [Parameter(Mandatory = $false)]
    [string]$logPath = 'C:\Scripts\Logs',
    
    # Specifies the max number of service Start attempts per run
    [Parameter(Mandatory = $false)]
    [int]$maxTries = 3,
    
    # Specifies the number of seconds to wait before trying again after a failed start attempt or before rechecking a Pending status
    [Parameter(Mandatory = $false)]
    [int]$secondsBeforeRetry = 30

)

$list_ServiceMilestone = @("MilestoneEventServerService","Milestone XProtect Data Collector Server","Milestone XProtect Log Server","Milestone XProtect Management Server","Milestone XProtect Mobile Server","Milestone XProtect Recording Server")

foreach ($serviceName in $list_ServiceMilestone){
    $logName = $serviceName + '_log.txt'
    try {
        $service = Get-Service $serviceName -ErrorAction Stop
    }
    catch {
        Write-Host 'Cannot find any service with service name:' $serviceName
    }
    $logFullPath = Join-Path -Path $logPath -ChildPath $logName

    if(!(Test-Path -Path $logFullPath)) {
        $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
        New-Item -Path $logPath -Name $logName -ItemType "file" -Value "## Log file for $serviceName auto-start script ##`n## Created [$timestamp] ##`n" -Force
        Start-Sleep -s 1
    }
    
    if ($service.Status -eq 'Stopped') {
        $tries = 0
        
        while (($tries -lt $maxTries) -and ($service.Status -ne 'Running')) {
            if ($tries -eq 0) {
                $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                $logSvcStoppedMsg = "[$timestamp] $serviceName service status is $($service.Status), attempting to Start. Will try up to $maxTries times."
                Add-Content -Path $logFullPath -Value $logSvcStoppedMsg
            }
            
            try {
                Start-Service $serviceName -ErrorAction Stop # Throws exception if command fails, for example if the service is Disabled
                $tries += 1
                Start-Sleep -s 10
                $service.Refresh()
                if ($service.Status -eq 'Running') {
                    $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                    $logSvcStartSuccessMsg = "[$timestamp] Attempt #$tries - $serviceName service status is now $($service.Status)"
                    Add-Content -Path $logFullPath -Value $logSvcStartSuccessMsg
                }
    
            }
            catch {
                $errorMsg = $_
                $tries += 1
                Start-Sleep -s 10
                $service.Refresh()
                $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                $logSvcStartExceptionMsg = "[$timestamp] Attempt #$tries - $serviceName service status is $($service.Status) and failed to start with error:`n    $errorMsg"
                Add-Content -Path $logFullPath -Value $logSvcStartExceptionMsg
                if ($tries -ne $maxTries) {
                    Start-Sleep -s $secondsBeforeRetry
                }
            }
            
            $service.Refresh()
            if (($service.Status -eq 'StartPending') -or ($service.Status -eq 'StopPending')) {
                $maxStateChecks = 3
                $stateChecks = 0
                
                while (($stateChecks -lt $maxStateChecks) -and (($service.Status -eq 'StartPending') -or ($service.Status -eq 'StopPending'))) {
                    $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                    $logSvcStillPendingMsg = "[$timestamp] Attempt #$tries - $serviceName service status is $($service.Status). This may indicate the service is hung in the Starting or Stopping state. Waiting another $secondsBeforeRetry seconds before checking again."
                    Add-Content -Path $logFullPath -Value $logSvcStillPendingMsg
                    $stateChecks += 1
                    if ($stateChecks -ne $maxStateChecks) {
                        Start-Sleep -s $secondsBeforeRetry
                    }
                    $service.Refresh()
                    if ($service.Status -eq 'Running') {
                        $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                        $logSvcStartSuccessMsg = "[$timestamp] Attempt #$tries - $serviceName service status is now $($service.Status)"
                        Add-Content -Path $logFullPath -Value $logSvcStartSuccessMsg
                    } elseif ($service.Status -eq 'Stopped') {
                        $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                        $logSvcStoppedAfterPendingMsg = "[$timestamp] Attempt #$tries - $serviceName service status is now $($service.Status). If any Start attempts remain the script will try again on the next loop."
                        Add-Content -Path $logFullPath -Value $logSvcStoppedAfterPendingMsg
                    }
                }
                
                $service.Refresh()
                if (($stateChecks -eq $maxStateChecks) -and (($service.Status -eq 'StartPending') -or ($service.Status -eq 'StopPending'))) {
                    $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                    $logSvcStuckPendingMsg = "[$timestamp] Attempt #$tries - $serviceName service status appears stuck in a Pending (Starting or Stopping) state. Attempting to force kill process."
                    Add-Content -Path $logFullPath -Value $logSvcStuckPendingMsg
                    
                    $servicePID = Get-CimInstance -Class Win32_Service -Filter "Name LIKE '$serviceName'" | Select-Object -ExpandProperty ProcessId
                    $resultMsg = taskkill /pid $servicePID /f
                    $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                    $logSvcTaskKillMsg = "[$timestamp] Attempt #$tries - taskkill result:`n    $resultMsg"
                    Add-Content -Path $logFullPath -Value $logSvcTaskKillMsg
                    
                    Start-Sleep -s 10
                    $service.Refresh()
                    $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                    $logSvcStatusMsg = "[$timestamp] Attempt #$tries - $serviceName service status is now $($service.Status)"
                    Add-Content -Path $logFullPath -Value $logSvcStatusMsg
                }
            }
            
            if (($tries -eq $maxTries) -and ($service.Status -ne 'Running')) {
                $timestamp = (Get-Date -Format yyyy-MM-dd--HH-mm-ss)
                $logNoMoreAttemptsMsg = "[$timestamp] $serviceName service status is $($service.Status) after $maxTries Start attempts. This run of the script will not continue trying to Start the service."
                Add-Content -Path $logFullPath -Value $logNoMoreAttemptsMsg
            }
        }
        
        # Add line break at end of log file entry
        Add-Content -Path $logFullPath -Value "`n"
    }
}
