//
//  SignInView.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    @State var user = User()
    @State var password = ""
    @EnvironmentObject var env: FirebaseEnv
    var body: some View {
        Form{
            TextField("first name", text: $user.firstName).keyboardType(.default)
            TextField("last name", text: $user.lastName).keyboardType(.default)
            TextField("email", text: $user.email).keyboardType(.emailAddress)
            SecureField("password", text: $password)
       
            Button(action: {
                env.signUp(user: user, password: password)
            }, label: {
                Text("Sign up")
                    .foregroundColor(Color(red: 0.985, green: 0.579, blue: 0.006))
                
            })
        }
        .navigationTitle("Sign up")
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SignUp()
                .environmentObject(FirebaseEnv())
        }
    }
}
