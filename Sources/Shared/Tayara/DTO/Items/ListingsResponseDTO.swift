//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 08/01/2021.
//

import Foundation

extension Tayara {

    public struct ListingsResponseDTO: Codable {
        public struct DataDTO: Codable {
            public let listings: ListingsDTO
        }
        public let data: DataDTO
    }


    public struct ListingResponseDTO: Codable {
        public struct DataDTO: Codable {
            public let listing: ListingsDTO.ItemDTO?
        }
        public let data: DataDTO
    }


    public struct ListingsDTO: Codable {

        public struct ItemDTO: Codable {
            public struct MetaDataDTO: Codable {
                public let displayValue: String
                public let key: String
                public let label: String
            }

            public struct ItemLocationDTO: Codable {
                public struct LocationSubvidisionLevel1: Codable {
                    public struct LocationSubvidisionLevel2: Codable {
                        public let name: String
                    }

                    public let name: String
                    public let subdivisionLevel2: LocationSubvidisionLevel2
                }

                public let lat: Double
                public let lon: Double
                public let postcode: String?
                public let subdivisionId: String
                public let subdivisionLevel1: LocationSubvidisionLevel1
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

            public var category: CategoriesResponseDTO.CategoryDTO
            private var categories: [CategoriesResponseDTO.CategoryDTO]?

            public let user: UserProfileResponse.UserDTO

            public let images: [UserProfileResponse.ImageDTO]?
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
                    let categories = try? container.decode([CategoriesResponseDTO.CategoryDTO].self, forKey: .categories),
                    let categoryDTO = categories.first
                {
                    category = categoryDTO
                } else {
                    category = try container.decode(CategoriesResponseDTO.CategoryDTO.self, forKey: .category)
                }

                user = try container.decode(UserProfileResponse.UserDTO.self, forKey: .user)

                images = try container.decodeIfPresent([UserProfileResponse.ImageDTO].self, forKey: .images)
                metadata = try container.decodeIfPresent([MetaDataDTO].self, forKey: .metadata)

            }
        }


        public let items: [ItemDTO]
        public let totalCount: Int
        public let pageInfo: PageInfoDTO
        public let __typename: String
    }



}
