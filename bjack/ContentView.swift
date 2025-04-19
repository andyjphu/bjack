import SwiftUI



struct Card: Identifiable {
    let id = UUID()
    let suit: String
    let rank: String
    let symbol: String
    let value: Int // For Blackjack logic (Ace = 11)
}

var unicodeDeckDict: [String: Card] = [
    "AS": Card(suit: "Spades", rank: "A", symbol: "🂡", value: 11),
    "2S": Card(suit: "Spades", rank: "2", symbol: "🂢", value: 2),
    "3S": Card(suit: "Spades", rank: "3", symbol: "🂣", value: 3),
    "4S": Card(suit: "Spades", rank: "4", symbol: "🂤", value: 4),
    "5S": Card(suit: "Spades", rank: "5", symbol: "🂥", value: 5),
    "6S": Card(suit: "Spades", rank: "6", symbol: "🂦", value: 6),
    "7S": Card(suit: "Spades", rank: "7", symbol: "🂧", value: 7),
    "8S": Card(suit: "Spades", rank: "8", symbol: "🂨", value: 8),
    "9S": Card(suit: "Spades", rank: "9", symbol: "🂩", value: 9),
    "10S": Card(suit: "Spades", rank: "10", symbol: "🂪", value: 10),
    "JS": Card(suit: "Spades", rank: "J", symbol: "🂫", value: 10),
    "QS": Card(suit: "Spades", rank: "Q", symbol: "🂭", value: 10),
    "KS": Card(suit: "Spades", rank: "K", symbol: "🂮", value: 10),
    
    "AH": Card(suit: "Hearts", rank: "A", symbol: "🂱", value: 11),
    "2H": Card(suit: "Hearts", rank: "2", symbol: "🂲", value: 2),
    "3H": Card(suit: "Hearts", rank: "3", symbol: "🂳", value: 3),
    "4H": Card(suit: "Hearts", rank: "4", symbol: "🂴", value: 4),
    "5H": Card(suit: "Hearts", rank: "5", symbol: "🂵", value: 5),
    "6H": Card(suit: "Hearts", rank: "6", symbol: "🂶", value: 6),
    "7H": Card(suit: "Hearts", rank: "7", symbol: "🂷", value: 7),
    "8H": Card(suit: "Hearts", rank: "8", symbol: "🂸", value: 8),
    "9H": Card(suit: "Hearts", rank: "9", symbol: "🂹", value: 9),
    "10H": Card(suit: "Hearts", rank: "10", symbol: "🂺", value: 10),
    "JH": Card(suit: "Hearts", rank: "J", symbol: "🂻", value: 10),
    "QH": Card(suit: "Hearts", rank: "Q", symbol: "🂽", value: 10),
    "KH": Card(suit: "Hearts", rank: "K", symbol: "🂾", value: 10),
    
    "AD": Card(suit: "Diamonds", rank: "A", symbol: "🃁", value: 11),
    "2D": Card(suit: "Diamonds", rank: "2", symbol: "🃂", value: 2),
    "3D": Card(suit: "Diamonds", rank: "3", symbol: "🃃", value: 3),
    "4D": Card(suit: "Diamonds", rank: "4", symbol: "🃄", value: 4),
    "5D": Card(suit: "Diamonds", rank: "5", symbol: "🃅", value: 5),
    "6D": Card(suit: "Diamonds", rank: "6", symbol: "🃆", value: 6),
    "7D": Card(suit: "Diamonds", rank: "7", symbol: "🃇", value: 7),
    "8D": Card(suit: "Diamonds", rank: "8", symbol: "🃈", value: 8),
    "9D": Card(suit: "Diamonds", rank: "9", symbol: "🃉", value: 9),
    "10D": Card(suit: "Diamonds", rank: "10", symbol: "🃊", value: 10),
    "JD": Card(suit: "Diamonds", rank: "J", symbol: "🃋", value: 10),
    "QD": Card(suit: "Diamonds", rank: "Q", symbol: "🃍", value: 10),
    "KD": Card(suit: "Diamonds", rank: "K", symbol: "🃎", value: 10),
    
    "AC": Card(suit: "Clubs", rank: "A", symbol: "🃑", value: 11),
    "2C": Card(suit: "Clubs", rank: "2", symbol: "🃒", value: 2),
    "3C": Card(suit: "Clubs", rank: "3", symbol: "🃓", value: 3),
    "4C": Card(suit: "Clubs", rank: "4", symbol: "🃔", value: 4),
    "5C": Card(suit: "Clubs", rank: "5", symbol: "🃕", value: 5),
    "6C": Card(suit: "Clubs", rank: "6", symbol: "🃖", value: 6),
    "7C": Card(suit: "Clubs", rank: "7", symbol: "🃗", value: 7),
    "8C": Card(suit: "Clubs", rank: "8", symbol: "🃘", value: 8),
    "9C": Card(suit: "Clubs", rank: "9", symbol: "🃙", value: 9),
    "10C": Card(suit: "Clubs", rank: "10", symbol: "🃚", value: 10),
    "JC": Card(suit: "Clubs", rank: "J", symbol: "🃛", value: 10),
    "QC": Card(suit: "Clubs", rank: "Q", symbol: "🃝", value: 10),
    "KC": Card(suit: "Clubs", rank: "K", symbol: "🃞", value: 10),
]




