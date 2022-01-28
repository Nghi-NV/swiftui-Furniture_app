//
//  CategoryView.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import SwiftUI

struct CategoryView: View {
    @State private var selectedCategory: Category = .all
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(Category.allCases, id: \.self) { category in
                    VStack(spacing: 0) {
                        Button(action: {
                            selectedCategory = category
                        }) {
                            Text(category.rawValue)
                                .foregroundColor(selectedCategory == category ? Color("Primary") : Color.black.opacity(0.5))
                                .font(.system(size: 18))
                                .fontWeight(.medium)
                        }
                        
                        Color(selectedCategory == category ? "Primary" : "")
                            .frame(width: 15, height: 2)
                            .clipShape(Capsule())
                    }
                    .padding(.trailing, 8)
                }
            }
            .padding()
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
