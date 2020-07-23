//
//  File.swift
//  
//
//  Created by Benjamin Dumont on 23/07/2020.
//

import Foundation

struct CulDeChouette {
    
    static func chouette(tirage: [Int]) -> Int? {
        Dictionary(grouping: tirage, by: { $0 }).filter { $1.count > 1 }.keys.first
    }
    
    static func getResult(chouette: Int?) -> Int {
        guard let chouette = chouette else {
            return 0
        }
        
        return chouette * chouette
    }
}

