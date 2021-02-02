//
//  SearchItemsModel.swift
//  
//
//  Created by Nihed Majdoub on 02/02/2021.
//

import Foundation

public struct SearchItemsModel: Codable {
    public let query: String
    public let categoryID: String?
    public let regionID: String?
}
