//
//  AuthenticationView.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Image("bonfire")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                        .frame(width: 200.0, height: 200.0, alignment: .center)
                        .clipShape(Rectangle())
                    
                    .padding()
                NavigationLink(
                    destination: SignIn(),
                    label: {Text("Sign in").modifier(SignInModifier())}
                )
                NavigationLink(
                    destination: SignUp(),
                    label: {Text("Create an account")
                        .foregroundColor(Color(red: 0.985, green: 0.579, blue: 0.006))
                        
                    }
                )
                Spacer()
            }.navigationTitle("You're Almost There")
            
        }
    }
}

struct SignInModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding()
            .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity,  alignment: .center)
            .background(Color(red: 0.977, green: 0.833, blue: 0.184))
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
