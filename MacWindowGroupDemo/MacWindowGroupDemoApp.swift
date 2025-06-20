//
//  MacWindowGroupDemoApp.swift
//  MacWindowGroupDemo
//
//  Created by mark on 6/14/25.
//

import SwiftUI

@main
struct MacWindowGroupDemoApp: App {
    var body: some Scene {
        // Set the window group to open a window for each folder opened in the app.
        WindowGroup(for: Folder.self) { $folder in
            ContentView()
                .navigationTitle(folder?.displayName ?? "Window")
        }
        .commands {
            // Add the Open menu item to the File menu.
            CommandGroup(after: .newItem) {
                OpenFolderView()
            }
        }
    }
}
