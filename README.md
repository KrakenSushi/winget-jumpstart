<img src="https://store-images.s-microsoft.com/image/apps.33061.13510798887475206.34a5b1cc-aab2-4ec5-ac80-54aecc0eb29a.fb80a0d9-dd99-4cfc-92c3-e937dd0dc5c9?mode=scale&q=90&h=200&w=200&background=%230078d7" alt="winget" width=100px><br>
# Winget Jumpstart


This PowerShell script is made for newly installed instances of Windows.

<br>

## Requirements

* Clone or download the script  from this repo.
```zsh
git clone https://github.com/KrakenSushi/winget-jumpstart.git
``` 
* Update `App Installer` first before auto installing programs by using the Microsoft Store or manually downloading it with this script and installing it.<br><br>
  
 ### Enable running scipts on your Windows system<br><br>
* Run an elevated PowerShell window.
```powershell
Set-ExecutionPolicy RemoteSigned
```
* To disable running scripts on your system, run this command at an elevated PowerShell window.
```powershell
Set-ExecutionPolicy Restricted
```
<br>

## Opening

* Using command line<br>
```sh
./winget-jumpstart.ps1
```

* Using File Explorer<br>
![Open](img/open.gif)

## Selecting programs to install 

* The list of programs to install is under the function `InstallProgs`, modify it to your needs. 
  ![List](img/list.png)
* Search for package names using:
  * [winget.run](https://winget.run/) 
  * Using the command line
```cmd
winget search <program_name> 
```
