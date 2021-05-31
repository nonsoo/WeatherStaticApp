//
//  WeatherBtn.swift
//  WeatherStaticApp
//
//  Created by Nonso Otoh on 2021-05-31.
//

import SwiftUI

struct WeatherBtn: View {
    var btnTitle :String
    var btnColour :Color
    var textColour :Color
    var body: some View {
        Text(btnTitle).font(.system(size:22, weight:.medium, design:.default))
            .frame(width: 200, height: 50)
            .background(btnColour)
            .foregroundColor(textColour)
            .font(.system(size:20, weight:.bold, design: .default))
            .cornerRadius(10)
    }
}
