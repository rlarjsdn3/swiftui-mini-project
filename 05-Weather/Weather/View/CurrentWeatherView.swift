//
//  CurrentWeatherView.swift
//  Weather
//
//  Created by 김건우 on 2023/02/13.
//

import SwiftUI

struct CurrentWeatherView: View {
    let model: CurrentWeather?
    
    var body: some View {
        VStack(alignment: .leading) {
            if let model = model {
                HStack {
                    Image(systemName: model.icon)
                        .symbolRenderingMode(.multicolor)
                    Text(model.weather)
                }
                .font(.largeTitle)
                
                HStack(spacing: 20) {
                    Label(model.maxTemperature, systemImage: "arrow.up")
                    Label(model.minTemperature, systemImage: "arrow.down")
                }
                
                HStack(alignment: .lastTextBaseline) {
                    Text(model.temperature)
                        .font(.system(size: 120, weight: .ultraLight))
                        .minimumScaleFactor(0.5)
                    
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "sunrise.fill")
                            .symbolRenderingMode(.multicolor)
                        Text(model.sunrise)
                        
                        Image(systemName: "sunset.fill")
                            .symbolRenderingMode(.multicolor)
                        Text(model.sunset)
                    }
                    .font(.subheadline)
                    .frame(width: 200)
                }
            }
            
        }
        .foregroundColor(.white)
        .padding(.horizontal)
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(model: CurrentWeather.preivew)
    }
}
