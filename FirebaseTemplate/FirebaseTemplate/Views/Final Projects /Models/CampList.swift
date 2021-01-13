//
//  CampList.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/11/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation
struct CampList :Identifiable {
    let name: String
    let id = UUID()
}

let campLists = [
    CampList(name: "Setup"),
    CampList(name: "Essentials"),
    CampList(name: "Food"),
    CampList(name: "Activities"),
    CampList(name: "Location")
    
]


