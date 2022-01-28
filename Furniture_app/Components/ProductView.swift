//
//  ProductView.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import SwiftUI

struct ProductView: View {
    @State var name: String
    
    var body: some View {
        Text($name.wrappedValue)
            .font(.custom("PlayfairDisplay-Bold", size: 24))
            .foregroundColor(Color("Primary"))
            .padding(.horizontal)
            .padding(.bottom, 8)
            .padding(.top)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(0..<4) { index in
                    NavigationLink {
                        DetailScreen()
                    } label: {
                        Card(imageName: "chair_\(index + 1)")
                    }
                    .navigationBarHidden(true)
                    .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(name: "Popular")
    }
}
