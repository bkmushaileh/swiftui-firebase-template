//
//  SignInView.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI


struct SignIn: View {
    @State var userCredentials = SignInCredentials(email: "", password: "")
    @EnvironmentObject var env: FirebaseEnv
    @State var alertShown: Bool = false
    @State var alertError: String = ""
    var body: some View {
        VStack(spacing: 15){
            
            TextField("email", text: $userCredentials.email).keyboardType(.emailAddress)
            SecureField("password", text: $userCredentials.password)
            
            Button(action: {
                env.signIn(user: userCredentials) { (uid) in
                    print("Signed in!")
                } fail: { (error) in
                    alertError = error.debugDescription
                    alertShown = true
                }
            }, label: {
                Text("Sign in")
                    .foregroundColor(.white)
                    .padding()
                    .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity,  alignment: .center)
                    .background(Color(red: 0.977, green: 0.833, blue: 0.184))
                    .cornerRadius(10)
                    .padding(.horizontal)
            })
            
     
            
           
            NavigationLink("Don't have an account?", destination: SignUp()) .foregroundColor(Color(red: 0.985, green: 0.579, blue: 0.006))
        }
        .navigationTitle("Sign in")
        .alert(isPresented: $alertShown, content: {
            Alert(title: Text("Error!"), message: Text(alertError), dismissButton: .cancel())
        })
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
            .environmentObject(FirebaseEnv())
    }
}
