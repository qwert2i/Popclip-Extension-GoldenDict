tell application "Finder"
	POSIX path of (application file id "org.xiaoyifang" as alias)
end tell

set appPath to result

if application id "org.xiaoyifang" is running then
	tell application id "org.xiaoyifang"
		do shell script (appPath & "/Contents/MacOS/GoldenDict '{popclip text}'")
	end tell
else
	tell application id "org.xiaoyifang"
		activate
	end tell
	do shell script (appPath & "/Contents/MacOS/GoldenDict '{popclip text}'")
end if
