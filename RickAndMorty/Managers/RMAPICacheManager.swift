//
//  RMAPICacheManager.swift
//  RickAndMorty
//
//  Created by Dias Atudinov on 23.03.2025.
//

import Foundation

/// Manages in memory session scoped API caches
final class RMAPICacheManager {
    private var cacheDictionary: [RMEndpoint : NSCache<NSString, NSData>] = [:]
    init(){
        setUpCache()
    }
    
    // MARK: - Public
    
    public func cachedResponse(for endpoint: RMEndpoint, url: URL? ) -> Data? {
        guard let targetCahce = cacheDictionary[endpoint], let url = url else {
            return nil
        }
        let key = url.absoluteString as NSString
        
        return targetCahce.object(forKey: key) as? Data
    }
    
    public func setCache(for endpoint: RMEndpoint, url: URL?, data: Data ) {
        guard let targetCahce = cacheDictionary[endpoint], let url = url else {
            return
        }
        let key = url.absoluteString as NSString
        
        targetCahce.setObject(data as NSData, forKey: key)
    }
    
    // MARK: - Private
    private func setUpCache() {
        RMEndpoint.allCases.forEach({ endpoint in
            cacheDictionary[endpoint] = NSCache<NSString, NSData>()
            
        })
    }
}
