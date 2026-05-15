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

        VStack(spacing: 12) {

            Image(systemName: "cupcake.fill")
                .font(.system(size: 55))
                .foregroundColor(.pink)

            Text("Dessert Menu")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Today you have \(dessertCount) dessert options")
                .font(.headline)
                .foregroundColor(.secondary)

        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(.white.opacity(0.85))
                .shadow(radius: 6)
        )
        .padding(.horizontal)
    }
}

#Preview {
    ZStack {

        LinearGradient(
            colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()

        DessertHeaderView(dessertCount: 5)
    }
}
