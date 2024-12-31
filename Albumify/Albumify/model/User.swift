//
//  User.swift
//  Albumify
//
//  Created by Haneen Medhat on 31/12/2024.
//

import Foundation

struct User : Codable {
    let id : Int?
    let name : String?
    let address : Address?
}

struct Address: Codable {
    let street : String?
    let suite : String?
    let city : String?
    let zipcode : String?
}
