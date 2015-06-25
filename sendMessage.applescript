on run {targetBuddyPhone, targetMessage}
	tell application "Messages"
		set targetService to 1st service whose service type = iMessage
		set targetBuddy to buddy targetBuddyPhone of targetService
		set theAnswer to 0
		repeat 100 times
			set theAnswer to (theAnswer + 1)
			--set targetMessage to targetMessage & theAnswer
			send targetMessage to targetBuddy
		end repeat
	end tell
end run
