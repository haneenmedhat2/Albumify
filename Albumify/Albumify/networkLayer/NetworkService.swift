//
//  NetworkService.swift
//  Albumify
//
//  Created by Haneen Medhat on 31/12/2024.
//

import Foundation
import Moya

enum NetwrokService {
    case getUser
    case getUserAlbums(userId:Int)
    case getPhotos(albumId:Int)
}

extension NetwrokService : TargetType {

    var baseURL: URL {
        guard let url = URL(string: Constant.url) else { fatalError("Invalid URL") }
        return url
    }

    var path: String {
        switch self {
        case .getUser :
            return "/users"
        case .getUserAlbums(userId: _):
            return "/albums"
        case .getPhotos(albumId: _):
            return "/photos"
        }
    }

    var method: Moya.Method {
        return .get
    }

    var task: Task {
        return .requestPlain
    }

    var headers: [String : String]? {
        return ["Content-Type" : "application/json"]
    }
}

