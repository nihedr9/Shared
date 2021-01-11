//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

struct ListingsResponseDTO: Codable {
    struct DataDTO: Codable {
        let listings: ListingsDTO
    }
    let data: DataDTO
}


struct ListingResponseDTO: Codable {
    struct DataDTO: Codable {
        let listing: ItemDTO
    }
    let data: DataDTO
}
