# Run this command first with an elevated Powershell
#Set-ExecutionPolicy RemoteSigned
# To revert it, run this command with an elevated Powershell
#Set-ExecutionPolicy Restricted

#Run script as Administrator
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))  
    {  
        $arguments = "& '" +$myinvocation.mycommand.definition + "'"
        Start-Process powershell -Verb runAs -ArgumentList $arguments
        Break
    }
Function mainMenu
    {
        Clear-Host
        Write-Host " `nWinGet Jumpstart `n" -ForegroundColor Green 
        Write-Host "Select Operation"
        Write-Host "1       - Install Programs" -ForegroundColor Yellow
        Write-Host "2       - Download WinGet" -ForegroundColor Yellow
        Write-Host "Any Key - Terminate Script `n" -ForegroundColor Red
        $sel = Read-Host -Prompt "Enter Selection"

        If ($sel -eq 1)
            {
                InstallProgs
            }
        ElseIf ($sel -eq 2)
            {
                InstallWinGet
            }
        Else
            {
                Exit
            }
    }
Function InstallWinGet
    {
        Clear-Host
        Write-Output "Downloading WinGet"
	Write-Output "Downloaded size is about 21XXXXXX"
        #Download WinGet package from Microsoft servers
            wget https://aka.ms/getwinget -O ~/Desktop/WinGet.msixbundle
        Write-Output "WinGet has been downloaded on your Desktop `n Please install it by double clicking on it"
	Write-Output "Please Wait for its dependencies to download"
	Write-Output "Delete the WinGet package aftter successful installation"
        Read-Host -Prompt "Press any key to return to the main menu"
	Clear-Host
        #Go back to main menu
            mainMenu
    }

Function InstallProgs
    {
        Clear-Host
        Write-Output "Installing Selected Programs"
        #Modify this list to suit your needs
            winget install Valve.Steam
            winget install google.chrome
            winget install Videolan.VLC
            winget install SoftDeluxe.FreeDownloadManager
            winget install QL-Win.QuickLook
            winget install Discord.Discord
            winget install Oracle.JavaRuntimeEnvironment
            winget install ModernFlyouts.ModernFlyouts
            winget install EpicGames.EpicGamesLauncher
            winget install Microsoft.PowerToys
            winget install Notion.Notion

            # Uncomment if you use gsudo
            #winget install gsudo

            # Uncomment if prefer to use WT on Windows 10
            #winget install Microsoft.WindowsTerminal

            # Use Virtualbox if needed
            #winget install Oracle.Virtualbox

        Write-Output "Check the programs have been installed"
        Read-Host -Prompt "Press any key to continue..."
	Clear-Host
        #Go back to main menu
            mainMenu
    }
mainMenu