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

<!-- USAGE -->
<h2>usage</h2>
<div align="center">
</div>
<div align="center">
</div>
<div style="border-radius: 5px; background-color: #f0f0f0; padding: 10px;">

1. **Run the repository :**
    ```powershell
    # Clone the repository
    git clone https://github.com/Pr0xyG33k/XProtect_Milestone01.git
    cd XProtect_Milestone01/main
    ```
    
2. **Run :** 
    ```powershell
    # Run the script following the repository's documentation
    .\Milestone_XProtect01.ps1
    ```
