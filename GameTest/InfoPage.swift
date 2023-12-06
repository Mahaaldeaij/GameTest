//
//  InfoPage .swift
//  dtest
//
//  Created by Maha on 15/05/1445 AH.
//

import SwiftUI

struct InfoPage_: View {
    
    @State var presentPopup = false

    var body: some View {
        
        NavigationView{
            ZStack{
                Image("firstinfo")
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
                    Text("مدائن صالح")
                        .font(.headline)
                    // .position(x: 400, y: 140)
                        .padding(.top)
                    Text("تعتبر الحجر بمثابة الموقع الأكثر شهرة في محافظة العُلا،وهي أول مواقع المملكة العربية السعودية المسجّلة في قائمة التراث العالمي لليونسكو.")
                        .font(.system(size: 16))
                    // .padding()
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    Text(" وكانت بمثابة المدينة الجنوبية الرئيسية لمملكة الأنباط، وتتكون من أكثر من 100 مدفنٍ محفوظة بشكل جيد، مع واجهات متقنة تم اقتطاعها من نتوءات الحجر الرملي، المحيطة بالمستوطنة الحضرية المسوّرة..")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    Text("وتشير الدراسات الحديثة إلى اعتبار الحِجر أقصى المواقع الجنوبية في الإمبراطورية الرومانية.")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    
                } .frame(width: 450 , height: 338.58, alignment:.center)
                NavigationLink(destination: Line().navigationBarBackButtonHidden(true)) {
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
    InfoPage_()
}
