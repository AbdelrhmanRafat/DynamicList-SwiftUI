//
//  ContentView.swift
//  DynamicList-SwiftUI
//
//  Created by Macbook on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    //Creating Simple List View Using For Each
        List{
            //One thing you have to take note is that to tell For Each how to identify each of the item in the collection.. the Parameter of id is for that purpose.
            ForEach(1...100,id : \.self) { index in
                Text("Item  \(index)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
