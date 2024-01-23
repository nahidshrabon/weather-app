//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Md. Nahidul Islam on 24/1/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .tint(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
        .preferredColorScheme(.dark)
}
