import SwiftUI


extension Binding where Value == Bool {
    var inverted: Binding<Bool> {
        Binding<Bool>(
            get: { !self.wrappedValue },
            set: { self.wrappedValue = !$0 }
        )
    }
}


struct SettingsView: View {
    @Binding var playerWins: Int
    @Binding var dealerWins: Int
    @Binding var hapticsEnabled: Bool
    @Binding var reducedMotioNMode: Bool

    var body: some View {
         
            Form {
                Section(header: Text("Preferences")) {
                    Toggle(isOn: $hapticsEnabled.inverted) {
                        Text("Enable Haptics")
                    }
                    Toggle(isOn: $reducedMotioNMode) {
                        Text("Reduced Motion Mode")
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
