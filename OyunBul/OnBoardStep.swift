//
//  OnBoardStep.swift
//  OyunBul
//
//  Created by Hüseyin Savaş on 15.12.2022.
//

import Foundation

struct OnBoardStep {
    let image: String
    let title: String
    let description: String
}

extension OnBoardStep {
    static let onBoardSteps = [
        OnBoardStep(image: "information", title: "Bilgi", description: "Oyunlar hakkında daha detaylı bilgiye ulaş"),
        OnBoardStep(image: "point", title: "Puan", description: "Oyunların topluluk tarafından değerlendirme puanını gör"),
        OnBoardStep(image: "discount", title: "Fiyat", description: "Oyunların fiyat bilgilerini gör")
    ]
}
