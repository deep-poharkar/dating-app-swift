
//  ContentView.swift


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack {
                Color(red: 119.0/255, green: 67.0/255, blue: 219.0/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("LOGO")
                        .frame(alignment: .top)
                    
                    HStack(alignment: .top) {
                        Text("PEOPLE")
                            .font(Font.custom("Rubik", size: 32).weight(.black))
                            .foregroundColor(.white)
                    }
                    HStack(alignment: .top) {
                        Text("for Real")
                            .font(Font.custom("Playball", size: 32).weight(.bold))
                            .foregroundColor(.white)
                    }
                    
                    ZStack(alignment: .bottom){
                        
                        VStack(){
                            
                            ZStack(){
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 320, height:200)
                                    .background(Color(red: 126.0/255, green: 74.0/255, blue: 226.0/255))
                                    .cornerRadius(15)
                                
                                VStack(){
                                    ZStack() {
                                        HStack(alignment: .bottom) {
                                            Text("Hi 👋  I’m new to town, do you know any good bike trails?")
                                                .font(Font.custom("Roboto", size: 16))
                                                .foregroundColor(.white)
                                        }
                                        .padding(EdgeInsets(top: 9, leading: 9, bottom: 9, trailing: 9))
                                        .frame(width: 250, height: 62)
                                        .background(Color(red: 140.0/255, green: 88.0/255, blue: 240.0/255))
                                        .cornerRadius(12)
                                        .offset(x: 0, y: -12)
                                        Text("Jessica")
                                            .font(Font.custom("Roboto", size: 12))
                                            .foregroundColor(.white)
                                            .offset(x: -102, y: 35)
                                        
                                    }
                                    .frame(width: 250.81, height: 76)
                                    
                                    
                                }
                                .frame(height: 170,alignment: .bottom)
                            }
                            
                        }
                        
                        VStack(){
                            HStack(){
                                ZStack() {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 176, height: 176)
                                        .background(Color(red: 0.53, green: 0.35, blue: 0.87))
                                        .cornerRadius(15)
                                        .rotationEffect(.degrees(-1.0))
                                    VStack(spacing: 0) {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 160, height: 160)
                                            .background(
                                                Image("image1")
                                            )
                                            .cornerRadius(8)
                                    }
                                    .frame(width: 160, height: 160)
                                    .offset(x: 0.7, y: -1.2)
                                    .rotationEffect(.degrees(-1))
                                    
                                    CommonHobbyView(hobby: "Bike")
                                        .rotationEffect(.degrees(-1))
                                        .offset(x:-70,y:35)
                                    UserInfoView(name:"Jessica",age: 24)
                                        .rotationEffect(.degrees(-1))
                                        .offset(x: -45,y:65)
                                    
                                    
                                }
                                .frame(width: 176, height: 176)
                                .offset(x: 6,y: 0)
                                .rotationEffect(.degrees(-9.0))
                                
                                
                                ZStack() {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 176, height: 176)
                                        .background(Color(red: 0.53, green: 0.35, blue: 0.87))
                                        .cornerRadius(15)
                                        .rotationEffect(.degrees(2))
                                    VStack() {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 160, height: 160)
                                            .background(
                                                Image("image2")
                                            )
                                            .cornerRadius(8)
                                    }
                                    .frame(width: 160, height: 160)
                                    .offset(x: 0.74, y: -1.26)
                                    .rotationEffect(.degrees(2))
                                    
                                    
                                    
                                    CommonHobbyView(hobby: "Bike")
                                        .rotationEffect(.degrees(3))
                                        .offset(x:85,y:35)
                                    UserInfoView(name:"Cameron",age: 25)
                                        .rotationEffect(.degrees(2))
                                        .offset(x: 55,y:65)
                                    
                                    
                                    
                                }
                                .frame(width: 176, height: 176)
                                .offset(x: -6,y: 10)
                                .rotationEffect(.degrees(7))
                                
                            }
                            
                            VStack(spacing: 10) {
                                Image("Star")
                                
                            }
                            .padding(
                                EdgeInsets(top: 14, leading: 14, bottom: 14, trailing: 14)
                            )
                            .offset(x: 0,y: -85)
                        }
                        .frame(height: 300,alignment:.top)
                        
                        
                        
                    }
                    .frame(width: 300, height: 320)
                    
                    
                    
                    Text("Like you've never experienced before")
                        .font(Font.custom("Outfit", size: 16))
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        NavigationLink(destination: OnboardingStep1()){
                        HStack(spacing: 8) {
                            VStack(spacing: 0) {
                                Image("Apple")
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 3, trailing: 0))
                            .frame(width: 20)
                            
                          
                                Text("CONTINUE WITH APPLE")
                                    .font(Font.custom("Rubik", size: 16).weight(.bold))
                                    .foregroundColor(.white)
                            }
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                            .frame(width: 358, height: 48)
                            .background(Color(.black))
                            .cornerRadius(10)
                        }
                        NavigationLink(destination: OnboardingStep1()){
                            HStack(spacing: 8) {
                                Text("CONTINUE WITH NUMBER")
                                    .font(Font.custom("Rubik", size: 16).weight(.bold))
                                    .foregroundColor(Color(red: 0.47, green: 0.26, blue: 0.86))
                            }
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                            .frame(width: 358, height: 48)
                            .background(.white)
                            .cornerRadius(10)
                        }
                    }
                    .frame(width: 360, height: 100)
                        
                    
                    Spacer()
                        .frame(height: 20)
                    
                    VStack {
                        Text("By continuing, you confirm that you have read and agree to our ")
                            .font(Font.custom("Roboto", size: 14))
                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95).opacity(0.64))
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(height: 10)
                        
                        HStack(spacing: 8) {
                            Text("Terms of Use")
                                .font(Font.custom("Outfit", size: 14).weight(.semibold))
                                .underline()
                                .foregroundColor(.white)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 1, height: 13)
                                .background(.white)
                                .cornerRadius(4)
                            Text("Privacy Policy")
                                .font(Font.custom("Outfit", size: 14).weight(.semibold))
                                .underline()
                                .foregroundColor(.white)
                        }
                        .opacity(0.64)
                    }
                    .frame(width: 227, height: 71)
                    
                    
                    
                }
            }
        }
    }
}

