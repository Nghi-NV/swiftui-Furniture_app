//
//  Card.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import SwiftUI

struct Card: View {
    @State var imageName: String
    
    var body: some View {
        VStack {
            Image($imageName.wrappedValue)
                .resizable()
                .frame(width: 210, height: 200)
                .cornerRadius(20)
            Text("Luxury Swedian chair")
                .font(.title3)
                .fontWeight(.bold)
            HStack(spacing: 2) {
                ForEach(0 ..< 5) { item in
                    Image("star")
                }
                Spacer()
                Text("$1299")
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
        .frame(width: 210)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(imageName: "chair_1")
    }
}
