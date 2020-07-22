import XCTest
@testable import cul_de_chouette
import Gherkin
import GherkinTestHelpers

final class ExportTests: XCTestCase {
    func testFeature() throws {
        let feature = try Feature(#file, featurePath: "/features/example.feature")
        let scenario = try feature.scenario(for: "Test Scenario")
        try Given(from: scenario, "this is a given") { result in
            //Arrange
        }
        try When(from: scenario, "this is a when") { result in
            //Act
        }
        try Then(from: scenario, "I have a then") { result in
            //Assert
        }
    }
}

