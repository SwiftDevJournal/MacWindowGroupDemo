//
//  Folder.swift
//  JujutsuApp
//
//  Created by mark on 5/30/25.
//

import Foundation

struct Folder: Hashable, Codable {
    var url: URL
    var displayName: String {
        url.path.components(separatedBy: "/").filter{ !$0.isEmpty }.last ?? ""
    }
}
