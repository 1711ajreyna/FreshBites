//
//  MenuItemRowView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct MenuItemRowView: View {
    
    let name: String
    let price: Double
    
    var body: some View {
        HStack {
            Text(name)
                .font(.headline)
            
            Spacer()
            
            Text("$\(price, specifier: "%.2f")")
                .foregroundColor(.secondary)
            
            if price > 10 {
                PremiumBadge()
            }
        }
    }
}

#Preview {
    VStack {
        MenuItemRowView(name: "Pizza", price: 9.99)
        MenuItemRowView(name: "Steak", price: 14.99)
    }
}
