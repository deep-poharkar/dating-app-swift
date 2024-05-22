import SwiftUI

struct OnboardingStep1: View {
    @State private var name: String = ""
    @State private var birthday: Date = Date()
    @State private var gender: String = ""
    let genders = ["Man", "Woman", "Non-Binary"]
    
    var body: some View {
        VStack {
            Text("Tell us about yourself")
                .font(Font.custom("Rubik", size: 24).weight(.black))
                .padding(.top, 60)
            
            VStack(alignment: .leading, spacing: 20) {
                TextField("What's your first name?", text: $name)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                DatePicker("Your birthday", selection: $birthday, displayedComponents: [.date])
                    .datePickerStyle(WheelDatePickerStyle())
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                Text("You identify as")
                    .font(Font.custom("Rubik", size: 18).weight(.bold))
                
                Picker("You identify as", selection: $gender) {
                    ForEach(genders, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            NavigationLink(destination: OnboardingStep2()) {
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

struct OnboardingStep1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStep1()
    }
}
