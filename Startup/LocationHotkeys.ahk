; Alt + D Opens the Documents folder
!d::
Run, "C:\Users\lhedt\Documents"
return

; Alt + O Opens my work onedrive
!o::
Run, "C:\Users\lhedt\OneDrive - DXC Production"
return

; Alt + P Opens the Sharepoint Drive
!p::
Run, "C:\Users\lhedt\DXC Production"
return

; Alt + Shift + G opens google in a new tab
!+g::
Run, "https://www.google.com"
return

; Alt + Shift + T opens eTes
!+t::
Run, "https://etes.csc.com"
return

; Alt + Shift + M opens myDXC
!+m::
Run, "https://my.dxc.com"
return

; CTRL + Alt + | Runs the syncFiles command
^!|::
Run, %AppData%\Microsoft\Windows\Start Menu\Programs\Startup\syncFiles.bat
return
