//
//  File.swift
//  
//
//  Created by Benjamin Dumont on 23/07/2020.
//

import XCTest
@testable import cul_de_chouette
import Gherkin
import GherkinTestHelpers

final class RegleChouetteTests: XCTestCase {
//    func testFeature() throws {
//        let feature = try Feature(#file, featurePath: "/features/example.feature")
//        let scenario = try feature.scenario(for: "Test Scenario")
//        try Given(from: scenario, "this is a given") { result in
//            //Arrange
//        }
//        try When(from: scenario, "this is a when") { result in
//            //Act
//        }
//        try Then(from: scenario, "I have a then") { result in
//            //Assert
//        }
//    }
    
    func testChouette() throws {
        let feature = try Feature(#file, featurePath: "/features/RegleChouette.feature")
        let scenario = try feature.scenario(for: "La Chouette a pour valeur le chiffre des deux dés identiques 2 - 2 - 3")
        var tirage: [Int]!
        var chouette: Int?
        
        try Given(from: scenario, "Un joueur lance les dés") { result in
            tirage = []
            //Arrange
        }
        try When(from: scenario, "son tirage est 2, 2, 3") { result in
            tirage = [2, 2, 3]
            //Act
        }
        try Then(from: scenario, "il obtient une chouette de 2") { result in
            //Assert
            chouette = CulDeChouette.chouette(tirage: tirage)
            XCTAssertEqual(chouette, 2)
        }
        try And(from: scenario, "il obtient 4 points") { result in
            //Assert
            XCTAssertEqual(CulDeChouette.getResult(chouette: chouette), 4)

        }
    }
    
    func testChouetteDe5() throws {
        let feature = try Feature(#file, featurePath: "/features/RegleChouette.feature")
        let scenario = try feature.scenario(for: "La Chouette a pour valeur le chiffre des deux dés identiques 5 - 5 - 1")
        var tirage: [Int]!
        var chouette: Int?
        
        try Given(from: scenario, "Un joueur lance les dés") { result in
            tirage = []
            //Arrange
        }
        try When(from: scenario, "son tirage est 5, 5, 1") { result in
            tirage = [5, 5, 1]
            //Act
        }
        try Then(from: scenario, "il obtient une chouette de 5") { result in
            //Assert
            chouette = CulDeChouette.chouette(tirage: tirage)
            XCTAssertEqual(chouette, 5)
        }
        try And(from: scenario, "il obtient 25 points") { result in
            //Assert
            XCTAssertEqual(CulDeChouette.getResult(chouette: chouette), 25)

        }
    }
    
    func testChouetteDe5NonOrdonne() throws {
        let feature = try Feature(#file, featurePath: "/features/RegleChouette.feature")
        let scenario = try feature.scenario(for: "La Chouette a pour valeur le chiffre des deux dés identiques 1 - 5 - 5")
        var tirage: [Int]!
        var chouette: Int?
        
        try Given(from: scenario, "Un joueur lance les dés") { result in
            tirage = []
            //Arrange
        }
        try When(from: scenario, "son tirage est 1, 5, 5") { result in
            tirage = [1, 5, 5]
            //Act
        }
        try Then(from: scenario, "il obtient une chouette de 5") { result in
            //Assert
            chouette = CulDeChouette.chouette(tirage: tirage)
            XCTAssertEqual(chouette, 5)
        }
        try And(from: scenario, "il obtient 25 points") { result in
            //Assert
            XCTAssertEqual(CulDeChouette.getResult(chouette: chouette), 25)

        }
    }
}

