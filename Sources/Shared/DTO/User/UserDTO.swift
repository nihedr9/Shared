//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 11/01/2021.
//

import Foundation

struct ImageDTO: Codable {
    let url: String
}

struct UserDTO: Codable {

    struct ContactPhoneDTO: Codable {
        let e164: String
        let national: String
    }

    let uuid: String
    let displayName: String
    let email: String?
    let firstName: String?
    let lastName: String?
    let memberSince: String?
    let contactPhone: ContactPhoneDTO?
    let avatar: ImageDTO?
    let __typename: String
}
