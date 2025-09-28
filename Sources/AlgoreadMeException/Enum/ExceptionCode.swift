//
//  ExceptionCode.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

enum ExceptionCode: String {
    // Common
    case general = "GEN"
    case decodeFailed = "DF"
    
    // Local Storage & File System
    case localStorageCorruption = "LCR"
    case localStorageAlreadyOpened = "LAO"
    case localStorageClosed = "LCD"
    case readOnlyFileSystem = "ROF"
    case storageFull = "SF"
    
    // Network
    case noInternetConnection = "NIC"
    case requestTimeOut = "RTO"
    case pollingTimeOut = "PTO"
    case retryExceeded = "RE"
    
    // Server
    case apiError = "AE"
    case undefinedErrorResponse = "UER"
    
    // Media
    case streamUploadFailed = "SUF"
    case uploadInProgress = "UIP"
    
    // Permission
    case permissionDenied = "PMD"
    
    var code: String {
        return self.rawValue
    }
}
