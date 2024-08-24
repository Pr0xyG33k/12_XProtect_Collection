<!--   my-icons -->
<p align="center">
</a>
    <a href="https://github.com/Pr0xyG33k/Milestone_XProtect/"><img src="https://img.shields.io/badge/status-writing-yellowgreen.svg?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/Milestone_XProtect/graphs/contributors"><img src="https://img.shields.io/github/contributors/Pr0xyG33k/Milestone_XProtect?style=for-the-badge">
    <a href="https://github.com/Pr0xyG33k/Milestone_XProtect/stargazers"><img src="https://img.shields.io/github/stars/Pr0xyG33k/Milestone_XProtect?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/Milestone_XProtect/network/members"><img src="https://img.shields.io/github/forks/Pr0xyG33k/Milestone_XProtect.svg?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/Milestone_XProtect/issues"><img src="https://img.shields.io/github/issues/Pr0xyG33k/Milestone_XProtect.svg?style=for-the-badge"></a>
</p>

<!-- PROJECT LOGO -->
  <p align="center">
    <br />
    <a href="https://github.com/Pr0xyG33k/Milestone_XProtect/issues">Report Bug</a>
    ·
    <a href="https://github.com/Pr0xyG33k/Milestone_XProtect/pulls">Request Feature</a>
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
> `Milestone_XProtect01.ps1` is a PowerShell script designed to iterate through a specified list of services on the Milestone server and start any services that are stopped. This helps ensure that critical services are running for the proper functioning of the system.

> [!IMPORTANT]  
> Before running the script, make sure you have administrative privileges and the necessary permissions to start services on the Milestone server. This script will attempt to start services that are stopped, so ensure that the list of services is correctly configured.

> [!WARNING]  
> Be cautious when modifying the list of services or deploying this script in a production environment. Incorrect configurations could lead to attempts to start services that should remain stopped or may disrupt system operations. Always test in a controlled environment before deployment.


<!-- REQUIREMENTS -->
<h2>requirements</h2>

Clone the repository :
```powershell
git clone https://github.com/Pr0xyG33k/XProtect_Milestone01.git
```

Navigate to the project directory :
```python
cd XProtect_Milestone01/main
```

<!-- USAGE -->
<h2>usage</h2>

Execute the script :
```powershell
.\Milestone_XProtect01.ps1
```
