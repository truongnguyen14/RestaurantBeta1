//
//  Restaurantlist.swift
//  Restaurant
//
//  Created by Truong, Nguyen Tan on 29/07/2023.
//

import SwiftUI

struct Restaurantlist: View {
    var body: some View {
        NavigationView {
            List(restaurants){
                restaurant in
                NavigationLink{
                    Restaurantinfo(restaurant: restaurant)
                } label: {
                    Restaurantrow(restaurant: restaurant)
                }
                .navigationTitle("Restaurant in Ho Chi Minh city")
            }
        }
    }
}

struct Restaurantlist_Previews: PreviewProvider {
    static var previews: some View {
        Restaurantlist()
    }
}
