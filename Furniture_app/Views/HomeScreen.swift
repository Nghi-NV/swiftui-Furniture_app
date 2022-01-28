//
//  HomeScreen.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Bg")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        AppBarView()
                        
                        TagLineView()
                            .padding()
                        
                        SearchBar()
                        
                        CategoryView()
                        
                        ProductView(name: "Popular")
                        
                        ProductView(name: "Best")
                    }
                }
                
                HStack {
                    BottomNavButtonItem(image: Image("Home")) {}
                    BottomNavButtonItem(image: Image("User")) {}
                    BottomNavButtonItem(image: Image("User")) {}
                    BottomNavButtonItem(image: Image("menu")) {}
                }
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding(.horizontal)
                .shadow(color: .black.opacity(0.12), radius: 8, x: 2, y: 6)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct BottomNavButtonItem: View {
    let image: Image
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            image
                .frame(maxWidth: .infinity)
        })
    }
}
