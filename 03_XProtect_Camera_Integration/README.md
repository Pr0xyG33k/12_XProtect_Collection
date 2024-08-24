<!--   my-icons -->
<p align="center">
</a>
    <a href="https://github.com/Pr0xyG33k/12_XProtect_Collection/03_XProtect_Camera_Integration"><img src="https://img.shields.io/badge/status-update-greengreen.svg?style=for-the-badge"></a>
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
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=200&section=header&text=Camera%20Integration&fontSize=60&fontAlignY=35&animation=twinkling&fontColor=gradient" />
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
> `Milestone_XProtect02.ps1` is a PowerShell script that leverages the `MilestonePSTools` and `ImportExcel` modules to integrate cameras into a Milestone XProtect video management system. This script helps automate the process of adding and configuring cameras, streamlining the integration workflow.

> [!IMPORTANT]  
> Before running this script, ensure you have the `MilestonePSTools` and `ImportExcel` modules installed and properly configured. You will also need appropriate permissions to modify settings in the Milestone XProtect system. Verify that your camera integration parameters are accurate and match the requirements of your system.

> [!WARNING]  
> Exercise caution when running this script in a production environment. Incorrect camera configuration or errors in the integration process could lead to disruptions in video management. It is strongly recommended to test the script in a development or staging environment before deploying it to production.

<!-- REQUIREMENTS -->
<h2>requirements</h2>
<div align="center">
</div>
<div align="center">
</div>

<!-- Necessary installations -->
To run this script on your server, make sure you have the following PowerShell modules installed:

| Name                  | Description                                             | Install                                                                 | Downloads |
|-----------------------|---------------------------------------------------------|-------------------------------------------------------------------------|-----------|
| `ImportExcel`         | Facilitates import and export of Excel files in PowerShell. | [![ImportExcel Version](https://img.shields.io/badge/Version-7.0.4-blue?link=https://www.powershellgallery.com/packages/ImportExcel/7.0.4&label=powershell)](https://www.powershellgallery.com/packages/ImportExcel/7.0.4) | [![ImportExcel Downloads](https://img.shields.io/badge/Downloads-12345-brightgreen?link=https://www.powershellgallery.com/packages/ImportExcel)](https://www.powershellgallery.com/packages/ImportExcel) |

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
    git clone https://github.com/Pr0xyG33k/03_XProtect_Camera_Integration.git
    cd 03_XProtect_Camera_Integration/main
    ```
    
3. **Run :** 
    ```powershell
    # Run the script following the repository's documentation
    .\XProtect_Camera_Integration.ps1
    ```
