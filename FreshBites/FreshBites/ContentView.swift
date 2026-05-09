import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.green.opacity(0.3), .yellow.opacity(0.2)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    Text("FreshBites")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    NavigationLink("About FreshBites") {
                        AboutView()
                    }
                    .buttonStyle(.borderedProminent)
                    
                    NavigationLink("Make a reservation") {
                        ReservationForm()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
