#WinGet Jumpstart
-----------------

This Powershell script is made for newly installed instances of Windows(R)

##Usage
-----

* Clone or download this repo as zip
```powershell
git clone https://github.com/KrakenSushi/winget-jumpstart.git
```
* Enable running scipts on your Windows system<br>
* Run an elevated PowerShell window
```powershell
Set-ExecutionPolicy RemoteSigned
```
* Execute the script<br>
```powershell
./winget-jumpstart.ps1
```
* To revert the changes of running scripts on your system, run this command at an elevated PowerShell window
```powershell
Set-ExecutionPolicy Restricted
```

###Done!