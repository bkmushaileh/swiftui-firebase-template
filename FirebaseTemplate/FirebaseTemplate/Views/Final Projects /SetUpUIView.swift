//
//  SetUpUIView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/11/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct SetUpUIView: View {
    
    var body: some View {
            List{
                Text("You're almost there!\nPick your favorite setup")
                    .font(.system(size: 20, weight: .thin, design: .rounded))
                
                ForEach(setupLists) {
                    setuplist in
                    NavigationLink(
                    
                        destination: SetupDetailsView(setupList: setuplist, user: User(firstName: "", lastName: "", email: "", phoneNumber: "")),
                        label: {
                            SetupRowView(setupList: setuplist)
                        }
                    )
                }
                
            }.navigationBarTitle("Setup")
}
}


struct SetUpUIView_Previews: PreviewProvider {
    static var previews: some View {
        SetUpUIView()
    }
}


struct SetupRowView: View {
    let setupList: Setup

    var body: some View {
        HStack{
            ZStack{
                Image(setupList.name)
                    .resizable()
                    .frame(width:350, height: 230)
                    .cornerRadius(20)
                Text(setupList.name)
                    .foregroundColor(Color.white)
                    .font(.system(size:40, weight:.bold, design: .rounded))
            }
            
        }
    }

}
