//
//  DictionaryMethodsTests.swift
//  DictionaryMethodsTests
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import XCTest
@testable import DictionaryMethods

class DictionaryMethodsTests: XCTestCase {
    
    let testClass = DictionaryMethods()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testStarWarsHeroes() {
        let expectedResult = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
        XCTAssertEqual(testClass.starWarsHeroes, expectedResult)
    }
    
    func testStarWarsVillians() {
        let expectedResult = ["Darth Vader", "Emperor Palpatine"]
        XCTAssertEqual(testClass.starWarsVillains, expectedResult)
    }
    
    func testStarWarsDroids() {
        let expectedResult = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
        XCTAssertEqual(testClass.starWarsDroids, expectedResult)
    }
    
    func testAddKyloRen() {
        testClass.addKyloRen()
        XCTAssertTrue(testClass.starWarsVillains.contains("Kylo Ren"))
    }
    
    func testRemoveDroid() {
        let expectedFalse = testClass.removeDroid(droid: "Blooper")
        XCTAssertFalse(expectedFalse, "Blooper doesn't exist as a droid, it should return false.")
        
        let expectedTrue = testClass.removeDroid(droid: "R2-D2")
        XCTAssertTrue(expectedTrue, "R2-D2 should have been removed and the function should return true.")
        
        XCTAssertFalse(testClass.starWarsDroids.contains("R2-D2"), "In removing R2-D2, it should no longer exist in the Droids array.")
    }
    
    func testCreateStarWarsCharacters() {
        XCTAssertTrue(testClass.starWarsCharacters.isEmpty, "starWarsCharacters should start off being empty.")
        
        testClass.createStarWarsCharacters()
        let heroes = testClass.starWarsCharacters["Heroes"] ?? []
        let villains = testClass.starWarsCharacters["Villains"] ?? []
        let droids = testClass.starWarsCharacters["Droids"] ?? []
        XCTAssertEqual(heroes, testClass.starWarsHeroes)
        XCTAssertEqual(villains, testClass.starWarsVillains)
        XCTAssertEqual(droids, testClass.starWarsDroids)
    }
    
    func testCreateStarWarsGangsters() {
        testClass.createStarWarsGangsters()
        let gangsters = testClass.starWarsCharacters["Gangsters"] ?? []
        
        XCTAssertEqual(gangsters, testClass.starWarsGangsters)
    }
    
    func testDescription() {
        testClass.createStarWarsCharacters()
        testClass.createStarWarsGangsters()
        let description = testClass.description(characters: testClass.starWarsCharacters)
        
        XCTAssertTrue(description.contains("HEROES"))
        XCTAssertTrue(description.contains("VILLAINS"))
        XCTAssertTrue(description.contains("GANGSTERS"))
        XCTAssertTrue(description.contains("DROIDS"))
        XCTAssertTrue(description.contains("3. Han Solo"))
        XCTAssertTrue(description.contains("2. Emperor Palpatine"))
        XCTAssertTrue(description.contains("2. C-3P0"))
    }
    
    func testAddHearts() {
        testClass.addKyloRen()
        testClass.createStarWarsCharacters()
        testClass.createStarWarsGangsters()
        testClass.addHearts()
        
        for (_, names) in testClass.starWarsCharacters {
            for name in names {
                XCTAssertFalse(name.contains("o"), "\(name) should not contain the letter o.")
            }
        }
    }
    
}
