//
//  LocationsDTO.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

struct RegionDTO: Codable {
    let id: String
    let name: String
    let slug: String
    let subdivisions: [RegionDTO]?
    let __typename: String
}
