//
//  HomeMenuView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct HomeMenuView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                // Background
                LinearGradient(
                    colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    
                    // Header
                    VStack(spacing: 10) {
                        
                        Image(systemName: "fork.knife.circle.fill")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .foregroundColor(.green)
                        
                        Text("FreshBites")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("Choose a section")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.top)
                    
                    // Navigation Buttons
                    VStack(spacing: 18) {
                        
                        NavigationLink {
                            MenuView()
                        } label: {
                            MenuCard(
                                title: "View Menu",
                                icon: "menucard.fill"
                            )
                        }
                        
                        NavigationLink {
                            ReservationForm()
                        } label: {
                            MenuCard(
                                title: "Reservations",
                                icon: "calendar"
                            )
                        }
                        
                        NavigationLink {
                            CustomerListView()
                        } label: {
                            MenuCard(
                                title: "Customer List",
                                icon: "person.3.fill"
                            )
                        }
                    }
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct MenuCard: View {
    
    let title: String
    let icon: String
    
    var body: some View {
        
        HStack(spacing: 15) {
            
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.green)
            
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white.opacity(0.9))
                .shadow(radius: 5)
        )
    }
}

#Preview {
    HomeMenuView()
}
