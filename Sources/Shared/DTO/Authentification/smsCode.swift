//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 25/01/2021.
//

import Foundation

public struct SendCodeRequestDTO: Codable {
    public var phone_number: String
}

public struct SendCodeResponseDTO: Codable {
    public let codeSent: Bool
    public let publicChallenge: String
    public let newUser: Bool

    enum CodingKeys: String, CodingKey {
        case codeSent = "code_sent"
        case publicChallenge = "public_challenge"
        case newUser = "new_user"
    }
}

public struct ConfirmCodeRequestDTO: Codable {
    public let phone_number: String
    public let public_challenge: String
    public let code: String
}

public struct ConfirmCodeResponseDTO: Codable {
    public let auth_token: String
}
