//
//  MenuView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct MenuView: View {

    @State private var showWelcomeMessage = false
    @State private var showAffordableOnly = false
    @State private var showDesserts = false

    let menuItems = [
        "Pizza": 9.99,
        "Pasta": 10.50,
        "Salad": 8.00,
        "Soup": 4.75,
        "Steak": 14.99,
        "Apple Pie": 8.00,
        "Burger": 11.99,
        "Fries": 5.00
    ]

    var sortedMenu: [(name: String, price: Double)] {
        menuItems
            .sorted { $0.key < $1.key }
            .map { (name: $0.key, price: $0.value) }
    }

    var displayedMenu: [(name: String, price: Double)] {
        if showAffordableOnly {
            return sortedMenu.filter { $0.price < 10 }
        } else {
            return sortedMenu
        }
    }

    func getTotalItems() -> Int {
        return displayedMenu.count
    }

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(spacing: 12) {

                    FreshBitesBanner()

                    Toggle("Show Welcome Message", isOn: $showWelcomeMessage)
                        .padding(.horizontal)

                    Toggle("Show Affordable Only", isOn: $showAffordableOnly)
                        .padding(.horizontal)

                    if showWelcomeMessage {
                        Text("Today you have \(getTotalItems()) options")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }

                    if showAffordableOnly {
                        Text("Explore These Affordable Options")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }

                    Button("View Desserts") {
                        showDesserts = true
                    }
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(10)
                    .sheet(isPresented: $showDesserts) {
                        DessertView()
                    }

                    List {
                        Section(
                            header: MenuSectionHeaderView(
                                itemCount: getTotalItems()
                            )
                        ) {
                            ForEach(displayedMenu, id: \.name) { name, price in
                                MenuCartView(name: name, price: price)
                                    .listRowInsets(EdgeInsets())
                                    .listRowBackground(Color.clear)
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)

                    Text("Total Items: \(getTotalItems())")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
                .padding()
            }
        }
    }
}

#Preview {
    MenuView()
}
