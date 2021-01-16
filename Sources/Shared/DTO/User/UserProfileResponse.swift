//
//  UserProfileResponse.swift
//  
//
//  Created by Nihed Majdoub on 16/01/2021.
//

import Foundation

public struct UserProfileResponse: Codable {
    public struct DataDTO: Codable {
        public let profile: UserDTO
    }
    public let data: DataDTO
}
