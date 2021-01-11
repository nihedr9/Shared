//
//  LocationsResponseDTO.swift
//
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

struct LocationsResponseDTO: Codable {
    struct DataDTO: Codable {
        let locations: [RegionDTO]
    }
    let data: DataDTO
}
