tell application "System Events"
	set activeApp to (name of first process where it is frontmost)
	tell application "Finder" to activate
	delay 0.5
	tell appearance preferences
		set dark mode to not dark mode
		if dark mode then
			tell application "System Events"
				set desktopCount to count of desktops
				repeat with desktopNumber from 1 to desktopCount
					tell desktop desktopNumber
						set picture to "~/Pictures/Current Wallpaper/dark.jpg"
					end tell
				end repeat
			end tell
		else
			tell application "System Events"
				set desktopCount to count of desktops
				repeat with desktopNumber from 1 to desktopCount
					tell desktop desktopNumber
						set picture to "~/Pictures/Current Wallpaper/light.jpg"
					end tell
				end repeat
			end tell
		end if
	end tell
	delay 1
	if activeApp is not "Finder" then
		key code 48 using {command down}
	end if
end tell
tell application "BetterTouchTool" to refresh_widget "D0688722-9F80-492E-BD1F-6315D8A78C68"