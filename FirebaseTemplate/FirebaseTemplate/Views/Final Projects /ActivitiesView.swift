//
//  ActivitiesView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/14/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct ActivitiesView: View {
    var body: some View {
        List{
            Text("Time for Some Fun!\nPick your Favorite Activity")
                .font(.system(size: 20, weight: .thin, design: .rounded))
            
            ForEach(activityLists) {
                activitylist in
                NavigationLink(
                
                    destination: ActivityDetailsView(activityList: activitylist, user: User(firstName: "", lastName: "", email: "", phoneNumber: "")),
                    label: {
                        ActivitiesRowView(activityList: activitylist)
                    }
                )
            }
            
        }.navigationBarTitle("Activity")
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
struct ActivitiesRowView: View {
    let activityList: Activity

    var body: some View {
        HStack{
            ZStack{
                Image(activityList.name)
                    .resizable()
                    .frame(width:350, height: 230)
                    .cornerRadius(20)
                Text(activityList.name)
                    .foregroundColor(Color.white)
                    .font(.system(size:40, weight:.bold, design: .rounded))
            }
            
        }
    }

}
