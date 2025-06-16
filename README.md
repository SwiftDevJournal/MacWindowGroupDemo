# Mac WindowGroup Demo

This project is a simple demo for opening document-like windows using SwiftUI's `WindowGroup` scene type. 

## Running the App

1. Press Cmd-O or choose File > Open to open an Open panel.
2. Select a folder on your Mac.
3. Click the Open button.
  
A new window opens. The title of the window is the name of the selected folder.

## System Requirements

* macOS 13+
* Xcode 14+

## Interesting Code Files

The `MacWindowGroupDemoApp.swift` file contains the code to set up the window group.

The `FileMenuCommands.swift` file contains the code to open a new window and the code to build the Open menu item.
