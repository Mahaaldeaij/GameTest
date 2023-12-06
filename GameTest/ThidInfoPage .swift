//
//  ThirdInfoPage .swift
//  dtest
//
//  Created by Maha on 15/05/1445 AH.
//

import SwiftUI

struct ThirdInfoPage_: View {
    @State var presentPopup = false

    var body: some View {
        NavigationView{
            ZStack{
                Image("Mountain")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
//                HStack {
//                    
//                    Spacer()
//                    Image("RankMounatinEmpty")
//                    // .resizable()
//                        .scaledToFill()
//                    //  .ignoresSafeArea()
//                        .padding(.trailing,-19)
//                        .padding(.bottom, 300)
//                    Image("RankMounatinEmpty")
//                    // .resizable()
//                        .scaledToFill()
//                    //  .ignoresSafeArea()
//                        .padding(.trailing, -20)
//                        .padding(.bottom, 300)
//                    Image("RankMounatinEmpty")
//                    // .resizable()
//                        .scaledToFill()
//                    //  .ignoresSafeArea()
//                        .padding(.trailing, 20)
//                        .padding(.bottom, 300)
//                    
//                }
                
                Rectangle()
                    .fill(Color(.white))
                    .opacity(0.5)
                    .frame(width: 486, height: 338.58,
                           alignment:.center)
                    .cornerRadius(90)
                //  .position(x:0,y:200)
                    .offset(x:5, y:90)
                VStack{
                    
                    Spacer()
                    Text("جبل الفيل")
                        .font(.headline)
                    // .position(x: 400, y: 140)
                        .padding(.top)
                    Text("صخرة ضخمة يبلغ ارتفاعها عن الأرض 52 متر وتتميز بشكلها الفريد الذي يشبه الفيل ومنه اكتسب الجبل هذا المسمى")
                        .font(.system(size: 16))
                        .padding()
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    Text("ويقع في منطقة متسعة تكسوها الرمال الذهبية على بعد 7 كم إلى جهة الشرق من محافظة العلا")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    Text("وهو مُسجل عالمياً ضمن عجائب الجيولوجيا")                    .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    
                } .frame(width: 450 , height: 338.58, alignment:.center)
                NavigationLink(destination: GamePage()) {
                    Text("")
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 100)
                }
                HStack{
                    Button { presentPopup = true } label: {  Image(systemName: "pause.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color(hex:"#4C776D")
                                             
                            )
                    }
                }
                .frame(width: 10,height: 10,alignment: .center)
                .position(x: 20, y: 30)
                .popover(isPresented: $presentPopup) {
                    PauseView()
                    
                }
            }
            
        }


    }
}

#Preview {
    ThirdInfoPage_()
}

