//
//  ContentView.swift
//  WeatherApp
//
//  Created by Md. Nahidul Islam on 21/1/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Your location is \(location.latitude), \(location.longitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.663, saturation: 0.628, brightness: 0.443))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
