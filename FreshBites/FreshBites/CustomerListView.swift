//
//  CustomerListView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct CustomerListView: View {

    let customers = [
        Customer(name: "Andrew Reyna", email: "andrew@email.com", visits: 5),
        Customer(name: "Samantha Lee", email: "sam@email.com", visits: 2),
        Customer(name: "Carlos Diaz", email: "carlos@email.com", visits: 7),
        Customer(name: "Emily Carter", email: "emily@email.com", visits: 1)
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(spacing: 15) {

                    FreshBitesBanner()

                    Text("Customer List")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Today you have \(customers.count) customers")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    List {
                        Section(
                            header: Text("Customer Directory")
                                .font(.headline)
                        ) {
                            ForEach(customers) { customer in
                                CustomerRowView(customer: customer)
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
    CustomerListView()
}
