//
//  SearchItemsModel.swift
//  
//
//  Created by Nihed Majdoub on 02/02/2021.
//

import Foundation

public struct SearchItemsModel: Codable {

    public struct Order: Codable {
        public let orderBy: String
        public let acsending: Bool

        public init(orderBy: String, acsending: Bool) {
            self.orderBy = orderBy
            self.acsending = acsending
        }
    }

    public let query: String
    public let order: Order
    public let categoryID: String?
    public let regionID: String?

    public init(query: String, order: Order, categoryID: String?, regionID: String?) {
        self.query = query
        self.order = order
        self.categoryID = categoryID
        self.regionID = regionID
    }
}
