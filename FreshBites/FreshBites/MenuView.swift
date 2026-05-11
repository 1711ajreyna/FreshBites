//
//  MenuView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/9/26.
//

import SwiftUI

struct MenuView: View {
    
    @State private var showDesserts = false
    
    let menuItems: [String: Double] = [
        "Chicken Salad": 12.99,
        "Turkey Sandwich": 10.99,
        "Veggie Wrap": 9.99,
        "Grilled Salmon": 16.99,
        "Pesto Pasta": 13.99,
        "Avocado Toast": 8.99
    ]
    
    var sortedMenuItems: [(key: String, value: Double)] {
        menuItems.sorted { $0.key < $1.key }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 15) {
                
                FreshBitesBanner()
                
                Button("View Desserts") {
                    showDesserts = true
                }
                .foregroundColor(.black)
                .buttonStyle(.borderedProminent)
                
                List {
                    Section(header: Text("Showing \(sortedMenuItems.count) items")) {
                        ForEach(sortedMenuItems, id: \.key) { item in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(item.key)
                                    
                                    Text(item.value >= 10 ? "Premium" : "Regular")
                                        .font(.caption)
                                        .padding(5)
                                        .background(item.value >= 10 ? Color.orange.opacity(0.3) : Color.green.opacity(0.3))
                                        .cornerRadius(8)
                                }
                                
                                Spacer()
                                
                                Text("$\(item.value, specifier: "%.2f")")
                            }
                        }
                    }
                    
                    Section {
                        HStack {
                            Text("Total items:")
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Text("\(menuItems.count)")
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
            .padding()
        }
        .sheet(isPresented: $showDesserts) {
            DessertView()
        }
        .navigationTitle("Menu")
    }
}

#Preview {
    MenuView()
}
