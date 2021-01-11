//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

struct CategoryDTO: Codable {
    let id: String
    let parentId: String?
    let name: String
    let engName: String
    let slug: String?
    let subCategories: [CategoryDTO]?
    let __typename: String
}
