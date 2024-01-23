//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Md. Nahidul Islam on 22/1/2024.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to the")
                    .font(.title3)
                Text("Weather App")
                    .font(.largeTitle)
                    .bold()
                
                Text("Share your current location to get the weather in your area")
                    .padding()
                
                LocationButton(.shareCurrentLocation) {
                    locationManager.requestLocation()
                }
                .clipShape(.buttonBorder)
                .symbolVariant(.fill)
                .foregroundStyle(.white)
            }
            .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
        .preferredColorScheme(.dark)
}