let unicodeDeck: [Card] = [
    // Spades
    Card(suit: "Spades", rank: "A", symbol: "🂡", value: 11),
    Card(suit: "Spades", rank: "2", symbol: "🂢", value: 2),
    Card(suit: "Spades", rank: "3", symbol: "🂣", value: 3),
    Card(suit: "Spades", rank: "4", symbol: "🂤", value: 4),
    Card(suit: "Spades", rank: "5", symbol: "🂥", value: 5),
    Card(suit: "Spades", rank: "6", symbol: "🂦", value: 6),
    Card(suit: "Spades", rank: "7", symbol: "🂧", value: 7),
    Card(suit: "Spades", rank: "8", symbol: "🂨", value: 8),
    Card(suit: "Spades", rank: "9", symbol: "🂩", value: 9),
    Card(suit: "Spades", rank: "10", symbol: "🂪", value: 10),
    Card(suit: "Spades", rank: "J", symbol: "🂫", value: 10),
    Card(suit: "Spades", rank: "Q", symbol: "🂭", value: 10),
    Card(suit: "Spades", rank: "K", symbol: "🂮", value: 10),
    
    // Hearts
    Card(suit: "Hearts", rank: "A", symbol: "🂱", value: 11),
    Card(suit: "Hearts", rank: "2", symbol: "🂲", value: 2),
    Card(suit: "Hearts", rank: "3", symbol: "🂳", value: 3),
    Card(suit: "Hearts", rank: "4", symbol: "🂴", value: 4),
    Card(suit: "Hearts", rank: "5", symbol: "🂵", value: 5),
    Card(suit: "Hearts", rank: "6", symbol: "🂶", value: 6),
    Card(suit: "Hearts", rank: "7", symbol: "🂷", value: 7),
    Card(suit: "Hearts", rank: "8", symbol: "🂸", value: 8),
    Card(suit: "Hearts", rank: "9", symbol: "🂹", value: 9),
    Card(suit: "Hearts", rank: "10", symbol: "🂺", value: 10),
    Card(suit: "Hearts", rank: "J", symbol: "🂻", value: 10),
    Card(suit: "Hearts", rank: "Q", symbol: "🂽", value: 10),
    Card(suit: "Hearts", rank: "K", symbol: "🂾", value: 10),
    
    // Diamonds
    Card(suit: "Diamonds", rank: "A", symbol: "🃁", value: 11),
    Card(suit: "Diamonds", rank: "2", symbol: "🃂", value: 2),
    Card(suit: "Diamonds", rank: "3", symbol: "🃃", value: 3),
    Card(suit: "Diamonds", rank: "4", symbol: "🃄", value: 4),
    Card(suit: "Diamonds", rank: "5", symbol: "🃅", value: 5),
    Card(suit: "Diamonds", rank: "6", symbol: "🃆", value: 6),
    Card(suit: "Diamonds", rank: "7", symbol: "🃇", value: 7),
    Card(suit: "Diamonds", rank: "8", symbol: "🃈", value: 8),
    Card(suit: "Diamonds", rank: "9", symbol: "🃉", value: 9),
    Card(suit: "Diamonds", rank: "10", symbol: "🃊", value: 10),
    Card(suit: "Diamonds", rank: "J", symbol: "🃋", value: 10),
    Card(suit: "Diamonds", rank: "Q", symbol: "🃍", value: 10),
    Card(suit: "Diamonds", rank: "K", symbol: "🃎", value: 10),
    
    // Clubs
    Card(suit: "Clubs", rank: "A", symbol: "🃑", value: 11),
    Card(suit: "Clubs", rank: "2", symbol: "🃒", value: 2),
    Card(suit: "Clubs", rank: "3", symbol: "🃓", value: 3),
    Card(suit: "Clubs", rank: "4", symbol: "🃔", value: 4),
    Card(suit: "Clubs", rank: "5", symbol: "🃕", value: 5),
    Card(suit: "Clubs", rank: "6", symbol: "🃖", value: 6),
    Card(suit: "Clubs", rank: "7", symbol: "🃗", value: 7),
    Card(suit: "Clubs", rank: "8", symbol: "🃘", value: 8),
    Card(suit: "Clubs", rank: "9", symbol: "🃙", value: 9),
    Card(suit: "Clubs", rank: "10", symbol: "🃚", value: 10),
    Card(suit: "Clubs", rank: "J", symbol: "🃛", value: 10),
    Card(suit: "Clubs", rank: "Q", symbol: "🃝", value: 10),
    Card(suit: "Clubs", rank: "K", symbol: "🃞", value: 10),
]





