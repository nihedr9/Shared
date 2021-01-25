//
//  File.swift
//  
//
//  Created by Nihed Majdoub on 25/01/2021.
//

import Foundation

public struct SendCodeRequestDTO: Codable {
    public var haphone_number: String
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
