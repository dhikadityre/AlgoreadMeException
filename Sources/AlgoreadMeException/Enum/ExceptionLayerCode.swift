//
//  ExceptionLayerCode.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

public enum ExceptionLayerCode: String {
    case viewModel = "VM"
    case useCase = "UC"
    case repository = "R"
    case utility = "UT"
    case externalLayer = "EL"
    
    public var code: String {
        return self.rawValue
    }
}
