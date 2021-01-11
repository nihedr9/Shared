//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

struct PageInfoDTO: Codable {
    let startCursor: String
    let hasPreviousPage: Bool
    let endCursor: String
    let hasNextPage: Bool
    let __typename: String
}
