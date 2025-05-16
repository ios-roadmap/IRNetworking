//
//  APIClient.swift
//  IRNetworking
//
//  Created by Ömer Faruk Öztürk on 16.05.2025.
//

import Foundation

protocol API {
    func fetch<R: Decodable>(_ ep: Endpoint<R>) async throws -> R
}

struct APIClient: API {
    func fetch<R: Decodable>(_ ep: Endpoint<R>) async throws -> R {
        let (data, _) = try await URLSession.shared.data(for: ep.request)
        do { return try JSONDecoder().decode(R.self, from: data) }
        catch { throw AppError.decoding }
    }
}
