<!--   my-icons -->
<p align="center">
</a>
    <a href="https://github.com/Pr0xyG33k/01_XProtect_Process_Monitoring/"><img src="https://img.shields.io/badge/status-update-greengreen.svg?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/01_XProtect_Process_Monitoring/graphs/contributors"><img src="https://img.shields.io/github/contributors/Pr0xyG33k/01_XProtect_Process_Monitoring?style=for-the-badge">
    <a href="https://github.com/Pr0xyG33k/01_XProtect_Process_Monitoring/stargazers"><img src="https://img.shields.io/github/stars/Pr0xyG33k/01_XProtect_Process_Monitoring?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/01_XProtect_Process_Monitoring/network/members"><img src="https://img.shields.io/github/forks/Pr0xyG33k/01_XProtect_Process_Monitoring.svg?style=for-the-badge"></a>
    <a href="https://github.com/Pr0xyG33k/01_XProtect_Process_Monitoring/issues"><img src="https://img.shields.io/github/issues/Pr0xyG33k/01_XProtect_Process_Monitoring.svg?style=for-the-badge"></a>
</p>

<!-- PROJECT LOGO -->
  <p align="center">
    <br />
    <a href="https://github.com/Pr0xyG33k/01_XProtect_Process_Monitoring/issues">Report Bug</a>
    ·
    <a href="https://github.com/Pr0xyG33k/01_XProtect_Process_Monitoring/pulls">Request Feature</a>
  </p>
</div>

<!--   my-ticker -->
<p align="center">
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=200&section=header&text=XProtect%20Process%20Monitoring&fontSize=60&fontAlignY=35&animation=twinkling&fontColor=gradient" />
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
> This script operates in the background and continuously monitors the system for instances of `Client.exe`. Ensure that you do not manually terminate the primary instance, as this may disrupt the intended functionality of the script.

> [!IMPORTANT]  
> Make sure to have the necessary permissions to kill processes on your system, as this script will terminate additional instances without confirmation.

> [!WARNING]  
> Be cautious when using this script in a production environment. It could unintentionally terminate other processes if misconfigured or applied to the wrong process name.

<!-- REQUIREMENTS -->
<h2>requirements</h2>
<div align="center">
</div>
<div align="center">
</div>

<!-- Necessary installations -->
To run this script on your server, make sure you have the following installed:

| Name     | A short summary                                                  | Install   | Downloads |
| -------- | ---------------------------------------------------------------- | --------- | --------- |
| math     | Provides access to mathematical functions like trigonometric functions, logarithms, and constants such as pi and e.        | [![Python](https://img.shields.io/pypi/v/python-math?color=blue&label=python)](https://pypi.org/project/python-math/) | [![Python](https://pepy.tech/badge/python-math)](https://pypi.org/project/python-math/#files) |
| time     | Supplies functions for working with time and dates, including time formatting, sleep intervals, and time measurement.    | [![Python](https://img.shields.io/pypi/v/TIME-python?color=blue&label=python)](https://pypi.org/project/TIME-python/) | [![Python](https://pepy.tech/badge/TIME-python)](https://pypi.org/project/TIME-python/#files) |
| psutil   | Offers an interface for retrieving system and process information such as CPU, memory, and disk usage. It also provides capabilities for managing system processes. | [![Python](https://img.shields.io/pypi/v/psutil?color=blue&label=python)](https://pypi.org/project/psutil/) | [![Python](https://pepy.tech/badge/psutil)](https://pypi.org/project/psutil/#files) |

<!-- USAGE -->
<h2>usage</h2>
<div align="center">
</div>
<div align="center">
</div>
<div style="border-radius: 5px; background-color: #f0f0f0; padding: 10px;">

1. **Create and activate the virtual environment :**
   ```bash
   # Make sure you're in the directory where you want to create the virtual environment
   python -m venv myenv
   myenv\Scripts\Activate
   ```
   
2. **Run the repository :**
    ```py
    # Clone the repository
    git clone https://github.com/Pr0xyG33k/01_XProtect_Process_Monitoring.git
    cd 01_XProtect_Process_Monitoring/main
    ```
3. **Install dependencies :**
    ```py
    # Install necessary dependencies
    pip3 install -r requirements.txt
    ```
    
4. **Run :**
    ```python
    # Run the script following the repository's documentation
    pythonw XProtect_Process_Monitoring.py
    ```
