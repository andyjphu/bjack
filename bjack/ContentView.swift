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
    }
}



struct ContentView: View {
    
    @State var playerHand: [String] = []       // Example: ["AS", "7H"]
    @State var dealerHand: [String] = []       // Example: ["9D", "5S"]
    @State var deck: [String] = unicodeDeckDict.keys.shuffled()            // Example: ["2C", "3D", ..., "KH"] (shuffled)
    
    @State var dealerReveal: Bool = false   // Example: ["9D", "5S"]
    
    
    @State var dealerScore: Int = 0   // Example: ["9D", "5S"]
    
    
    @State var playerScore: Int = 0   // Example: ["9D", "5S"]

    
    
    @State private var isGameInitialized = false

    
    
    let  cardCount = 7 // <-- change this dynamically later

    var body: some View {
        
        ZStack {
            
            //Dealer hand
            ZStack {
                let cardCount = dealerHand.count // <-- change this dynamically later

                ForEach(0..<cardCount, id: \.self) { i in
                    // Step 1: normalize index to [-1, 1] range
                    let centerIndex = Double(cardCount - 1) / 2.0
                    let normalized = Double(i) - centerIndex
                    
                    // Step 2: control how wide the fan is
                    let maxRotation: Double = 30 * Double(cardCount) / 7 // total spread in degrees
                    let rotationStep = maxRotation / Double(cardCount - 1)
                    let rotation = normalized * rotationStep
                    
                    // Step 3: control how much they shift horizontally
                    let spacing: CGFloat = 240/CGFloat(cardCount)
                    let xOffset = CGFloat(normalized) * spacing
                    
                    // Step 4: optional y lift for curve effect
                    let yOffset = abs(normalized) * 5
                    
                    let cardChar = (i == 1 && !dealerReveal) ? "HIDDEN" : dealerHand[i]

                    DraggableCard(cardKey:cardChar)
                        .rotationEffect(Angle(degrees: -rotation))
                        .offset(x: xOffset, y: yOffset)
                }
            }
            .position(x: 200, y: 100)
            
            
            
            VStack {
                
                
                

                
                
                //Usr deck
                ZStack {
                    let cardCount = playerHand.count
                    
                    ForEach(0..<cardCount, id: \.self) { i in
                        // Step 1: normalize index to [-1, 1] range
                        let centerIndex = Double(cardCount - 1) / 2.0
                        let normalized = Double(i) - centerIndex
                        
                        // Step 2: control how wide the fan is
                        let maxRotation: Double = 30 * Double(cardCount) / 7// total spread in degrees
                        let rotationStep = maxRotation / Double(cardCount - 1)
                        let rotation = normalized * rotationStep
                        
                        // Step 3: control how much they shift horizontally
                        let spacing: CGFloat = 240/CGFloat(cardCount)
                        let xOffset = CGFloat(normalized) * spacing
                        
                        // Step 4: optional y lift for curve effect
                        let yOffset = abs(normalized) * 5
                        
                        DraggableCard(cardKey:playerHand[i])
                            .rotationEffect(Angle(degrees: rotation))
                            .offset(x: xOffset, y: yOffset)
                    }
                }
                .position(x: 200, y: 600)
                
                
                Spacer()
                
                
                HStack(spacing: 30) {
                    Button(action: {
                        dealToPlayer() // HIT
                        print("hit")
                    }) {
                        Text("Hit")
                            .font(.headline)
                            .frame(width: 100, height: 40)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 5)
                    }
                    
                    Button(action: {
                        dealerReveal = true;
                        
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
            
            
            // ✅ Overlay the score without affecting layout
//            Text("10+?")
//                .font(.system(size: 75, weight: .bold, design: .monospaced))
//                .position(x: 200, y: 300)
//                .foregroundColor(.green)
            
            // ✅ Overlay the score without affecting layout
            Text(String(playerScore))
                .font(.system(size: 75, weight: .bold, design: .monospaced))
                .position(x: 200, y: 350) //400
                .foregroundColor(.red)
            
            
        }
        .onAppear {
            if !isGameInitialized {
                resetDeck()
                isGameInitialized = true
                print("TRIED INITIALIZING DECK")
            }
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
    }
    func dealToPlayer() {
        guard let card = deck.popLast() else { return }
        playerHand.append(card)
        playerScore += unicodeDeckDict[card]?.value ?? 0
    }

    func dealToDealer() {
        guard let card = deck.popLast() else { return }
        dealerHand.append(card)
        dealerScore += unicodeDeckDict[card]?.value ?? 0

    }

}