struct DraggableCard: View {
    let cardKey: String // <-- parameter
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        let card = unicodeDeckDict[cardKey]
        let isRed = card?.suit == "Hearts" || card?.suit == "Diamonds"
        
        
        RoundedRectangle(cornerRadius: 10)
            .aspectRatio(2.3/3, contentMode: .fit)
            .frame(width: 100)
            .foregroundColor(.white)
            .shadow(radius: 5)
            .overlay(
                Text(card?.symbol ?? " ") // fallback if not found
                    .font(.system(size: 140, weight: .bold, design: .monospaced))
                    .baselineOffset(23)
                    .foregroundColor(isRed ? .red : .black)
            )
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation(.spring()) { dragAmount = .zero }
                    }
            )
            .zIndex(2)
    }
}



struct ContentView: View {
    
    @State var playerHand: [String] = []       // Example: ["AS", "7H"]
    @State var dealerHand: [String] = []       // Example: ["9D", "5S"]
    @State var deck: [String] = unicodeDeckDict.keys.shuffled()            // Example: ["2C", "3D", ..., "KH"] (shuffled)
    
    @State var dealerReveal: Bool = false   // Example: ["9D", "5S"]
    
    
    @State var dealerScore: Int = 0   // Example: ["9D", "5S"]
    @State var dealerAces: Int = 0
    @State var dealerWins: Int = 0
    @State var dealerHasAces: Bool = false
    
    
    @State var playerScore: Int = 0   // Example: ["9D", "5S"]
    @State var playerAces: Int = 0
    @State var playerWins: Int = 0
    @State var playerHasAces: Bool = false
    
    @State var playerBust: Bool = false
    
    @State var dealerBust: Bool = false
    @State var playerWin : Bool = false
    @State var dealerWin : Bool = false
    @State var push : Bool = false
    
    
    
    
    @State private var isGameInitialized = false
    
    
    
