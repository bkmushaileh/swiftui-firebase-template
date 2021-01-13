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
        if campList.name == "Setup"{
            SetUpUIView()
            
        }
        else if campList.name == "Essentials"{
            Text("Hello!")
    }
        else if campList.name == "Food"{
            Text("Hello!")
    }
        else if campList.name == "Activities"{
            Text("Hello!")
    }
        else if campList.name == "Location"{
            MapView()
    }
}
}

struct DetailsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsSwiftUIView(campList: CampList(name: "Setup"))
    }
}
