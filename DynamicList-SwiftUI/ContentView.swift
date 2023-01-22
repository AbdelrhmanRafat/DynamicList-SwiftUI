//
//  ContentView.swift
//  DynamicList-SwiftUI
//
//  Created by Macbook on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
//Both Arrays have same no. of Items.
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate", "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpubkitchen"]
    var body: some View {
        List{
            //One thing you have to take note is that to tell For Each how to identify each of the item in the collection.. the Parameter of id is for that purpose.
            ForEach(restaurantNames.indices,id : \.self) { index in
                HStack {
                    Image(self.restaurantImages[index])
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(5)
                    Text(self.restaurantNames[index])
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
