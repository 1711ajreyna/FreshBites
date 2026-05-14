//
//  CustomerRowView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct CustomerRowView: View {

    let customer: Customer

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {

            HStack {
                Text(customer.name)
                    .font(.headline)

                Spacer()

                Text("\(customer.visits) Visits")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Text(customer.email)
                .font(.subheadline)
                .foregroundColor(.secondary)

            if customer.visits > 3 {
                Text("⭐ Loyalty Member")
                    .font(.caption)
                    .padding(6)
                    .background(Color.yellow.opacity(0.2))
                    .cornerRadius(8)
            }
        }
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
    CustomerRowView(
        customer: Customer(
            name: "Andrew Reyna",
            email: "andrew@email.com",
            visits: 5
        )
    )
}
