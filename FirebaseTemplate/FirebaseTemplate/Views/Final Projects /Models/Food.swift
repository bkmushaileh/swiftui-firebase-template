//
//  Food.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/15/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation
 struct Food:Identifiable {
    let name: String
    let id = UUID()
}

let foodLists = [
    Food(name: "Food 1"),
    Food(name: "Food 2"),
    Food(name: "Food 3"),
    Food(name: "Food 4"),
 
    
]
