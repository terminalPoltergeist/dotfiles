#!/use/bin/osascript

do shell script "open -a 'Mission Control'"
delay 0.5
tell application "System Events" to ¬
    click (every button whose value of ¬
        attribute "AXDescription" is "add desktop") of ¬
        group 2 of group 1 of group 1 of process "Dock"
delay 0.5
tell application "System Events" to key code 53
tell application "System Events"
  tell list 1 of group 2 of group 1 of group 1 of process "Dock"
    set countSpaces to count of buttons
    set codes to {18, 19, 20, 21, 23, 22, 26, 28, 25, 29}
    if countSpaces is greater than 1 then
      tell application "System Events" to keystroke countSpaces using control down
    end if
  end tell
end tell
