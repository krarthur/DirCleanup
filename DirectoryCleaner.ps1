$directoryPath = "D:\JunkTemp\FinishedDotTorrents"

# Check if the directory exists
if (Test-Path -Path $directoryPath) {
    # Get all files within the directory and its subdirectories
    $files = Get-ChildItem -Path $directoryPath -File -Recurse

    # Loop through each file and delete it
    foreach ($file in $files) {
        try {
            $file.Delete()
            Write-Host "Deleted file: $($file.FullName)"
        } catch {
            Write-Host "Failed to delete file: $($file.FullName)"
        }
    }

    Write-Host "Cleanup completed."
} else {
    Write-Host "Directory not found: $directoryPath"
}
