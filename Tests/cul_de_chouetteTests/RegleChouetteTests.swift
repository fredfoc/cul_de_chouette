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
        let scenario = try feature.scenario(for: "La Chouette a pour valeur le chiffre des deux dés identiques")
        var tirage: [Int]!
        
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
            XCTAssertEqual(CulDeChouette.chouette(tirage: tirage), 2)
        }
        try And(from: scenario, "il obtient 4 points") { result in
            //Assert
            XCTAssertEqual(CulDeChouette.getResult(tirage: tirage), 4)

        }
    }
}

