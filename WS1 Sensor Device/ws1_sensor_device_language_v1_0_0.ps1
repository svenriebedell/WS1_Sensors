$os_languages = (Get-WinUserLanguageList)[0].LocalizedName
Write-Output $os_languages