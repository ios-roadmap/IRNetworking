//
//  Post.swift
//  IRNetworking
//
//  Created by Ömer Faruk Öztürk on 16.05.2025.
//

import SwiftUI

struct Post: Decodable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
