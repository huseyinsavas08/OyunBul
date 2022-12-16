//
//  HomeScreenView.swift
//  OyunBul
//
//  Created by Hüseyin Savaş on 16.12.2022.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.brown)
                    .opacity(0.2)
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Popüler")
                            .font(.system(size: 24))
                            .padding(.horizontal)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                    NavigationLink(destination: DetailScreenView()) {
                                        ProductCardView(text: Text("FIFA 23"), price: Text("1099₺"), image: Image("fifa"), size: 210)
                                        
                                        ProductCardView(text: Text("GOD OF WAR"), price: Text("899₺"), image: Image("godOfWar"), size: 210)
                                        
                                        ProductCardView(text: Text("SPIDER-MAN"), price: Text("799₺"), image: Image("spiderMan"), size: 210)
                                        
                                        ProductCardView(text: Text("FAR CRY 6"), price: Text("990₺"), image: Image("farCry"), size: 210)
                                    }
                                    .navigationBarHidden(true)
                                    .foregroundColor(.black)
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                        
                        Text("En iyi")
                            .font(.system(size: 24))
                            .padding(.horizontal)
                            .padding(.top)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                    ProductCardView(text: Text("UNCHARTED"), price: Text("690₺"), image: Image("uncharted"), size: 160)
                                
                                    ProductCardView(text: Text("STAR WARS"), price: Text("899₺"), image: Image("starWars"), size: 160)
                                
                                    ProductCardView(text: Text("GRAN TURISMO "), price: Text("790₺"), image: Image("granTurismo"), size: 160)
                            
                                    ProductCardView(text: Text("AVENGERS"), price: Text("749₺"), image: Image("avengers"), size: 160)
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                    }
                }
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
