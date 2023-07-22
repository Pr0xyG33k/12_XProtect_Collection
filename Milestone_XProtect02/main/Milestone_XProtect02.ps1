# Import the MilestonePSTools and ImportExcel modules
Import-Module -Name "C:\Path\To\MilestonePSTools\MilestonePSTools.psm1"
Import-Module -Name "ImportExcel"

# Configure the parameters
$VMServerIP = "192.168.0.100"   # XProtect Milestone server IP address
$VMServerPort = 7563            # XProtect Milestone server port
$VMServerUsername = "admin"     # XProtect Milestone server username
$VMServerPassword = "password"  # XProtect Milestone server password

$CSVFilePath = "C:\Path\To\CameraData.csv"  # Path to the CSV file containing camera data
$DeviceGroupName = "Cameras"                # Device group name

# Connect to the XProtect Milestone server
Connect-MilestoneServer -ServerIP $VMServerIP -ServerPort $VMServerPort -Username $VMServerUsername -Password $VMServerPassword

# Create the device group
New-MilestoneDeviceGroup -Name $DeviceGroupName

# Import the data from the CSV file
$CameraData = Import-Excel -Path $CSVFilePath

# Iterate through the camera data
foreach ($Camera in $CameraData) {
    $CameraName = $Camera.Name        # Camera name
    $CameraIP = $Camera.IPAddress     # Camera IP address
    $CameraModel = $Camera.Model      # Camera model

    # Create the camera in XProtect Milestone
    New-MilestoneDevice -Name $CameraName -IPAddress $CameraIP -Model $CameraModel -Group $DeviceGroupName
}

# Disconnect from the XProtect Milestone server
Disconnect-MilestoneServer
