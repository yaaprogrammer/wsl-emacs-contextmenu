# wsl-emacs-contextmenu

Open Emacs GUI in WSL2 through X server conveniently

Add shortcut and context menu item for Emacs in Windows.

The scripts will start X server automatically.

![screenshot](./screenshot.png)

## Getting Started

1. Open powershell as administrator
2. Set powershell executionPolicy

   ```powershell
   Set-ExecutionPolicy Unrestricted
   ```

3. Copy `emacs_start.sh` to wsl user's home.
4. Edit `powershellScriptPath` in `emacs_start.vbs`.

    ```vbs
    powershellScriptPath="D:\emacs\wsl-emacs-contextmenu\emacs_start.ps1"
    ```

5. Edit some variables in `emacs_start.ps1`.

   ```powershell
    $wslUserName = "smj"
    $xServerPath = "D:/mobaxterm/MobaXterm.exe"
    $xServerProcessName = "mobaxterm"
    $xServerOptions = " -hideterm"
    $wsl = "ubuntu.exe"
   ```

6. Edit paths in `EditWithEmacs.reg`.
7. Import registry `EditWithEmacs.reg`.
8. Copy `Emacs GUI.lnk` to your desktop and modify its property, or create a new shortcut on yourself.
9. if some error occurs, set `visible` in `emacs_start.vbs` to `1` and see what happened.
10. `emacs_start.sh` set some environment variables for the X server,  modify it if you need.
