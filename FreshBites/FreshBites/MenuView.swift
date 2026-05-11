//
//  MenuView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/9/26.
//

import SwiftUI

struct MenuView: View {
    
    @State private var showDesserts = false
    
    let menuItems: [String : Double] = [
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
        
        VStack(spacing: 15) {
            
            Button("View Desserts") {
                showDesserts = true
            }
            .foregroundColor(.black)
            .buttonStyle(.borderedProminent)
            
            List {
                
                Section {
                    ForEach(sortedMenuItems, id: \.key) { item in
                        HStack {
                            Text(item.key)
                            
                            Spacer()
                            
                            Text("$\(item.value, specifier: "%.2f")")
                        }
                    }
                }
                
                Section {
                    VStack {
                        HStack {
                            Text("Total items:")
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Text("\(menuItems.count)")
                        }
                    }
                }
            }
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
