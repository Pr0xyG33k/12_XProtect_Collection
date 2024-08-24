<!--   my-icons -->
<p align="center">
</a>
    <a href="https://github.com/Pr0xyG33k/12_XProtect_Collection/02_XProtect_Service_Management"><img src="https://img.shields.io/badge/status-update-greengreen.svg?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/12_XProtect_Collection/graphs/contributors"><img src="https://img.shields.io/github/contributors/Pr0xyG33k/12_XProtect_Collection?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/12_XProtect_Collection/stargazers"><img src="https://img.shields.io/github/stars/Pr0xyG33k/12_XProtect_Collection?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/12_XProtect_Collection/network/members"><img src="https://img.shields.io/github/forks/Pr0xyG33k/12_XProtect_Collection.svg?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/12_XProtect_Collection/issues"><img src="https://img.shields.io/github/issues/Pr0xyG33k/12_XProtect_Collection.svg?style=for-the-badge"></a>
</p>

<!-- PROJECT LOGO -->
  <p align="center">
    <br />
    <a href="https://github.com/Pr0xyG33k/12_XProtect_Collection/issues">Report Bug</a>
    ·
    <a href="https://github.com/Pr0xyG33k/12_XProtect_Collection/pulls">Request Feature</a>
  </p>
</div>

<!--   my-ticker -->
<p align="center">
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=200&section=header&text=Service%20Management&fontSize=60&fontAlignY=35&animation=twinkling&fontColor=gradient" />
</p>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about">about</a></li>
    <li><a href="#requirements">requirements</a></li>
    <li><a href="#usage">usage</a></li>
  </ol>
</details>

<!-- ABOUT -->
<h2>about</h2>
<div align="center">
</div>

> [!NOTE]  
> The script operates continuously in the background, monitoring the specified services. It logs each attempt to start the services and tracks their statuses. Ensure that the list of services is accurate and reflects the critical components of your Milestone system to avoid unnecessary service restarts.

> [!IMPORTANT]  
> Before running the script, make sure you have administrative privileges and the necessary permissions to start services on the Milestone server. This script will attempt to start services that are stopped, so ensure that the list of services is correctly configured.

> [!WARNING]  
> Be cautious when modifying the list of services or deploying this script in a production environment. Incorrect configurations could lead to attempts to start services that should remain stopped or may disrupt system operations. Always test in a controlled environment before deployment.

<!-- REQUIREMENTS -->
<h2>requirements</h2>
<div align="center">
</div>
<div align="center">
</div>

<!-- Necessary installations -->
To run this script on your server, make sure you have the following PowerShell modules installed:

| Name                      | A short summary                                                                                                  | Version | Downloads |
| ------------------------- | --------------------------------------------------------------------------------------------------------------- | ------- | --------- |
| `PSReadLine`              | Enhances the command-line editing experience and provides command history features.                           | [![PSReadLine Version](https://img.shields.io/badge/Version-2.1.0-blue?link=https://www.powershellgallery.com/packages/PSReadLine/2.1.0&label=powershell)](https://www.powershellgallery.com/packages/PSReadLine/2.1.0) | [![PSReadLine Downloads](https://img.shields.io/badge/Downloads-5678-brightgreen?link=https://www.powershellgallery.com/packages/PSReadLine)](https://www.powershellgallery.com/packages/PSReadLine) |
| `PSScriptAnalyzer`        | Analyzes PowerShell scripts for best practices and common errors.                                               | [![PSScriptAnalyzer Version](https://img.shields.io/badge/Version-1.18.1-blue?link=https://www.powershellgallery.com/packages/PSScriptAnalyzer/1.18.1&label=powershell)](https://www.powershellgallery.com/packages/PSScriptAnalyzer/1.18.1) | [![PSScriptAnalyzer Downloads](https://img.shields.io/badge/Downloads-2345-brightgreen?link=https://www.powershellgallery.com/packages/PSScriptAnalyzer)](https://www.powershellgallery.com/packages/PSScriptAnalyzer) |
| `Az`                      | Provides cmdlets for managing Azure resources and services.                                                     | [![Az Version](https://img.shields.io/badge/Version-10.10.0-blue?link=https://www.powershellgallery.com/packages/Az/10.10.0&label=powershell)](https://www.powershellgallery.com/packages/Az/10.10.0) | [![Az Downloads](https://img.shields.io/badge/Downloads-6789-brightgreen?link=https://www.powershellgallery.com/packages/Az)](https://www.powershellgallery.com/packages/Az) |
| `CimCmdlets`              | Provides cmdlets to work with the Common Information Model (CIM) and Windows Management Instrumentation (WMI). | [![CimCmdlets Version](https://img.shields.io/badge/Version-1.9.0-blue?link=https://www.powershellgallery.com/packages/CimCmdlets/1.9.0&label=powershell)](https://www.powershellgallery.com/packages/CimCmdlets/1.9.0) | [![CimCmdlets Downloads](https://img.shields.io/badge/Downloads-3456-brightgreen?link=https://www.powershellgallery.com/packages/CimCmdlets)](https://www.powershellgallery.com/packages/CimCmdlets) |

<!-- USAGE -->
<h2>usage</h2>
<div align="center">
</div>
<div align="center">
</div>
<div style="border-radius: 5px; background-color: #f0f0f0; padding: 10px;">

1. **Create and activate the virtual environment :**
   ```powershell
   # Make sure you're in the directory where you want to create the virtual environment
   psenv create myenv
   psenv activate myenv
   ```

2. **Run the repository :**
    ```powershell
    # Clone the repository
    git clone https://github.com/Pr0xyG33k/02_XProtect_Service_Management.git
    cd 02_XProtect_Service_Management/main
    ```
    
3. **Run :** 
    ```powershell
    # Run the script following the repository's documentation
    .\XProtect_Service_Management.ps1
    ```
