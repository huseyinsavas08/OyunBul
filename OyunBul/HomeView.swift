//
//  HomeView.swift
//  OyunBul
//
//  Created by Hüseyin Savaş on 15.12.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HomeScreenView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ProductCardView: View {
    
    let text: Text
    let price: Text
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size / 210))
                .cornerRadius(20)
            
            text
                .font(.title3
                    .bold())
            HStack(spacing: 2) {
                ForEach(0 ..< 5) { i in
                    Image("star")
                        .resizable()
                        .frame(width: 16, height: 16)
                }
                
                Spacer()
                
                price
                    .font(.title3)
                    .bold()
            }
        }
        .frame(width: size)
        .padding()
        .background(.white)
        .cornerRadius(20)
    }
}

struct DescriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("FIFA 23")
                .font(.title)
                .bold()
            
            HStack(spacing: 4) {
                ForEach(0 ..< 5) { i in
                    Image("star")
                        .resizable()
                        .frame(width: 16, height: 16)
                }
                
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                
                Spacer()
            }
            
            Text("Açıklama")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("FIFA ya da diğer ülkelerde bilinen isimiyle FIFA futbol, Electronic Arts'ın bir kolu olan EA Sports tarafından 1993'ten bu yana yıllık çıkarılan futbol oyunudur. 1980'lere damgasını vuran Sensible Soccer, Kick Off, Matchday Soccer'ın geliştirilmiş oyunu olarak EA tarafından çıkarılan seri, daha sonra dalında bir numara olmuş ve Madden NFL'den sonra en çok satan spor oyunu olmuştur.")
                .lineSpacing(8)
                .opacity(0.6)
        }
        .padding()
        .padding(.top)
        .background(.blue.opacity(0.1))
        .cornerRadius(40)
    }
}
