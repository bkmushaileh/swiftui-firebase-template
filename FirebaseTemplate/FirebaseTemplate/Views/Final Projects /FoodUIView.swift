//
//  FoodUIView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/15/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct FoodUIView: View {
    var body: some View {
        List{
            Text("Time to Choose Some Food!\nFood Made with Love🤤")
                .font(.system(size: 20, weight: .thin, design: .rounded))
            
            ForEach(foodLists) {
                foodlist in
                NavigationLink(
                
                    destination: FoodDetailsView(foodList: foodlist, user: User(firstName: "", lastName: "", email: "", phoneNumber: "")),
                    label: {
                        FoodsRowView(foodList: foodlist)
                    }
                )
            }
            
        }.navigationBarTitle("Food")
    }
}

struct FoodUIView_Previews: PreviewProvider {
    static var previews: some View {
        FoodUIView()
    }
}
struct FoodsRowView: View {
    let foodList: Food

    var body: some View {
        HStack{
            ZStack{
                Image(foodList.name)
                    .resizable()
                    .frame(width:350, height: 230)
                    .cornerRadius(20)
                Text(foodList.name)
                    .foregroundColor(Color.white)
                    .font(.system(size:40, weight:.bold, design: .rounded))
            }
            
        }
    }

}
