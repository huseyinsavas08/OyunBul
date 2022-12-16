//
//  DetailScreenView.swift
//  OyunBul
//
//  Created by Hüseyin Savaş on 16.12.2022.
//

import SwiftUI

struct DetailScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(.brown)
                .opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                Image("fifa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                DescriptionView()
                    .offset(y: -10)
            }
            .edgesIgnoringSafeArea(.top)
            HStack {
                Text("1099₺")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
            .padding(.horizontal)
            .background(.black.opacity(0.5))
            .cornerRadius(20)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButtonView(action: {
            presentationMode.wrappedValue.dismiss()
        }))
    }
}

struct DetailScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreenView()
    }
}

struct CustomBackButtonView: View {
    
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "chevron.backward").padding(.all, 12).background(.white).cornerRadius(8).foregroundColor(.black)
        }
    }
}
