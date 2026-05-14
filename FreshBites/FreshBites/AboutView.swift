//
//  AboutView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                FreshBitesBanner()

                Text("About FreshBites")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("FreshBites brings a healthy twist to American classics and delivers fresh meals straight to your table.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    AboutView()
}
