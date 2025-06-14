//
//  FileMenuCommands.swift
//  MacWindowGroupDemo
//
//  Created by mark on 6/14/25.
//

import SwiftUI

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
                openWindow(id: "repo", value: folder)
            case .failure(let error):
                print(error)
            }
        })
    }
}
