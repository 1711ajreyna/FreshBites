//
//  DessertHeaderView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct DessertHeaderView: View {

    let dessertCount: Int

    var body: some View {
        VStack(spacing: 8) {
            Text("Dessert Menu")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Today you have \(dessertCount) dessert options")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    DessertHeaderView(dessertCount: 5)
}
