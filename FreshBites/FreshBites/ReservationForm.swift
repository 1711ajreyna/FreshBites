//
//  ReservationForm.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/9/26.
//

import SwiftUI

struct ReservationForm: View {
    @State private var numberOfChildren = 0
    @State private var occasion = ""
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing:25) {
                Text("Reservation Form").font(.largeTitle).fontWeight(.bold)
                Form {
                    Stepper("children: \(numberOfChildren)",value: $numberOfChildren, in: 0...5)
                    TextField("occasion (Birthday, Anniversary, etc.", text: $occasion
                    )
                    
                    Text("Reservation for \(numberOfChildren) children. Occasion: \(occasion)")
                        .padding(.vertical)
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
                .cornerRadius(15)
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ReservationForm()
}
