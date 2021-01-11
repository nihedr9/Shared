//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 11/01/2021.
//

import Foundation

public struct ImageDTO: Codable {
    public let url: String
}

public struct UserDTO: Codable {

    public struct ContactPhoneDTO: Codable {
        public let e164: String
        public let national: String
    }

    public let uuid: String
    public let displayName: String
    public let email: String?
    public let firstName: String?
    public let lastName: String?
    public let memberSince: String?
    public let contactPhone: ContactPhoneDTO?
    public let avatar: ImageDTO?
    public let __typename: String
}
