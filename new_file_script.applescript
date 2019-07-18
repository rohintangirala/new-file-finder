tell application "System Events"
	set activeApp to name of first application process whose frontmost is true
	if "Finder" is in activeApp then
		tell application "Finder"
			set currentDir to (POSIX path of (target of front Finder window as alias))
			do shell script "cd \"" & currentDir & "\" && touch \"new file\""
			activate
			reveal ((currentDir & "new file") as POSIX file)
			tell application "System Events"
				key code 36
			end tell
		end tell
	end if
end tell

