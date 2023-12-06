
import SwiftUI

struct SecondInfoPage_: View {
    @State var presentPopup = false

    var body: some View {
        NavigationView{
            ZStack{
                Image("backgroundtwo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                Image("tiger")
                //  .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .position(x:180,y:230)
                HStack {
                    
                    Spacer()
                    Image("RankMounatinEmpty")
                    // .resizable()
                        .scaledToFill()
                    //  .ignoresSafeArea()
                        .padding(.trailing,-19)
                        .padding(.bottom, 300)
                    Image("RankMounatinEmpty")
                    // .resizable()
                        .scaledToFill()
                    //  .ignoresSafeArea()
                        .padding(.trailing, -20)
                        .padding(.bottom, 300)
                    Image("RankMounatinEmpty")
                    // .resizable()
                        .scaledToFill()
                    //  .ignoresSafeArea()
                        .padding(.trailing, 20)
                        .padding(.bottom, 300)
                    
                }
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
                    Text("النمر العربي")
                        .font(.headline)
                    // .position(x: 400, y: 140)
                        .padding(.top)
                    Text("ظهر النمر العربي في أفريقيا منذ 500 ألف عامٍ تقريباً، وهو أحد أهمّ أنواع الثدييات الأصلية الموجودة في شبه الجزيرة العربية.")
                        .font(.system(size: 16))
                    // .padding()
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    Text(" وامتدّت موائله الطبيعية من البحر الأبيض المتوسط وصولاً إلى الخليج العربي، أي من جبل سيناء وصحراء النقب في الشمال إلى جبال حراز وظفار والحجر في الجنوب")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    Text("أما أولى صوره المكتشفة، فقد وجدت في رسم داخل كهف في منطقة الشويمس جنوب شرق محافظة العلا. وكان من السهل التعرّف عليه من خلال ذيله الطويل ووجهه المسطح ووضعية المطاردة التي يُعرف بها.")                    .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    
                } .frame(width: 450 , height: 338.58, alignment:.center)
                
                NavigationLink(destination: Questions().navigationBarBackButtonHidden(true)) {
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
    SecondInfoPage_()
}

