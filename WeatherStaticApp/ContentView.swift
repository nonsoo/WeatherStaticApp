//
//  ContentView.swift
//  WeatherStaticApp
//
//  Created by Nonso Otoh on 2021-05-31.
//

import SwiftUI

struct ContentView: View {
    @State var isDayTime = true
    
    var body: some View {
        ZStack(){
            BackgroundView(topColour: .blue, bottomColour: Color("LightBlue"))
            
            VStack{
                HeaderWeatherView(imageName: "cloud.sun.fill", temp: 32, cityName: "Toronto, ON")
                Spacer()
                HStack(spacing:50){
                    WeatherDayView(dayMonth:"Tues", imageName:"cloud.sun.fill", temp:32)
                    WeatherDayView(dayMonth:"Wed", imageName:"cloud.rain.fill", temp:33)
                    WeatherDayView(dayMonth:"Thurs", imageName:"cloud.fill", temp:28)
                }
                
                Spacer()
                Button{
                    isDayTime.toggle()
                }label:{
                    WeatherBtn(btnTitle: "Change Day Time",
                               btnColour: .white,
                               textColour:.blue)
                }
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayMonth: String
    var imageName :String
    var temp :Int
    
    
    var body: some View {
        VStack{
            Image(systemName:imageName)
                .renderingMode(.original).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding(.bottom)
            Text("\(temp)")
                .font(.system(size:22,weight:.medium))
                .foregroundColor(.white)
            Text(dayMonth)
                .font(.system(size:22,weight:.medium))
                .foregroundColor(.white)
                .padding(.bottom)
        }
    }
}

struct BackgroundView: View {
    var topColour:Color
    var bottomColour:Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColour,bottomColour]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
    }
}

struct HeaderWeatherView: View {
    var imageName:String
    var temp :Int
    var cityName : String
    
    
    var body: some View {
        VStack(spacing:8){
            Image(systemName:imageName)
                .renderingMode(.original).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text("\(temp)° C")
                .font(.system(size:32,weight:.medium))
                .foregroundColor(.white)
            Text(cityName)
                .font(.system(size:32,weight:.medium))
                .foregroundColor(.white)
                .padding(.bottom)
        }
    }
}

