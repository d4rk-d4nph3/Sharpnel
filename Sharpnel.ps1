# This is in testing phase.

# ServiceController Class
# Represents a Windows service and allows you to connect to a running or stopped service, manipulate it, or get information about it.
# https://docs.microsoft.com/en-us/dotnet/api/system.serviceprocess.servicecontroller?view=dotnet-plat-ext-3.1

# Enumerate all the services
[System.ServiceProcess.ServiceController]::GetServices()

# Check if Windows Defender is running
[System.ServiceProcess.ServiceController]::GetServices() | %{ if ($_.Name -eq "WinDefend" -and $_.Status -eq "Running") {echo "Windows Defender is Running"}}
