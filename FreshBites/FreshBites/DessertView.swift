//
//  DessertView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct DessertView: View {

    let dessertItems: [String: Double] = [
        "Chocolate Cake": 6.99,
        "Cheesecake": 7.49,
        "Apple Pie": 5.99,
        "Ice Cream Sundae": 4.99,
        "Brownies": 5.49
    ]

    var sortedDesserts: [(key: String, value: Double)] {
        dessertItems.sorted { $0.key < $1.key }
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

                VStack(spacing: 14) {

                    FreshBitesBanner()

                    DessertHeaderView(
                        dessertCount: sortedDesserts.count
                    )

                    List {
                        Section(
                            header: Text("Showing \(sortedDesserts.count) desserts")
                                .font(.headline)
                        ) {
                            ForEach(sortedDesserts, id: \.key) { dessert in
                                MenuCartView(
                                    name: dessert.key,
                                    price: dessert.value
                                )
                                .listRowInsets(EdgeInsets())
                                .listRowBackground(Color.clear)
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)
                }
                .padding()
            }
        }
    }
}

#Preview {
    DessertView()
}
