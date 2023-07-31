Get-Disk | Where-Object { $_.PartitionStyle -eq 'raw' } | Initialize-Disk -PartitionStyle MBR -PassThru | New-Partition -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "Disk" -Confirm:$false

Get-Partition | Where-Object { $_.DiskNumber -eq 2 } | Set-Partition -NewDriveLetter F
Get-Partition | Where-Object { $_.DiskNumber -eq 3 } | Set-Partition -NewDriveLetter G
Get-Partition | Where-Object { $_.DiskNumber -eq 4 } | Set-Partition -NewDriveLetter H