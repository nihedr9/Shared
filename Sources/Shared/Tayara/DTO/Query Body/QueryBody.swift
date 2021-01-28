//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 11/01/2021.
//

import Foundation

extension Tayara {
    public struct QueryBody: Codable {

        public struct Page: Codable {
            public let count: Int?
            public var offset: String?

            public init(count: Int? = nil,
                        offset: String? = nil) {
                self.count = count
                self.offset = offset
            }
        }

        public struct Filter: Codable {
            public var category: String?
            public var regionId: String?
            public var queryString: String?
            public var userId: String?

            public init(category: String? = nil,
                        regionId: String? = nil,
                        queryString: String? = nil,
                        userId: String? = nil) {
                self.category = category
                self.regionId = regionId
                self.queryString = queryString
                self.userId = userId
            }
        }

        public struct Variable: Codable {
            public var page: Page?
            public var filter: Filter?
            public var sortBy: String?
            public var uuid: String?

            public init(page: Page? = nil,
                        filter: Filter? = nil,
                        sortBy: String? = nil,
                        uuid: String? = nil) {
                self.page = page
                self.filter = filter
                self.sortBy = sortBy
                self.uuid = uuid
            }
        }

        public let operationName: String
        public let query: String
        public let variables: Variable?

        public init(operationName: String, query: String, variables: Variable?) {
            self.operationName = operationName
            self.query = query
            self.variables = variables
        }
    }

}