    let  cardCount = 7 // <-- change this dynamically later
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                
                NavigationLink(destination: SettingsView()) {
                    Image(systemName: "gearshape")
                        .font(.title)
                        .foregroundColor(.black)
                }.position(x:25, y:25) //25 385
                
                
                
                
                // Dealer hand
                ZStack {
                    ForEach(dealerHand, id: \.self) { cardKey in
                        let index = dealerHand.firstIndex(of: cardKey)!
                        let centerIndex = Double(dealerHand.count - 1) / 2.0
                        let normalized = Double(index) - centerIndex
                        
                        let maxRotation: Double = 30 * Double(dealerHand.count) / 7
                        let rotationStep = maxRotation / Double(dealerHand.count - 1)
                        let rotation = normalized * rotationStep
                        
                        let spacing: CGFloat = 240 / CGFloat(dealerHand.count)
                        let xOffset = CGFloat(normalized) * spacing
                        let yOffset = abs(normalized) * 5
                        
                        let cardChar = (index == 1 && !dealerReveal) ? "HIDDEN" : cardKey
                        
                        if dealerHand.count == 1 && index == 0 {
                            DraggableCard(cardKey: cardChar)
                                .rotationEffect(Angle(degrees: -rotation))
                                .offset(x: xOffset, y: yOffset)
                        } else {
                            DraggableCard(cardKey: cardChar)
                                .rotationEffect(Angle(degrees: -rotation))
                                .offset(x: xOffset, y: yOffset)
                                .transition(.move(edge: .top))
                        }
                    }
                }
                .position(x: 200, y: 100)
                .animation(.easeInOut(duration: 0.15), value: dealerHand)
                
                
                
                
                VStack {
                    
                    
                    
                    
                    
                    
                    //Usr deck
                    ZStack {
                        
                        ForEach(playerHand, id: \.self) { cardKey in
                            let index = playerHand.firstIndex(of: cardKey)!
                            let centerIndex = Double(playerHand.count - 1) / 2.0
                            let normalized = Double(index) - centerIndex
                            
                            let maxRotation: Double = 30 * Double(playerHand.count) / 7
                            let rotationStep = maxRotation / Double(playerHand.count - 1)
                            let rotation = normalized * rotationStep
                            
                            let spacing: CGFloat = 240 / CGFloat(playerHand.count)
                            let xOffset = CGFloat(normalized) * spacing
                            let yOffset = abs(normalized) * 5
                            
                            if playerHand.count == 1 && index == 0 {
                                DraggableCard(cardKey: cardKey)
                                    .rotationEffect(Angle(degrees: rotation))
                                    .offset(x: xOffset, y: yOffset)
                            } else {
                                DraggableCard(cardKey: cardKey)
                                    .rotationEffect(Angle(degrees: rotation))
                                    .offset(x: xOffset, y: yOffset)
                                    .transition(.move(edge: .bottom))
                            }
                            
                        }
                        
                    }
                    .position(x: 200, y: 600)
                    .animation(.easeInOut(duration: 0.15), value: playerHand)
                    
                    
                    
                    Spacer()
                    
                    //hit and stand buttons
                    if !dealerReveal && !playerBust {
                        HStack(spacing: 30) {
                            Button(action: {
                                dealToPlayer() // HIT
                                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                                
                                print("hit")
                            }) {
                                Text("Hit")
                                    .font(.headline)
                                    .frame(width: 100, height: 40)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .shadow(radius: 5)
                            }
                            
                            Button(action: {
                                dealerReveal = true;
                                dealersTurn();
                                
                                print("Stand")
                            }) {
                                Text("Stand")
                                    .font(.headline)
                                    .frame(width: 100, height: 40)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .shadow(radius: 5)
                            }
                        }
                        .padding(.bottom, 20)
                    }
                    
                    
                    
                    
                }
                
                
                //wins tracker
                VStack {
                    Spacer()
                    HStack {
                        Text("losses: \(dealerWins)")
                            .font(.system(size: 16, weight: .bold, design: .monospaced))
                            .foregroundColor(.red)
                            .padding(.leading)
                        
                        Spacer()
                        
                        Text("wins: \(playerWins)")
                            .font(.system(size: 16, weight: .bold, design: .monospaced))
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                    .position(x: UIScreen.main.bounds.width / 2,
                              y: (UIScreen.main.bounds.height / 2) - 95)
                }
                .zIndex(-9) // This ensures it is behind everything
                
                
                //divider
                Rectangle()
                    .fill(Color.black)
                    .frame(width: nil, height: 10)
                    .frame(maxWidth: .infinity)
                    .position(x: UIScreen.main.bounds.width / 2,
                              y: (UIScreen.main.bounds.height / 2) - 70)
                    .zIndex(-10) // This ensures it is behind everything
                
                
                
                //Player score
                ZStack {
                    Circle()
                        .fill(Color.white) // <- Use .fill or .foregroundColor
                        .frame(width: 150, height: 150) // Optional: define circle size
                        .overlay(
                            Text(String(playerScore))
                                .font(.system(size: 75, weight: .bold, design: .monospaced))
                                .foregroundColor(.black)
                        )
                        .position(x: 200, y: 350)
                }
                .zIndex(-9) // This ensures it is behind everything
                
                
                
                // Player Bust
                if playerBust {
                    ZStack {
                        Color.red
                            .edgesIgnoringSafeArea(.all)
                            .opacity(0.95)
                        
                        VStack {
                            Text("You Bust... 😵‍💫")
                                .font(.system(size: 75, weight: .bold, design: .monospaced))
                                .foregroundColor(.white)
                                .padding(.top, 100)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                withAnimation {
                                    playerBust = false
                                }
                                resetGameState()
                            }) {
                                Text("Next Game")
                                    .font(.headline)
                                    .frame(width: 150, height: 40)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .shadow(radius: 5)
                            }
                            .padding(.bottom, 100)
                        }
                    }
                    .contentShape(Rectangle()) // Ensures entire ZStack area is tappable
                    .onTapGesture {
                        
                        withAnimation {
                            playerBust = false
                        }
                        resetGameState()
                    }
                    .transition(.move(edge: .top))
                    .zIndex(1)
                }
                
                
                //dealer bussts
                if dealerBust {
                    ZStack {
                        Color.green
                            .edgesIgnoringSafeArea(.all)
                            .opacity(0.95)
                        
                        VStack {
                            Text("Dealer Busts!! 😈")
                                .font(.system(size: 75, weight: .bold, design: .monospaced))
                                .foregroundColor(.white)
                                .padding(.top, 100)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                withAnimation {
                                    dealerBust = false
                                }
                                resetGameState()
                            }) {
                                Text("Next Game")
                                    .font(.headline)
                                    .frame(width: 150, height: 40)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .shadow(radius: 5)
                            }
                            .padding(.bottom, 100)
                        }
                    }
                    .contentShape(Rectangle()) // Ensures entire ZStack area is tappable
                    .onTapGesture {
                        
                        withAnimation {
                            dealerBust = false
                        }
                        resetGameState()
                    }
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
                }
                
                
                //dealer wins
                if dealerWin {
                    ZStack {
                        Color.red
                            .edgesIgnoringSafeArea(.all)
                            .opacity(0.95)
                        
                        VStack {
                            Text("Dealer Wins 👹")
                                .font(.system(size: 75, weight: .bold, design: .monospaced))
                                .foregroundColor(.white)
                                .padding(.top, 100)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                withAnimation {
                                    dealerWin = false
                                }
                                resetGameState()
                            }) {
                                Text("Next Game")
                                    .font(.headline)
                                    .frame(width: 150, height: 40)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .shadow(radius: 5)
                            }
                            .padding(.bottom, 100)
                        }
                    }
                    .contentShape(Rectangle()) // Ensures entire ZStack area is tappable
                    .onTapGesture {
                        
                        withAnimation {
                            dealerWin = false
                        }
                        resetGameState()
                    }
                    .transition(.move(edge: .top))
                    .zIndex(1)
                }
                
                
                //player win
                if playerWin {
                    ZStack {
                        Color.green
                            .edgesIgnoringSafeArea(.all)
                            .opacity(0.95)
                        
                        VStack {
                            Text("You Win!! 🏆")
                                .font(.system(size: 75, weight: .bold, design: .monospaced))
                                .foregroundColor(.white)
                                .padding(.top, 100)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                withAnimation {
                                    playerWin = false
                                }
                                resetGameState()
                            }) {
                                Text("Next Game")
                                    .font(.headline)
                                    .frame(width: 150, height: 40)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .shadow(radius: 5)
                            }
                            .padding(.bottom, 100)
                        }
                    }
                    .contentShape(Rectangle()) // Ensures entire ZStack area is tappable
                    .onTapGesture {
                        
                        withAnimation {
                            playerWin = false
                        }
                        resetGameState()
                    }
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
                }
                
                
                
                //push view
                if push {
                    ZStack {
                        Color.black
                            .edgesIgnoringSafeArea(.all)
                            .opacity(0.5)
                        
                        VStack {
                            Text("Push 😮‍💨")
                                .font(.system(size: 75, weight: .bold, design: .monospaced))
                                .foregroundColor(.white)
                                .padding(.top, 100)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                withAnimation {
                                    push = false
                                }
                                resetGameState()
                            }) {
                                Text("Next Game")
                                    .font(.headline)
                                    .frame(width: 150, height: 40)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .shadow(radius: 5)
                            }
                            .padding(.bottom, 100)
                        }
                    }
                    .contentShape(Rectangle()) // Ensures entire ZStack area is tappable
                    .onTapGesture {
                        
                        withAnimation {
                            push = false
                        }
                        resetGameState()
                    }
                    .transition(.move(edge: .leading))
                    .zIndex(1)
                }
                
                
                
                
                
                
                
                
            }
            .onAppear {
                if !isGameInitialized {
                    resetDeck()
                    isGameInitialized = true
                    print("TRIED INITIALIZING DECK")
                }
            }
            .animation(.easeInOut(duration: 0.2), value: playerBust)
            .animation(.easeInOut(duration: 0.2), value: dealerBust)
            .animation(.easeInOut(duration: 0.2), value: playerWin)
            .animation(.easeInOut(duration: 0.2), value: dealerWin)
            .animation(.easeInOut(duration: 0.2), value: push)
            
            
            
        }
    }
    
    
    func resetDeck() {
        deck = Array(unicodeDeckDict.keys)
        deck.shuffle()
        playerHand = []
        dealerHand = []
        
        
        dealToPlayer()
        dealToDealer()
        dealToPlayer()
        dealToDealer()
        /*
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
         dealToPlayer()
         }
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
         dealToDealer()
         }
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.65) {
         dealToPlayer()
         }
         DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
         dealToDealer()
         }*/
        
    }
    
    func resetGameState() {
        print("attempt to reset")
        
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
        
        
        playerScore = 0
        dealerScore = 0
        dealerWin = false
        playerWin = false
        dealerBust = false
        playerBust = false
        push = false
        
        playerHasAces = false
        dealerHasAces = false
        
        playerAces = 0
        dealerAces = 0
        
        
        
        
        
        resetDeck()
        dealerReveal = false
        playerBust = false
        
    }
    
    func dealToPlayer() {
        guard let card = deck.popLast() else { return }
        
        print(card)
        withAnimation(.easeOut(duration: 0.5)) {
            playerHand.append(card)
        }
        
        if (unicodeDeckDict[card]?.rank == "A") {
            playerHasAces = true
            playerAces += 1
        }
        
        
        playerScore += unicodeDeckDict[card]?.value ?? 0
        
        while (playerScore > 21 && playerHasAces) {
            playerScore -= 10
            playerAces -= 1
            
            if (playerAces <= 0) {
                playerHasAces = false
            }
        }
        
        if playerScore > 21 && !playerHasAces {
            print("player busts")
            dealerWins += 1
            playerBust = true
            
        }
    }
    
    func dealToDealer() {
        guard let card = deck.popLast() else { return }
        
        if (unicodeDeckDict[card]?.rank == "A") {
            dealerHasAces = true
            dealerAces += 1
        }
        
        withAnimation(.easeOut(duration: 0.5)) {
            dealerHand.append(card)
        }
        dealerScore += unicodeDeckDict[card]?.value ?? 0
        
    }
    
    func dealersTurn() {
        while (dealerScore < 17) {
            dealToDealer()
            
            if (dealerScore > 21) {
                if (dealerHasAces) {
                    
                    dealerScore -= 10
                    dealerAces -= 1
                    
                    
                    if (dealerAces == 0) {
                        dealerHasAces = false
                    }
                    
                }
                else {
                    dealerBust = true;
                    playerWins += 1
                    UINotificationFeedbackGenerator().notificationOccurred(.success)
                    
                    return;
                }
            }
            
        }
        
        if (dealerScore > playerScore) {
            dealerWin = true;
            dealerWins += 1
            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
            
        }
        else if (dealerScore < playerScore){
            playerWin = true
            playerWins += 1
            UINotificationFeedbackGenerator().notificationOccurred(.success)
            
        }
        else {
            push = true
            UINotificationFeedbackGenerator().notificationOccurred(.error)
            
        }
        
    }
    
}


