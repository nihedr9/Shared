//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 11/01/2021.
//

import Foundation

public struct QueryBody: Codable {

    public struct Page: Codable {
        public let count: Int
        public var offset: String?
    }

    public struct Variable: Codable {
        public var page: Page?
        public var sortBy: String?
        public var filter: Filter?
        public var uuid: String?
    }

    public struct Filter: Codable {
        public var category: String?
        public var regionId: String?
        public var queryString: String?
        public var userId: String?
    }

    public let operationName: String
    public let query: String
    public let variables: Variable?
}
