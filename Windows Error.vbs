' FolderChooser.vbs
Set objShell = CreateObject("Shell.Application")
Set objFSO   = CreateObject("Scripting.FileSystemObject")

' Ask user to select a location
Set objFolder = objShell.BrowseForFolder(0, "Select a location for the new folder:", 0)

If Not objFolder Is Nothing Then
    folderPath = objFolder.Self.Path

    ' Ask user for folder name
    folderName = InputBox("Enter a name for the new folder:", "Folder Naming")

    If folderName <> "" Then
        newFolderPath = folderPath & "\" & folderName

        ' Create folder if it doesn't exist
        If Not objFSO.FolderExists(newFolderPath) Then
            objFSO.CreateFolder(newFolderPath)
            MsgBox "Folder created: " & newFolderPath, vbInformation, "Success"
        Else
            MsgBox "Folder already exists!", vbExclamation, "Warning"
        End If
    Else
        MsgBox "No name entered. Operation cancelled.", vbExclamation, "Cancelled"
    End If
End If








Input=inputbox("WINHACK.bat Installation.")


X=msgbox("Now, Download HackerControl.exe and place it in System32", 0+48, "Hacker")
X=msgbox("Virus Detected", 0+48, "Microsoft Defender/Windows Security")


