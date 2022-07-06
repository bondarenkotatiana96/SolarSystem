//
//  Planet.swift
//  SolarSystem
//
//  Created by Tatiana Bondarenko on 7/6/22.
//

import Foundation

class Planet: Identifiable {
    let planetName: String
    let imageName: String
    let diameter: Int
    let dayLength: Float
    let millionKMsFromSun: Float
    let orderNumber: Int
    
    init(planetName: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float, orderNumber: Int) {
        self.planetName = planetName
        self.imageName = planetName.lowercased()
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
        self.orderNumber = orderNumber
    }
}
