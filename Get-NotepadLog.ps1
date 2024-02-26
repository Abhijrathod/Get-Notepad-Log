# Function to log events with timestamp
function Log-Event {
    param(
        [string]$Event
    )

    # Get the current timestamp
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    # Format the log entry with timestamp
    $logEntry = "$timestamp - $Event"

    # Append the log entry to the log file
    Add-Content -Path "C:\Logs\logfile.txt" -Value $logEntry

    # Open notepad with the log file
    Start-Process "notepad.exe" "C:\Logs\logfile.txt"
}

# Define the Get-NotepadLog function
function Get-NotepadLog {
    # Call the Log-Event function with a sample event message
    Log-Event -Event "This is a test log entry."
}

# Call the Get-NotepadLog function
Get-NotepadLog
