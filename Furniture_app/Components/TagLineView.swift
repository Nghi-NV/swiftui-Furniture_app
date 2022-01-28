//
//  TagLineView.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import SwiftUI

struct TagLineView: View {
    var body: some View {
        Text("Find the\nBest ")
            .font(.custom("PlayfairDisplay-Regular", size: 28))
            .foregroundColor(Color("Primary"))
        +
        Text("Funiture")
            .font(.custom("PlayfairDisplay-Bold", size: 28))
            .foregroundColor(Color("Primary"))
            
    }
}

struct TagLineView_Previews: PreviewProvider {
    static var previews: some View {
        TagLineView()
    }
}
