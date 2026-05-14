//
//  ContentView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(spacing: 20) {

                    FreshBitesBanner()

                    NavigationLink("View Menu") {
                        MenuView()
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("View Desserts") {
                        DessertView()
                    }
                    .buttonStyle(.bordered)

                    NavigationLink("Customers") {
                        CustomerListView()
                    }
                    .buttonStyle(.bordered)

                    NavigationLink("Reservations") {
                        ReservationForm()
                    }
                    .buttonStyle(.bordered)

                    NavigationLink("About FreshBites") {
                        AboutView()
                    }
                    .buttonStyle(.bordered)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
