//
//  DetailsSwiftUIView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/11/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct DetailsSwiftUIView: View {
    let campList : CampList
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsSwiftUIView(campList: CampList(name: "Setup"))
    }
}