struct NewPageView: View {
    var body: some View {
            Text("Welcome to the Dating APP")
    }
}

struct UserInfoView: View {
    var name : String?
    var age : Int?
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 2) {
            Text(name ?? "No Name")
                .font(Font.custom("Rubik", size: 12).weight(.bold))
            Text(" \( age ?? 0 ) ")
                .font(Font.custom("Rubik", size: 14).weight(.bold))
                .lineSpacing(0)
                .foregroundColor(Color(red: 0.47, green: 0.26, blue: 0.86))
        }
        .padding(
            EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8)
        )
        .frame(width: 105, height: 24.22)
        .background(.white)
        .cornerRadius(36)
    }
        
}

struct CommonHobbyView: View {
    var hobby : String?
    var body: some View {
        HStack(spacing: 4) {
            HStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 12, height: 12)
                    .background(
                        Image("Tennis")
                    )
            }
            .frame(width: 12, height: 12)
            Text(hobby ?? "NoData")
                .font(Font.custom("Outfit", size: 9).weight(.medium))
        }
        .padding(
            EdgeInsets(top: 2.5, leading: 10.5, bottom: 2.5, trailing: 10.5)
        )
        .frame(width: 56, height: 26)
        .background(Color(.white))
        .cornerRadius(74)

    }
}


#Preview {
    ContentView()
}
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color(red: 119.0/255, green: 67.0/255, blue: 219.0/255)
//                    .edgesIgnoringSafeArea(.all)
//                
//                VStack {
//                    Image("LOGO")
//                        .frame(alignment: .top)
//                    
//                    HStack(alignment: .top) {
//                        Text("Get Your")
//                            .font(Font.custom("Rubik", size: 32).weight(.black))
//                            .foregroundColor(.white)
//                    }
//                    HStack(alignment: .top) {
//                        Text("Game On")
//                            .font(Font.custom("Playball", size: 32).weight(.bold))
//                            .foregroundColor(.white)
//                    }
//                    
//                    // Rest of your code remains the same
//                    
//                    VStack(alignment: .leading, spacing: 8) {
//                        NavigationLink(destination: OnboardingStep1()) {
//                            HStack(spacing: 8) {
//                                VStack(spacing: 0) {
//                                    Image("Apple")
//                                }
//                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 3, trailing: 0))
//                                .frame(width: 20)
//                                
//                                Text("CONTINUE WITH APPLE")
//                                    .font(Font.custom("Rubik", size: 16).weight(.bold))
//                                    .foregroundColor(.white)
//                            }
//                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
//                            .frame(width: 358, height: 48)
//                            .background(Color(.black))
//                            .cornerRadius(10)
//                        }
//                        
//                        NavigationLink(destination: OnboardingStep1()) {
//                            HStack(spacing: 8) {
//                                VStack(spacing: 0) {
//                                    Image("Google")
//                                }
//                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 3, trailing: 0))
//                                .frame(width: 20)
//                                
//                                Text("CONTINUE WITH GOOGLE")
//                                    .font(Font.custom("Rubik", size: 16).weight(.bold))
//                                    .foregroundColor(.white)
//                            }
//                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
//                            .frame(width: 358, height: 48)
//                            .background(Color(.black))
//                            .cornerRadius(10)
//                        }
//                        
//                        NavigationLink(destination: OnboardingStep1()) {
//                            HStack(spacing: 8) {
//                                VStack(spacing: 0) {
//                                    Image("Facebook")
//                                }
//                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 3, trailing: 0))
//                                .frame(width: 20)
//                                
//                                Text("CONTINUE WITH FACEBOOK")
//                                    .font(Font.custom("Rubik", size: 16).weight(.bold))
//                                    .foregroundColor(.white)
//                            }
//                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
//                            .frame(width: 358, height: 48)
//                            .background(Color(.black))
//                            .cornerRadius(10)
//                        }
//                    }
//                    .padding(.top, 180)
//                }
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
