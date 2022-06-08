
# This is a powershell script to automate setting up OpenVPN Server on Windows 10/11


# Set Execution Policy if you encounter script running error
# Get-ExecutionPolicy -List
# Set-ExecutionPolicy RemoteSigned


# Creates a directory in the root drive

mkdir C:\OpenVPN

# Downloads the OpenVPN file

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://swupdate.openvpn.org/community/releases/OpenVPN-2.5.7-I602-amd64.msi" -OutFile "C:\OpenVPN\OpenVPN.msi"