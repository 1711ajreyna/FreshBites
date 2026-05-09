//
//  AboutView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/6/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {

        ZStack {

            // App screen (foreground layer inside phone)
            ZStack {

                LinearGradient(
                    colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(spacing: 25) {

                    Image(systemName: "fork.knife.circle.fill")
                        .resizable()
                        .frame(width: 110, height: 110)
                        .foregroundColor(.green)

                    Text("Fresh Dining")
                        .font(.title)
                        .fontWeight(.bold)

                    Text("""
                    FreshBites brings a healthy twist to American classics to your table.
                    """)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                    HStack(spacing: 35) {

                        VStack {
                            Image(systemName: "leaf.fill")
                                .font(.system(size: 35))
                                .foregroundColor(.green)

                            Text("Dining")
                                .font(.caption)
                        }

                        VStack {
                            Image(systemName: "mappin.and.ellipse")
                                .font(.system(size: 35))
                                .foregroundColor(.red)

                            Text("Location")
                                .font(.caption)
                        }
                        
                        VStack {
                            Image(systemName: "cart.fill").font(.system(size:35)).foregroundColor(.orange)
                            
                            Text("Orders").font(.caption)
                        }
                    }
                    
                    //Navigation button
                    NavigationLink(destination: ReservationForm()) {
                        Text("Make Reservation")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth:.infinity)
                            .background(Color.green)
                            .cornerRadius(15)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
            }

        }
    }
}

#Preview {
    NavigationStack{
        AboutView()
    }
}
