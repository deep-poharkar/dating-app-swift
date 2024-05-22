import SwiftUI

struct OnboardingStep3: View {
    @State private var height: String = ""
    @State private var drink: String = ""
    @State private var smoke: String = ""
    @State private var exercise: String = ""
    
    let heights = ["Shorter than 150cm", "Taller than 150cm"]
    let habits = ["Never", "Sometimes", "Often"]
    
    var body: some View {
        VStack {
            Text("Tell us about yourself")
                .font(Font.custom("Rubik", size: 24).weight(.black))
                .padding(.top, 60)
            
            VStack(alignment: .leading, spacing: 20) {
                Picker("Height", selection: $height) {
                    ForEach(heights, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
                Picker("Do you drink?", selection: $drink) {
                    ForEach(habits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
                Picker("Do you smoke?", selection: $smoke) {
                    ForEach(habits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
                Picker("Are you doing activity/exercise?", selection: $exercise) {
                    ForEach(habits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            NavigationLink(destination: FinalOnboardingView()) {
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

struct OnboardingStep3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStep3()
    }
}
