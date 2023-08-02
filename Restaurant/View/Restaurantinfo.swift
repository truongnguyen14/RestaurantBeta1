//
//  Restaurantinfo.swift
//  Restaurant
//
//  Created by Truong, Nguyen Tan on 29/07/2023.
//

import SwiftUI
import CoreLocation

struct Restaurantinfo: View {
    var restaurant: Restaurant
    var body: some View {
        ScrollView {
            
            VStack {
                Mapview(coordinate: restaurant.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                CircleImage(image: restaurant.image)
                    .offset(y: -100)
                    .padding(.bottom, -100)
                Text(restaurant.name)
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
    
}

struct Restaurantinfo_Previews: PreviewProvider {
    static var previews: some View {
        Restaurantinfo(restaurant: restaurants[0])
    }
}
