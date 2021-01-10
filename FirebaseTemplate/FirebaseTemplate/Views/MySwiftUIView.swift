//
//  MySwiftUIView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/10/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct MySwiftUIView: View {
    var body: some View {
        VStack{
            Header()
        }
    }
}

struct MySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
    }
}

struct Header: View {
    var body: some View {
        HStack(alignment:.center){
            Text("Discover")
                .font(.system(size: 44, weight: .bold, design: .rounded))
            Image(systemName: "magnifyingglass")
                .font(.system(size: 20, weight: .light))
        }
    }
}
