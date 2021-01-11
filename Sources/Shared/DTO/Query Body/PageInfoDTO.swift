//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

public struct PageInfoDTO: Codable {
    public let startCursor: String
    public let hasPreviousPage: Bool
    public let endCursor: String
    public let hasNextPage: Bool
    public let __typename: String
}
