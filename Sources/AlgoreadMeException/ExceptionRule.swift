//
//  ExceptionRule.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 05/08/25.
//

import Foundation

/*
protocol ExceptionRule {
    func match(_ error: Error) -> Bool
    // func map(_ error: Error) -> CoreException
}


struct CoreException: Error, CustomStringConvertible {
    let module: String
    let code: String
    let layer: String
    let function: String
    let message: String

    var description: String {
        return "[\(module)] \(layer).\(function) - \(code): \(message)"
    }
}


enum ExceptionLayerCode: String {
    case repository
    case useCase
    case viewModel
}


struct NoInternetConnectionException: ExceptionRule {
    let module, layer, function: String

    static func rule(module: String, layer: String, function: String) -> NoInternetConnectionException {
        return .init(module: module, layer: layer, function: function)
    }

    func match(_ error: Error) -> Bool {
        let nsError = error as NSError
        return nsError.domain == NSURLErrorDomain && nsError.code == NSURLErrorNotConnectedToInternet
    }

    func map(_ error: Error) -> CoreException {
        return CoreException(
            module: module,
            code: "NO_INTERNET",
            layer: layer,
            function: function,
            message: "No internet connection"
        )
    }
}

struct RequestTimeOutException: ExceptionRule {
    let module, layer, function: String

    static func rule(module: String, layer: String, function: String) -> RequestTimeOutException {
        return .init(module: module, layer: layer, function: function)
    }

    func match(_ error: Error) -> Bool {
        let nsError = error as NSError
        return nsError.domain == NSURLErrorDomain && nsError.code == NSURLErrorTimedOut
    }

    func map(_ error: Error) -> CoreException {
        return CoreException(
            module: module,
            code: "TIMEOUT",
            layer: layer,
            function: function,
            message: "Request timed out"
        )
    }
}

struct DecodeFailedException: ExceptionRule {
    let module, layer, function: String

    static func rule(module: String, layer: String, function: String) -> DecodeFailedException {
        return .init(module: module, layer: layer, function: function)
    }

    func match(_ error: Error) -> Bool {
        return error is DecodingError
    }

    func map(_ error: Error) -> CoreException {
        return CoreException(
            module: module,
            code: "DECODE_FAILED",
            layer: layer,
            function: function,
            message: "Failed to decode response"
        )
    }
}

struct UndefinedErrorResponseException: ExceptionRule {
    let module, layer, function: String

    static func rule(module: String, layer: String, function: String) -> UndefinedErrorResponseException {
        return .init(module: module, layer: layer, function: function)
    }

    func match(_ error: Error) -> Bool {
        return true // fallback jika tidak match apapun
    }

    func map(_ error: Error) -> CoreException {
        return CoreException(
            module: module,
            code: "UNDEFINED",
            layer: layer,
            function: function,
            message: "An unknown error occurred"
        )
    }
}

func processApiCall<T>(
    module: String,
    function: String,
    call: @escaping () async throws -> T
) async throws -> T {
    let layer = ExceptionLayerCode.repository.rawValue
    let rules: [ExceptionRule] = [
        NoInternetConnectionException.rule(module: module, layer: layer, function: function),
        RequestTimeOutException.rule(module: module, layer: layer, function: function),
        DecodeFailedException.rule(module: module, layer: layer, function: function),
        UndefinedErrorResponseException.rule(module: module, layer: layer, function: function)
    ]

    do {
        return try await call()
    } catch {
        for rule in rules {
            if rule.match(error) {
                throw rule.map(error)
            }
        }
        throw error // fallback
    }
}
*/
