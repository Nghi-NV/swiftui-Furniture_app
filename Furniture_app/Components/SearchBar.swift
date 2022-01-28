//
//  SearchBar.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image("Search")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                TextField("Search Funiture", text: $searchText)
                    .padding(.leading, 8)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .padding(.trailing, 8)
            
            Button(action: {}) {
                Image("Scan")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
            }
            .frame(width: 24, height: 24)
            .padding()
            .background(Color("Primary"))
            .cornerRadius(8)
        }
        .padding(.horizontal)
    }
}

struct SearchBar_Previews: PreviewProvider {
    var searchText: String = ""
    
    static var previews: some View {
        SearchBar()
    }
}
