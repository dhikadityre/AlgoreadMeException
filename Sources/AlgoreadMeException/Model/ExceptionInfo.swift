//
//  ExceptionInfo.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

public struct ExceptionInfo: Error, CustomStringConvertible {
    let title: String
    public let description: String
    let exceptionDisplayType: ExceptionDisplayType
    let sourceAppName: String
    
    public init(
        title: String,
        description: String,
        exceptionDisplayType: ExceptionDisplayType,
        sourceAppName: String = ""
    ) {
        self.title = title
        self.description = description
        self.exceptionDisplayType = exceptionDisplayType
        self.sourceAppName = sourceAppName
    }
}
