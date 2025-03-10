//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Dias Atudinov on 06.03.2025.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    enum SectionTypes: CaseIterable {
        case photo
        case information
        case episodes
    }
    
    public let sections = SectionTypes.allCases
    
    // MARK: - Init
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    private var requestUrl: URL? {
        return URL(string: character.url)
    }
    
    public var title: String {
        character.name.uppercased()
    }
    
}
