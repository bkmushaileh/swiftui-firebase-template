//
//  MySwiftUIView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/10/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI
struct MSignOutButton: View{
    var env: FirebaseEnv
    var body: some View{
        Button("Signout") {
            env.signOut()
        }
        .foregroundColor(.red)
    }
}

struct MySwiftUIView: View {
    @EnvironmentObject var env: FirebaseEnv
    var body: some View {
        NavigationView{
            List{
            
                Text("Planning Your Next Vacation")
                    .font(.system(size: 25, weight: .thin, design: .rounded))
                
                ForEach(campLists){
                    camplist in
                    NavigationLink(
                        destination: DetailsSwiftUIView(campList:camplist),
                        label: {
                            
                            CampRowView(camplist:camplist)
                            
                        })
                }
                
            }
            .navigationBarTitle("Discover")

         
        }
    }
}

struct MySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
            .environmentObject(FirebaseEnv())
    }
}

struct Header: View {
    var body: some View {
        VStack(){
            HStack(alignment:.center){
                Text("Discover")
                    .font(.system(size: 44, weight: .bold, design: .rounded))
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 20, weight: .light))
            }
        }
    }

}

struct CampRowView: View {
    let camplist: CampList

    var body: some View {
        HStack{
            ZStack{
                Image(camplist.name)
                    .resizable()
                    .frame(width:350, height: 230)
                    .cornerRadius(20)
                Text(camplist.name)
                    .foregroundColor(Color.white)
                    .font(.system(size:40, weight:.bold, design: .rounded))
            }
            
        }
    }
}
