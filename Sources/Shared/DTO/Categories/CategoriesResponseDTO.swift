//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

struct CategoriesResponseDTO: Codable {
    struct DataDTO: Codable {
        let categories: [CategoryDTO]
    }
    let data: DataDTO
}
