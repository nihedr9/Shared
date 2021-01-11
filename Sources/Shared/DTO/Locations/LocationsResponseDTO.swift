//
//  LocationsResponseDTO.swift
//
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

public struct LocationsResponseDTO: Codable {
    public struct DataDTO: Codable {
        public let locations: [RegionDTO]
    }
    public let data: DataDTO
}
