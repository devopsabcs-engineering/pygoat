# Sample insecure PowerShell script

# Hardcoded credentials (PSAvoidUsingPlainTextForPassword)
$username = "admin"
$password = "password123"

# Unapproved verb in function name (PSUseApprovedVerbs)
function Delete-File {
    param (
        [string]$filePath
    )
    Remove-Item -Path $filePath -Force
}

# No comment-based help (PSProvideCommentHelp)
function Get-Data {
    param (
        [string]$url
    )
    $response = Invoke-WebRequest -Uri $url
    return $response.Content
}

# Using aliases instead of full cmdlet names (PSAvoidUsingCmdletAliases)
ls C:\Windows\System32

# No error handling (PSAvoidUsingWriteHost)
Write-Host "Script executed successfully"
