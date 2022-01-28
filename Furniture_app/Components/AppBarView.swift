//
//  AppBarView.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image("menu")
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(8)
            }
            Spacer()
            Button(action: {
                
            }, label: {
                Image("Profile")
                    .resizable()
                    .frame(width: 42, height: 42)
                    .cornerRadius(8)
            })
        }
        .padding(.horizontal)
    }
}

struct AppBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppBarView()
    }
}
