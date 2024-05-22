import SwiftUI

struct OnboardingStep2: View {
    @State private var bio: String = ""
    
    var body: some View {
        VStack {
            Text("Let's add your bio")
                .font(Font.custom("Rubik", size: 24).weight(.black))
                .padding(.top, 60)
            
            Text("Max. 150 characters")
                .font(Font.custom("Rubik", size: 16))
                .foregroundColor(.gray)
                .padding(.top, 10)
            
            TextEditor(text: $bio)
                .frame(height: 100)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 20)
            
            Spacer()
            
            NavigationLink(destination: OnboardingStep3()) {
                Text("Continue")
                    .font(Font.custom("Rubik", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .frame(width: 358, height: 48)
                    .background(Color(.black))
                    .cornerRadius(10)
            }
            .padding(.bottom, 20)
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct OnboardingStep2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStep2()
    }
}
