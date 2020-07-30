# This is in testing phase.

# ServiceController Class
# Represents a Windows service and allows you to connect to a running or stopped service, manipulate it, or get information about it.
# https://docs.microsoft.com/en-us/dotnet/api/system.serviceprocess.servicecontroller?view=dotnet-plat-ext-3.1

Add-Type -AssemblyName System.ServiceProcess

# Enumerate all the services
[System.ServiceProcess.ServiceController]::GetServices()

# Check if Windows Defender is running
if ([System.ServiceProcess.ServiceController]::New("Sysmon").Status -eq "Running"){ echo "Windows Defender is Running"} else { echo "Windows Defender is not Running"}
# Less efficient way
# [System.ServiceProcess.ServiceController]::GetServices() | %{ if ($_.Name -eq "WinDefend" -and $_.Status -eq "Running") {echo "Windows Defender is Running"}}

# Check if Sysmon is running and works even if Sysmon is not installed
if ([System.ServiceProcess.ServiceController]::New("Sysmon").Status -eq "Running"){ echo "Sysmon is Running"} else{ echo "Sysmon is not Running"}
# Less efficient way
# [System.ServiceProcess.ServiceController]::GetServices() | %{ if ($_.Name -eq "Sysmon" -and $_.Status -eq "Running") {echo "Sysmon is Running"}}
