//
//  ReservationForm.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/9/26.
//

import SwiftUI

struct ReservationForm: View {
    @State private var name = ""
    @State private var phoneNumber = ""
    @State private var numberOfGuests = 1
    @State private var numberOfChildren = 0
    @State private var occasion = ""
    @State private var reservationConfirmed = false
    
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
                    
                    Section(header: Text("Guest Information")){
                        TextField("Name", text: $name)
                        
                        TextField("Phone Number", text: $phoneNumber)
                            .keyboardType(.phonePad)
                    }
                    Section(header: Text("Reservation Details")){
                        Stepper("Guests: \(numberOfGuests)", value: $numberOfGuests, in: 1...20)
                        
                        Stepper("Children: \(numberOfChildren)", value: $numberOfChildren, in: 0...5)
                        
                        TextField("Occasion (Birthday, Anniversary, etc.)", text: $occasion)
                    }
                    
                    Section{
                        if name.isEmpty || phoneNumber.isEmpty {
                            Text("Please enter your name and phone number.")
                                .foregroundColor(.red)
                        }
                        
                        if numberOfGuests >= 8 {
                            Text("Large group - please call ahead.")
                                .foregroundColor(.orange)
                        }
                        
                        if numberOfChildren > 0 {
                            Text("Children's menus and high chairs are available.")
                                .foregroundColor(.green)
                        }
                        
                        Text("Reservation for \(numberOfGuests) guests and \(numberOfChildren) children. Occasion: \(occasion)")
                            .padding(.vertical)
                    }
                    
                    Section {
                        
                        Button("Confirm Reservation"){
                            reservationConfirmed = true
                        }
                        .disabled(name.isEmpty)
                        
                        if reservationConfirmed {
                            Text("Reservation Confirmed!")
                                .foregroundColor(.green)
                                .fontWeight(.bold)
                        }
                    }
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
