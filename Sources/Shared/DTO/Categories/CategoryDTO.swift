//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

public struct CategoryDTO: Codable {
    public let id: String
    public let parentId: String?
    public let name: String
    public let engName: String
    public let slug: String?
    public let subCategories: [CategoryDTO]?
    public let __typename: String
}
