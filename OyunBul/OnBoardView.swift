//
//  OnBoardView.swift
//  OyunBul
//
//  Created by Hüseyin Savaş on 15.12.2022.
//

import SwiftUI

struct OnBoardView: View {
    
    @State var currentStep = 0
    @AppStorage("step") var step = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    currentStep = OnBoardStep.onBoardSteps.count - 1
                } label: {
                    Text("Geç")
                        .padding(16)
                        .foregroundColor(.gray)
                }
            }
            
            TabView(selection: $currentStep) {
                ForEach(0..<OnBoardStep.onBoardSteps.count) { i in
                    VStack {
                        Image(OnBoardStep.onBoardSteps[i].image)
                        
                        Text(OnBoardStep.onBoardSteps[i].title)
                            .font(.title)
                            .bold()
                        
                        Text(OnBoardStep.onBoardSteps[i].description)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 32)
                            .padding(.top, 16)
                    }
                    .tag(i)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack {
                ForEach(0..<OnBoardStep.onBoardSteps.count) { i in
                    if i == currentStep {
                        Rectangle()
                            .frame(width: 20, height: 10)
                            .cornerRadius(10)
                            .foregroundColor(.brown)
                    } else {
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.bottom, 24)
            
            Button {
                if currentStep < OnBoardStep.onBoardSteps.count - 1 {
                    currentStep += 1
                } else {
                    step = true
                }
            } label: {
                Text(currentStep < OnBoardStep.onBoardSteps.count - 1 ? "Sonraki": "Hadi Başlayalım")
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(.brown)
                    .cornerRadius(16)
                    .padding(.horizontal, 16)
                    .foregroundColor(.white)
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
