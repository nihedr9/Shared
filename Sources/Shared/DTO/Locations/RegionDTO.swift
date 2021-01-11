//
//  LocationsDTO.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

public struct RegionDTO: Codable {
    public let id: String
    public let name: String
    public let slug: String
    public let subdivisions: [RegionDTO]?
    public let __typename: String
}
