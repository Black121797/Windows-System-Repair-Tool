# Windows System Repair & Optimization Tool

A lightweight, native automation suite designed to diagnose, repair, and optimize Windows operating system installations using native command scripts and registry configuration adjustments.

## Features
* **Automated System Integrity Scans:** Runs Deployment Image Servicing and Management (DISM) and System File Checker (SFC) tools sequentially.
* **Elevated Privilege Enforcement:** Built-in verification loop to guarantee administrative rights before execution.
* **Automated Registry Provisioning:** Silently injects system-level registry modifications (`.reg`) to streamline disk operations and improve performance.

## File Architecture
* `repair.bat`: Core deployment batch script handling service orchestration and privilege checking.
* `tweaks.reg`: Configuration payload applying low-level Windows file system adjustments.

## Deployment Instructions
1. Download or clone this repository to your local Windows environment.
2. Right-click on `repair.bat`.
3. Select **Run as administrator** to execute the system repair sequence.
