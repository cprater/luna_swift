//
//  Result.swift
//  LunarTracking
//
//  Created by Christopher Prater on 4/12/17.
//  Copyright © 2017 Christopher Prater. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case failure(Error)
}

enum NetworkError: Error {
    case badStatusCode(statusCode: Int)
    case badResponse
    case badJSON
    case noData
    case offline
    case other(Error?)
}
