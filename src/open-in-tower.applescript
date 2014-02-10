on alfred_script(q)

set theTarget to ""
set appPath to path to application "Tower"

tell application "Finder"
  try
    set theTarget to (folder of the front window as alias)
  on error
    return "Not a valid file or folder path."
  end try

  tell application "Finder"
    open theTarget using appPath
  end tell
end tell

end alfred_script