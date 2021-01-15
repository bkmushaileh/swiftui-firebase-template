//
//  Activity.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/14/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation
 struct Activity:Identifiable {
    let name: String
    let id = UUID()
}

let activityLists = [
    Activity(name: "Activity 1"),
    Activity(name: "Activity 2"),
    Activity(name: "Activity 3"),
    Activity(name: "Activity 4"),
 
    
]
