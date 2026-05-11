//
//  DessertView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/11/26.
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
                
                VStack(spacing: 20) {
                    
                    FreshBitesBanner()
                    
                    Text("Dessert Menu")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    List {
                        
                        Section(
                            header: Text("Showing \(sortedDesserts.count) desserts")
                                .font(.headline)
                        ) {
                            
                            ForEach(sortedDesserts, id: \.key) { dessert in
                                
                                HStack {
                                    
                                    VStack(alignment: .leading) {
                                        
                                        Text(dessert.key)
                                        
                                        Text("Dessert")
                                            .font(.caption)
                                            .padding(5)
                                            .background(Color.pink.opacity(0.3))
                                            .cornerRadius(8)
                                    }
                                    
                                    Spacer()
                                    
                                    Text("$\(dessert.value, specifier: "%.2f")")
                                }
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
