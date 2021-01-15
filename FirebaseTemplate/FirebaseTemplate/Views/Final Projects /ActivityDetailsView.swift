//
//  ActivityDetailsView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/14/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct ActivityDetailsView: View {
    @State var name = ""
    @State var mobile = ""
    @State var hours = 0
    @State var userName: String?
    let activityList : Activity
    var user: User
    func getUser(){
        let path = "users/\(Networking.getUserId()!)"
        Networking.getSingleDocument(path)
        { (user: User) in
            self.userName = user.fullName()
            self.mobile = user.phoneNumber
            print("\(userName!) This is the current user")
            print("\(mobile) This is the current user mobile number")

        }
    }
    var body: some View {
        VStack(alignment: .center){
            Text("Hello \(userName ?? ""),")
                .font(.system(size: 20, weight: .bold, design: .rounded))
            Image(activityList.name)
                .resizable()
                .frame(width:350, height: 230)
                .cornerRadius(20)

            HStack(){
                Stepper("" , value: $hours , in: 0...24)
                    .labelsHidden()
                Spacer()
                Text("Hours"+" \(hours)")
                    .font(.system(size: 20, weight: .thin, design: .rounded))

            }
            
     
            
            Spacer()
            
            if hours >= 1 {
                Text(price(hours: hours, name: activityList.name))
                let totalprice = Int(price(hours: hours, name: activityList.name))
                Text("Total Price")
                NavigationLink(
                    destination:
                        FatourahUIView(name: userName ?? "", mobile: mobile, hours: hours, price: totalprice!)
                    ,
                    label: {
                        Text("Press Here to Continue")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.977, green: 0.833, blue: 0.184))
                            .cornerRadius(15.0)
                            


                        
                    })
            }
            else{
                Text("0.00")
                Text("Total Price")

            }

       
            
         
            

        }.padding()
        .onAppear(perform: getUser)
    }
   
    func price ( hours : Int , name : String) -> String
    {
        var totalprice = "0"
        
        if name == "Activity 1"
        {
            totalprice = String (hours  * 1)
            
        }
        else if name == "Activity 2"
        {
            totalprice = String (hours  * 2)

        }
        else if name == "Activity 3"
        {
            totalprice = String (hours  * 1)

        }
        
        else if name == "Activity 4"
        {
            totalprice = String (hours  * 5)

        }
        return totalprice
    }
}

struct ActivityDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailsView(activityList: Activity(name: "Activity 1"), user: User(firstName: "", lastName: "", email: "", phoneNumber: ""))
    }
}
