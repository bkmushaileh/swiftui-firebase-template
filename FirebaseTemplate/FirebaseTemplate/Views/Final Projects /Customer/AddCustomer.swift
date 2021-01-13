//
//  AddCustomer.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/12/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct AddCustomer: View {
    @State var firstName: String?
    @State var phoneNumber: String?
    func getUser(){
        let path = "users/\(Networking.getUserId()!)"
        Networking.getSingleDocument(path)
        { (user: User) in
            self.firstName = user.firstName
            self.phoneNumber = user.phoneNumber
            print("\(firstName!) & \(phoneNumber!) This is the current user")
        }
        
    }
    var body: some View {
        VStack{
            HStack()
            {
                Text("Customer Information:")
                    .font(.system(size: 20, weight: .thin, design: .rounded))
                
                Spacer()
            }
            HStack()
            {
                Text("First Name: \(firstName ?? "")")
                    .font(.system(size: 20, weight: .thin, design: .rounded))
                
                Spacer()
            }
            HStack()
            {
                Text("Phone Number: \(phoneNumber ?? "")")
                    .font(.system(size: 20, weight: .thin, design: .rounded))
                
                Spacer()
            }
        }
    }
}

struct AddCustomer_Previews: PreviewProvider {
    static var previews: some View {
        AddCustomer()
    }
}
