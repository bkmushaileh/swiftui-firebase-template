//
//  FatourahUIView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/13/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI
struct Payment: Codable{
    var name : String
    var mobile : String
    var price : Int
    var hours : Int
}

struct FatourahUIView: View {
    let name : String
    let mobile : String
    let hours : Int
    let price : Int
    @State private var didClick:Bool = false
    @State private var color : UIColor = UIColor(red: 0.977, green: 0.833, blue: 0.184, alpha: 1)
    @State private var payment : String = "Pay Now"
    var body: some View {
        VStack{
            Text("Receipt")
                .font(.largeTitle)
                .bold()
            HStack{
                Text("Name")
                Spacer()
                Text(name)
            }.padding()
            HStack{
                Text("Phone Number")
                Spacer()
                Text(mobile)
            }.padding()
            HStack{
                Text("Hours")
                Spacer()
                Text(String(hours))
            }.padding()
            HStack{
                Text("Total Price")
                Spacer()
                Text(String(price))
            }.padding()
            Spacer()
            Button(action: {
                self.didClick = true
                payment = "Payment Done Successfully"
                color = UIColor(red: 0.985, green: 0.579, blue: 0.006, alpha: 1)

                let payment = Payment(name: name, mobile: mobile, price: price, hours: hours)
                Networking.createItem(payment, inCollection: "payments")
                    {
                    print("Fatourah is created")
                }
                
            })
            {
                Text(payment)
                    
                }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color(color))
                    .cornerRadius(15.0)
        }
    }
}

struct FatourahUIView_Previews: PreviewProvider {
    static var previews: some View {
        FatourahUIView(name: "Bashayer", mobile: "90990224", hours: 5, price: 10)
    }
}
