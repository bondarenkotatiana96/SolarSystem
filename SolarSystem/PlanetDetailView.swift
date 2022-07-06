//
//  PlanetDetailView.swift
//  SolarSystem
//
//  Created by Tatiana Bondarenko on 7/6/22.
//

import SwiftUI

struct PlanetDetailView: View {
    
    @Binding var planet: Planet
    
    var body: some View {
        ZStack {
            Image("galaxy")
                .ignoresSafeArea()
                .frame(maxHeight: .infinity)
                .blur(radius: 2)
            VStack {
                Image(planet.imageName)
                Text("Maximum Distance from Sun: \(planet.millionKMsFromSun)")
                Text("Day Length in Earth Day: \(planet.dayLength) Days")
                Text("Planet Diameter: \(planet.diameter) km")
            }
            .navigationTitle(planet.planetName)
        }
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlanetDetailView(planet:
                    .constant(Planet(planetName: "Earth", diameter: 1, dayLength: 1.1, millionKMsFromSun: 1.1, orderNumber: 1)))
        }
        .preferredColorScheme(.dark)
    }
}
