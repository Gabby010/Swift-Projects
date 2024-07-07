//
//  ContentView.swift
//  Rock, Paper, Scissors
//
//  Created by Gabriela Ruiz Alvarez on 7/6/24.
//

import SwiftUI
    
    enum Sign {
        case rock, paper, scissors
        
        var emoji: String {
            switch self {
            case .rock:
                return "✊"
            case .paper:
                return "✋"
            case .scissors:
                return "✌️"
            }
        }
        
        func getGameState(against opponent: Sign) -> GameState {
            switch (self, opponent) {
            case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
                return .win
            case (.rock, .paper), (.paper, .scissors), (.scissors, .rock):
                return .lose
            default:
                return .draw
            }
        }
    }
    
    enum GameState {
        case start, win, lose, draw
        
        var status: String {
            switch self {
            case .start:
                return "Rock, Paper, Scissors?"
            case .win:
                return "You Win!"
            case .lose:
                return "You Lose!"
            case .draw:
                return "It's a Draw!"
            }
        }
        
        var color: Color {
            switch self {
            case .start:
                return .gray
            case .win:
                return .green
            case .lose:
                return .red
            case .draw:
                return .yellow
            }
        }
    }
    
    func randomSign() -> Sign {
        let sign = Int.random(in: 0...2)
        if sign == 0 {
            return .rock
        } else if sign == 1 {
            return .paper
        } else {
            return .scissors
        }
    }
    
    struct ContentView: View {
        @State private var gameState: GameState = .start
        @State private var computerSign: Sign = .rock
        @State private var userSign: Sign?
        
        var body: some View {
            
            ZStack {
                gameState.color
                .edgesIgnoringSafeArea(.all)
                        
            VStack {
                Text(computerSign.emoji)
                .font(.system(size: 100))
                            
                Text(gameState.status)
                .font(.largeTitle)
                .padding()
                            
            HStack {
                Button(action: {
                    self.play(userSign: .rock)
                }) {
                    Text("✊")
                        .font(.system(size: 50))
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                                }
                Button(action: {
                        self.play(userSign: .paper)
                                }) {
                        Text("✋")
                        .font(.system(size: 50))
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                                }
                    Button(action: {
                        self.play(userSign: .scissors)
                                }) {
                        Text("✌️")
                        .font(.system(size: 50))
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                        }
                        }
                        .disabled(gameState != .start)
                            
                        if gameState != .start {
                    Button(action: {
                        self.resetGame()
                                }) {
                    Text("Play Again")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                                }
                        .padding()
                            }
                        }
                    }
                }
                
                func play(userSign: Sign) {
                    computerSign = randomSign()
                    self.userSign = userSign
                    gameState = userSign.getGameState(against: computerSign)
                }
                
                func resetGame() {
                    gameState = .start
                    computerSign = .rock
                    userSign = nil
                }
            }

            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
