//
//  Sign In View.swift
//  
//
//  Created by Juergen Loos on 4/4/2022.
//

import SwiftUI

@available(iOS 13.0, *)
public struct SignInView: View {
    
    @State public var email: String  = ""
    @State public var password: String = ""
    
    public var signInDescriptionText: String = ""
    public var gradientButtonText: String = "SignIn"
    
    public var gradientIcon1Colors: Array<Color> = [Color(#colorLiteral(red: 0.5098039216, green: 0.2549019608, blue: 0.737254902, alpha: 1)), Color(#colorLiteral(red: 0.8823529412, green: 0.2823529412, blue: 0.5215686275, alpha: 1)), Color(#colorLiteral(red: 0.9843137255, green: 0.6470588235, blue: 0.5450980392, alpha: 1))]
    public var gradientIcon2Colors: Array<Color> = [Color(#colorLiteral(red: 0.5098039216, green: 0.2549019608, blue: 0.737254902, alpha: 1)), Color(#colorLiteral(red: 0.8823529412, green: 0.2823529412, blue: 0.5215686275, alpha: 1)), Color(#colorLiteral(red: 0.9843137255, green: 0.6470588235, blue: 0.5450980392, alpha: 1))]
    public var gradientButtonColors: Array<Color> = [Color(#colorLiteral(red: 0.7294117647, green: 0.4588235294, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2235294118, green: 0.07450980392, blue: 0.7215686275, alpha: 1))]
    public var emailFieldForegroundColor: Color = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    public var passwordFieldForegroundColor: Color = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    
    public var gradientButtonAction: (_ email: String, _ password: String)->Void
    
    @ViewBuilder
    public var body: some View {
        ZStack() {
            VStack(spacing: 16.0) {
                Text("Sign in")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: 335, alignment: .leading)
                
                Text(signInDescriptionText)
                    .font(.subheadline)
                    .frame(maxWidth: 335, alignment: .leading)
                    .opacity(0.7)
                
                HStack {
                    GradientIcon()
                    TextField("Email address", text: $email)
                        .foregroundColor(emailFieldForegroundColor)
                }
                .padding(8)
                .frame(width: 335, height: 52, alignment: .leading)
                .background(Color.white)
                .cornerRadius(20)
                
                HStack {
                    GradientIcon(icon: "key.fill")
                    SecureField("Password", text: $password)
                        .textContentType(.password)
                        .foregroundColor(passwordFieldForegroundColor)
                }
                .padding(8)
                .frame(width: 335, height: 52, alignment: .leading)
                .background(Color.white)
                .cornerRadius(20)
                
                Button {
                    gradientButtonAction(email, password)
                } label: {
                    GradientButton(text: gradientButtonText, gradient: gradientButtonColors)
                }
                
                Rectangle()
                    .frame(maxWidth: 335, maxHeight: 1)
                    .foregroundColor(.black).opacity(0.1)
                
                HStack(spacing: 0) {
                    Text("Don’t have an account? ")
                        .opacity(0.7)
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .frame(maxWidth: 335, alignment: .leading)
                
                HStack(spacing: 0) {
                    Text("Forgot password? ")
                        .opacity(0.7)
                    Text("Reset Password")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .frame(maxWidth: 335, alignment: .leading)
                
                HStack(spacing: 0) {
                    Text("Don't have a password yet? ")
                        .opacity(0.7)
                    Text("Set Password")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .frame(maxWidth: 335, alignment: .leading)
            }
            .padding(20)
            
        }
        .frame(width: UIScreen.main.bounds.size.width)
        .customBackgroundStyle()
        .cornerRadius(30)
    }
}

@available(iOS 13.0.0, *)
struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView() {}
    }
}

@available(iOS 13.0, *)
extension View {
    @ViewBuilder
    func customBackgroundStyle() -> some View {
        if #available(iOS 15, *) {
            self.background(.ultraThinMaterial)
        }
        else {
            self.background(Color.white)
        }
    }
}
