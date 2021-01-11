//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

public struct CategoriesResponseDTO: Codable {
    public struct DataDTO: Codable {
        public let categories: [CategoryDTO]
    }
    public let data: DataDTO
}
