# Start Notepad process
Start-Process notepad -PassThru | Out-Null
Start-Sleep -Seconds 1  # Wait for Notepad to open (optional)

# Define array of characters to type
$keys = [char[]]('abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()')

# Initialize variables
$lineLength = 20
$currentLineLength = 0
$lineBreak = "`r`n"  # New line character sequence

# Loop indefinitely to send random keystrokes
while ($true) {
    $key = Get-Random -InputObject $keys

    # Send keystroke using SendKeys
    [System.Windows.Forms.SendKeys]::SendWait($key)

    # Update current line length
    $currentLineLength++

    # Check if it's time for a line break
    if ($currentLineLength -ge $lineLength) {
        [System.Windows.Forms.SendKeys]::SendWait($lineBreak)
        $currentLineLength = 0  # Reset current line length
    }

    Start-Sleep -Milliseconds (Get-Random -Minimum 50 -Maximum 200)
}
