//
//  MenuCartView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct MenuCartView: View {
    
    let name: String
    let price: Double
    
    var body: some View {
        MenuItemRowView(
            name: name,
            price: price
        )
        .padding()
        .background(Color.white.opacity(0.9))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .padding(.horizontal)
    }
}

#Preview {
    MenuCartView(
        name: "Pizza",
        price: 9.99
    )
}
