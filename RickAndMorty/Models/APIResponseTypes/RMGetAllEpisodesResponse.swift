//
//  RMGetAllEpisodesResponse.swift
//  RickAndMorty
//
//  Created by Dias Atudinov on 26.03.2025.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable {
    let info: RMGetAllEpisodesResponseInfo
    let results: [RMEpisode]
}

struct RMGetAllEpisodesResponseInfo: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
