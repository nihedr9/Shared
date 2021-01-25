//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

public struct ListingsDTO: Codable {
    public let items: [ItemDTO]
    public let totalCount: Int
    public let pageInfo: PageInfoDTO
    public let __typename: String
}

public struct ItemDTO: Codable {

    public struct MetaDataDTO: Codable {
        public let displayValue: String
        public let key: String
        public let label: String
    }

    public struct ItemLocationDTO: Codable {
        public struct LocationSubvidision: Codable {
            public let name: String
            public let subdivisionLevel2: LocationSubvidision?
        }

        public let lat: Int
        public let lon: Int
        public let postcode: String
        public let subdivisionId: String
        public let subdivisionLevel1: LocationSubvidision
    }

    public let uuid: String
    public let description: String
    public let title: String
    public let price: String
    public let currency: String
    public let createdAt: String

    public let thumbnail: String?
    public let bumpDate: String?
    public let status: String?
    public var categoryID: String?

    public var location: ItemLocationDTO

    public var category: CategoryDTO
    private var categories: [CategoryDTO]?

    public let user: UserDTO

    public let images: [ImageDTO]?
    public let metadata: [MetaDataDTO]?

    enum CodingKeys: String, CodingKey {
        case uuid
        case description
        case title
        case price
        case currency
        case thumbnail
        case createdAt
        case bumpDate
        case status
        case location
        case category
        case categories
        case user
        case images
        case metadata
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        uuid = try container.decode(String.self, forKey: .uuid)
        description = try container.decode(String.self, forKey: .description)
        title = try container.decode(String.self, forKey: .title)
        price = try container.decode(String.self, forKey: .price)
        currency = try container.decode(String.self, forKey: .currency)
        createdAt = try container.decode(String.self, forKey: .createdAt)

        thumbnail = try container.decodeIfPresent(String.self, forKey: .thumbnail)
        bumpDate = try container.decodeIfPresent(String.self, forKey: .bumpDate)
        status = try container.decodeIfPresent(String.self, forKey: .status)

        location = try container.decode(ItemLocationDTO.self, forKey: .location)
        
        if let id = try? container.decode(String.self, forKey: .category) {
            categoryID = id
        }
        if
            let categories = try? container.decode([CategoryDTO].self, forKey: .categories),
            let categoryDTO = categories.first
        {
            category = categoryDTO
        } else {
            category = try container.decode(CategoryDTO.self, forKey: .category)
        }

        user = try container.decode(UserDTO.self, forKey: .user)

        images = try container.decodeIfPresent([ImageDTO].self, forKey: .images)
        metadata = try container.decodeIfPresent([MetaDataDTO].self, forKey: .metadata)

    }
}
