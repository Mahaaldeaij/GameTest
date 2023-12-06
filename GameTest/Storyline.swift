//
//  Storyline.swift
//  Dadan
//
//  Created by lana alfaadhel on 18/05/1445 AH.
//


import SwiftUI

struct Storyline: View {
    @State var presentPopup = false
    @State private var action: Int? = 0

    var body: some View {
        NavigationView{
        
            ZStack{
                Image("BackgroundForOldMan")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                Rectangle()
                    .fill(Color(.white))
                    .opacity(0.5)
                    .frame(width: 600, height: 300,alignment: .center)
                    .cornerRadius(10)
                    .position(x:365,y:200)
                
                Image("Oldman")
                    .resizable()
                    .frame(width: 240, height: 500,alignment: .center)
                    .position(x:670, y: 290)
                
                VStack{
                    Text("يا عيال النشامى!")
                        .font(.system(size: 16))
                        .bold()
                        .padding()
                    Text("أنا أبو سعود، الحارس الشجاع اللي ما فلت من يدي شيء عشرين سنة، بس اليوم صار لي غدرة بالمحمية!")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                    Text("النمر العربي، في طريق الانقراض وانحاش من المحمية، ولا أدري وين ضاع صار لي يومين وأنا وراه مثل المجنون! ")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    Text("اللي أبيه منك يا النشمي، تعاوني وندوره مع بعض ونلقاه قبل ما يندثر ونخسره!")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .bold()
                    
                    
                }.frame(width: 450, height: 300,alignment: .center)
                
        
                

                GameMode(gameMode: 4, tag: 1, action: $action, title: "play")
                
                HStack{
                    Button { presentPopup = true } label: {  Image(systemName: "pause.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color(hex:"#4C776D")
                                             
                            )
                    }
                }
                .frame(width: 10,height: 10,alignment: .center)
                .position(x: 1, y: 30)
                .popover(isPresented: $presentPopup) {
                    PauseView()
                    
                }
            }
        }
            
        }
            
        }

#Preview {
    Storyline()
}


