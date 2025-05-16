//
//  Endpoint.swift
//  IRNetworking
//
//  Created by Ömer Faruk Öztürk on 16.05.2025.
//

import Foundation

struct Endpoint<R: Decodable> {
    let path: String

    var request: URLRequest {
        var url = URLComponents(string: "https://jsonplaceholder.typicode.com")!
        url.path = path
        var req = URLRequest(url: url.url!)
        req.httpMethod = "GET"
        return req
    }
}
