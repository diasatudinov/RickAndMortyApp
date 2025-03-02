//
//  RMGetCharactersResponse.swift
//  RickAndMorty
//
//  Created by Dias Atudinov on 02.03.2025.
//

import Foundation
 
struct RMGetAllCharactersResponse: Codable {
    let info: RMGetAllCharactersResponseInfo
    let results: [RMCharacter]
}

struct RMGetAllCharactersResponseInfo: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
