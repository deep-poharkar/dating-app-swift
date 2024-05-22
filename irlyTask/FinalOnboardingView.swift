import SwiftUI

struct FinalOnboardingView: View {
    var body: some View {
        VStack {
            Text("Welcome to the Dating APP")
                .font(Font.custom("Rubik", size: 24).weight(.black))
                .padding(.top, 60)
            
            Spacer()
            
            Text("You're all set!")
                .font(Font.custom("Rubik", size: 18).weight(.bold))
                .padding(.bottom, 20)
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct FinalOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        FinalOnboardingView()
    }
}

