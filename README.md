<img src="https://store-images.s-microsoft.com/image/apps.33061.13510798887475206.34a5b1cc-aab2-4ec5-ac80-54aecc0eb29a.fb80a0d9-dd99-4cfc-92c3-e937dd0dc5c9?mode=scale&q=90&h=200&w=200&background=%230078d7" alt="winget" width=100px><br>
# Winget Jumpstart


This Powershell script is made for newly installed instances of Windows

## Usage


* Clone or download this repo as zip
```zsh
git clone https://github.com/KrakenSushi/winget-jumpstart.git
``` 

* Enable running scipts on your Windows system<br>
* Run an elevated PowerShell window
```powershell
Set-ExecutionPolicy RemoteSigned
```
* Update `App Installer` first by using the Microsoft Store or manually downloading it with this script and installing it.
* Execute the script<br>
```sh
./winget-jumpstart.ps1
```
* To revert the changes of running scripts on your system, run this command at an elevated PowerShell window
```powershell
Set-ExecutionPolicy Restricted
```
### Done!