//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

struct ListingsDTO: Codable {
    let items: [ItemDTO]
    let totalCount: Int
    let pageInfo: PageInfoDTO
    let __typename: String
}

struct ItemDTO: Codable {

    struct MetaDataDTO: Codable {
        let displayValue: String
        let key: String
        let label: String
    }

    let uuid: String
    let description: String
    let title: String
    let price: String
    let currency: String
    let createdAt: String

    let thumbnail: String?
    let bumpDate: String?
    let status: String?
    var categoryID: String?

    var category: CategoryDTO
    private var categories: [CategoryDTO]?

    let user: UserDTO

    let images: [ImageDTO]?
    let metadata: [MetaDataDTO]?

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
        case category
        case categories
        case user
        case images
        case metadata
    }

    init(from decoder: Decoder) throws {
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
