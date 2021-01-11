//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

public struct ListingsResponseDTO: Codable {
    public struct DataDTO: Codable {
        public let listings: ListingsDTO
    }
    public let data: DataDTO
}


public struct ListingResponseDTO: Codable {
    public struct DataDTO: Codable {
        public let listing: ItemDTO
    }
    public let data: DataDTO
}
