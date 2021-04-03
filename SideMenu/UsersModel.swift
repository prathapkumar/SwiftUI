//
//  ListModel.swift
//  SideMenu
//
//  Created by Prathap on 01/04/21.
//

import Foundation
import Networking

// MARK: - ListModel
struct UsersModel: Codable , NetworkingJSONDecodable {
    let page, perPage, total, totalPages: Int
    var data: [Datum]
    let support: Support
    let id = UUID()

    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data, support
    }
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}


//extension ListModel: NetworkingJSONDecodable { }

