/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Thai Manh Phi
  ID: s3878070
  Created  date: 05/08/2022
  Last modified: 27/08/2022
  Acknowledgement:
 1. https://stackoverflow.com/questions/61930915/swiftui-detecting-the-navigationview-back-button-press
 2. https://github.com/SamuelDo02/swiftuitutorials/edit/main/Flashcard.swift
*/

import SwiftUI
import AVFoundation

//Game view
struct GameView: View {
    //@ObservedObject var userModel: UserVM = UserVM()
    @ObservedObject var memoryGame: GameVM
    
    @State var userName = ""
    @State var show = false
    @State var gameMode: Int
    @State var buttonClickCheck: Bool
    
    init(memoryGame: GameVM = GameVM(randomNumOfPairs: 5), gameMode: Int, userName: String = "", show: Bool = false, buttonClickCheck: Bool = false) {
       /// self.userModel = UserVM()
        self.memoryGame = GameVM(randomNumOfPairs: gameMode)
        self.userName = userName
        self.show = show
        self.gameMode = gameMode
        self.buttonClickCheck = buttonClickCheck
    }

    var body: some View {
        ZStack {
            Image("back")
                .resizable()
                .ignoresSafeArea()
            VStack {
                //Information at the top of the screen
              
                
                //Show game body
                gameBody
                Spacer()
                
                //Show two button at the bottom of the screen
                HStack{
                    shuffle
                    restart
                }
                .padding(.horizontal)
            }
            .padding(20)
            .foregroundColor(Color("Card"))
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle(Text(""), displayMode: .inline)
            
 
            
            WinView(check: memoryGame.getCheck(), gameMode: gameMode, score: memoryGame.getScore())
//            //Play a sound when this view appear
//                .onAppear {
//                    userModel.updatePoint(point: memoryGame.getScore())
//                    playSound(sound: "level-win", type: "mp3")
//                }
        }
        
        //Play and stop background sound on appear and on dissapear
        .onAppear {
            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "game")
        }
        .onDisappear {
            MusicPlayer.shared.stopBackgroundMusic()
        }
        
        
    }
    
    //Game body view here
    var gameBody: some View {
        Grid(items: memoryGame.cards, aspectRatio: 2/3, content: {
            card in
            !card.isFaceUp && card.isMatched ?  AnyView(rec(game: memoryGame)) : AnyView(checkMatch(card: card, game: memoryGame))
        })
    }
    
    //If is two cards matched, hide this card
    func rec(game: GameVM) -> some View {
        Rectangle().opacity(0.0)
            .onAppear {
               // userModel.updatePoint(point: game.getScore())
                print(game.getScore())
            }
    }
    
    //function to render the cards
    func checkMatch(card: CardModel.Card, game: GameVM) -> some View{
        CardView(card: card)
            .transition(AnyTransition.scale)
            .onTapGesture {
                print(game.getScore())
                withAnimation {
                    memoryGame.choose(card)
                }
            }
    }
    
    //Shuffle button here
    var shuffle: some View {
        Button {
            withAnimation {
                memoryGame.shuffle()
            }
        } label: {
            Text("اخلطها")
                .foregroundColor(Color("Green"))
        }
     
        
    }
    
    //Restart button here and reset user score
    var restart: some View {
        Button {
            withAnimation {
                memoryGame.restart()
              
            }
        }  label: {
            Text("عدها")
                .foregroundColor(Color("Green"))
        }
        
      
    }
}

//Customize back button
struct BackButtonView: View {
  //  var name: String
    @ObservedObject var game: GameVM

    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        //Return back to Home view
        Button(
            action: {
                self.presentationMode.wrappedValue.dismiss()
              
            }, label: {
                Image(systemName: "arrowshape.left")
                    .foregroundColor(Color("Green"))
                Text("Return!!!!")
                    .foregroundColor(Color("white"))
            }
        )
    }
}