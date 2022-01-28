//
//  DetailScreen.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import SwiftUI

struct DetailScreen: View {
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                ScrollView {
                    Image("chair_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                    
                    VStack(alignment: .leading) {
                        Text("Luxury Swedia Chair")
                            .font(.custom("PlayfairDisplay-Bold", size: 24))
                        
                        HStack(spacing: 4) {
                            ForEach(0 ..< 5) { item in
                                Image("star")
                            }
                            
                            Text("(4.9)")
                                .opacity(0.5)
                                .padding(.leading, 8)
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color("Bg"))
                    .cornerRadius(40)
                    .offset(y: -40)                    
                }
            }
            
            HStack {
                Text("$1299")
                    .font(.title2)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Add To Cart")
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(Color("Primary"))
                }
            }
            .padding()
            .padding(.horizontal)
            .background(Color("Primary"))
            .cornerRadius(50, corners: .topLeft)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton(
            action: {
            
        }),
        trailing: Image("threeDot"))
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct BackButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .padding(.all, 12)
                .background(Color.white)
                .cornerRadius(8)
                .foregroundColor(Color("Primary"))
        }
    }
}
