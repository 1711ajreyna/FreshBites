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
    @State private var outdoorSeating = false
    @State private var reservationConfirmed = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 25) {
                Text("Reservation Form")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Form {
                    Section(header: Text("Guest Information")) {
                        TextField("Name", text: $name)
                        
                        TextField("Phone Number", text: $phoneNumber)
                            .keyboardType(.phonePad)
                    }
                    
                    Section(header: Text("Reservation Details")) {
                        Stepper("Guests: \(numberOfGuests)", value: $numberOfGuests, in: 1...20)
                        
                        Stepper("Children: \(numberOfChildren)", value: $numberOfChildren, in: 0...5)
                        
                        TextField("Occasion", text: $occasion)
                        
                        Toggle("Outdoor Seating", isOn: $outdoorSeating)
                    }
                    
                    Section(header: Text("Messages")) {
                        if name.isEmpty {
                            Text("Please enter your name.")
                                .foregroundColor(.red)
                        }
                        
                        if numberOfGuests >= 8 {
                            Text("Large group — please call ahead.")
                                .foregroundColor(.orange)
                        }
                        
                        if outdoorSeating {
                            Text("Outdoor seating requested.")
                                .foregroundColor(.green)
                        }
                        
                        if numberOfChildren > 0 {
                            Text("Children's menus and high chairs are available.")
                                .foregroundColor(.green)
                        }
                    }
                    
                    Section(header: Text("Summary")) {
                        VStack(spacing: 10) {
                            HStack {
                                Text("Name:")
                                Spacer()
                                Text(name.isEmpty ? "Not entered" : name)
                            }
                            
                            HStack {
                                Text("Phone:")
                                Spacer()
                                Text(phoneNumber.isEmpty ? "Not entered" : phoneNumber)
                            }
                            
                            HStack {
                                Text("Guests:")
                                Spacer()
                                Text("\(numberOfGuests)")
                            }
                            
                            HStack {
                                Text("Children:")
                                Spacer()
                                Text("\(numberOfChildren)")
                            }
                            
                            HStack {
                                Text("Occasion:")
                                Spacer()
                                Text(occasion.isEmpty ? "None" : occasion)
                            }
                            
                            HStack {
                                Text("Outdoor:")
                                Spacer()
                                Text(outdoorSeating ? "Yes" : "No")
                            }
                        }
                    }
                    
                    Section {
                        Button("Confirm Reservation") {
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
