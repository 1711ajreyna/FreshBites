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
            
            LinearGradient(
                colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 25) {
                
                // Main restaurant icon
                Image(systemName: "fork.knife.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110, height: 110)
                    .foregroundColor(.green)
                
                // Title
                Text("About FreshBites")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Description
                Text("""
                FreshBites brings a healthy twist to American classics with fresh ingredients, family-friendly meals, and comfortable dining options.
                """)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                
                // Three restaurant-related icons
                HStack(spacing: 40) {
                    
                    VStack {
                        Image(systemName: "leaf.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.green)
                        
                        Text("Fresh")
                            .font(.caption)
                    }
                    
                    VStack {
                        Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.green)
                        
                        Text("Takeout")
                            .font(.caption)
                    }
                    
                    VStack {
                        Image(systemName: "fork.knife")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.green)
                        
                        Text("Dining")
                            .font(.caption)
                    }
                }
                .padding(.top)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    AboutView()
}
