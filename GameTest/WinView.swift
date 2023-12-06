
import SwiftUI

//Win view to check whenever user have matched all cards
struct WinView: View {
    var check: Int
    var gameMode: Int
    var score: Int
    @State var presentPopup = false
    
    var body: some View {
        if gameMode == check {
            ZStack {
//                Color.black.opacity(gameMode == check ? 0.9 : 0).edgesIgnoringSafeArea(.all)
             
                //Start from here
                NavigationView{
                    

                    
                    ZStack{
                        Image("BackgroundForOldMan")
                            .resizable()
                            .ignoresSafeArea()
                        
                        
                        Rectangle()
                            .fill(Color(hex:"#4C776D"))
                            .opacity(0.5)
                            .frame(width: 600, height: 300,alignment: .center)
                            .cornerRadius(10)
                            .position(x:365,y:200)
                        
                        VStack{
                            HStack{
                                Text("صح عليك")
                                    .font(.system(size: 40))
                                    .colorInvert()
                                Text("رهيب!")
                                    .font(.system(size: 40))
                                    .bold()
                                    .colorInvert()
                            }
                            .padding()
                            
                            Text("عجّل عشان تلقى النمر!")
                                .font(.system(size: 40))
                                .colorInvert()
                        }
                        
                        Image("OldManOk")
                            .resizable()
                            .frame(width: 240, height: 500,alignment: .center)
                            .position(x:690, y: 290)
                        
                        
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
                        NavigationLink(destination: InfoPage_().navigationBarBackButtonHidden(true)) {
                            Text(" ")
                                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 100)
                        }

                    }
                }
                   }
                }
               // .frame(width: 300, height: 300)
               // .cornerRadius(20)
            }
        }
    

