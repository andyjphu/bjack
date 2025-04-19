import SwiftUI

struct SettingsView: View {
    @Binding var playerWins: Int
    @Binding var dealerWins: Int
    @Binding var hapticsEnabled: Bool

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Preferences")) {
                    Toggle(isOn: $hapticsEnabled) {
                        Text("Enable Haptics")
                    }
                }

                Section(header: Text("Game")) {
                    Button(role: .destructive) {
                        playerWins = 0
                        dealerWins = 0
                    } label: {
                        Text("Reset Wins")
                    }
                }
                Section(header: Text("Support")) {
                    NavigationLink("Report a Bug / Request Feature") {
                        FeedbackView()
                    }

                }
            }
            .navigationTitle("Settings")
        }
    }
    
    
    

}
