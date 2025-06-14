//
//  FileMenuCommands.swift
//  MacWindowGroupDemo
//
//  Created by mark on 6/14/25.
//

import SwiftUI

// This is the code for the Open Folder menu item, which appears in the File menu in the app. When someone chooses the menu item, an Open panel appears. When someone selects a folder from the Open panel and clicks the Open button, a new window opens for the selected folder.
struct OpenFolderView: View {
    @State private var shouldOpenFolder = false
    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        Group {
            Button(action: {
                shouldOpenFolder = true
            }, label: {
                Text("Open Folder")
            }).keyboardShortcut("O", modifiers: [.command])
        }
        .fileImporter(isPresented: $shouldOpenFolder, allowedContentTypes: [.folder], onCompletion: { result in
            switch result {
            case .success(let url):
                let folder = Folder(url: url)
                openWindow(id: "folder", value: folder)
            case .failure(let error):
                print(error)
            }
        })
    }
}
