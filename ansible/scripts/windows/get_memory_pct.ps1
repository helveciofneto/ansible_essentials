#!powershell
#Requires -Version 2.0
# @author: Helvecio Neto <helveciofneto@gmail.com>
# @description: This is a sample script to inform non-swap memory usage percentage.
$total_memory = (Get-WmiObject -class "Win32_PhysicalMemoryArray" |
Select-Object -Property "MaxCapacity" |
Format-Table -HideTableHeaders | Out-String).Trim() / 1024

$used_memory = (Get-Counter '\Memory\Available MBytes').CounterSamples[0].CookedValue

$memory_usage_pct = [math]::Round($used_memory / $total_memory * 100)

Write-Output "Memory usage is at $memory_usage_pct%."
