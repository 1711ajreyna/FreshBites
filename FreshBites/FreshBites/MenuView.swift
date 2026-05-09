//
//  MenuView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/9/26.
//

import SwiftUI

struct MenuView: View {
    let menuItems: [String : Double] = [
        "Chicken Salad": 12.99,
        "Turkey Sandwich": 10.99,
        "Veggie Wrap": 9.99,
        "Grilled Salmon": 16.99,
        "Pesto Pasta": 13.99,
        "Avocado Toast": 8.99
    ]
    
    var sortedMenuItems: [(key: String, value: Double)] {
        menuItems.sorted{ $0.key < $1.key }
    }
    var body: some View {
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
                    HStack{
                        Text("Total items:")
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("\(menuItems.count)")
                    }
                }
            }
        }
        .navigationTitle("Menu")
    }
}

#Preview {
    MenuView()
}
