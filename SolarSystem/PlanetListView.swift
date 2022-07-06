//
//  PlanetListView.swift
//  SolarSystem
//
//  Created by Tatiana Bondarenko on 7/6/22.
//

import SwiftUI

struct PlanetListView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Image("galaxy")
                    .ignoresSafeArea()
                    .blur(radius: 10)
                    .frame(height: 10)
                // Each cell has image on the right + name with order
                // Clicking on a cell takes the user to planetDetailView
                
                List {
                    ForEach(PlanetDataStore.planets) {
                        planet in
                        
                        NavigationLink {
                            PlanetDetailView(planet: .constant(planet))
                        } label: {
                            HStack(spacing: 20) {
                                Image(planet.imageName)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                
                                VStack(alignment: .leading) {
                                    Text(planet.planetName)
                                    Text("\(planet.orderNumber)")
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Solar System")
        }
    }
}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
            .preferredColorScheme(.dark)
    }
}
