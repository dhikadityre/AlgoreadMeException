//
//  UndefinedErrorResponseException.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

/// `UndefinedErrorResponseException` is a subclass of `CoreException` and is used to capture
public class UndefinedErrorResponseException: CoreException {
    
    /// The HTTP status code returned from the API response.
    public let statusCode: Int
    
    /// Initializes a new instance of `UndefinedErrorResponseException`
    init(
        statusCode: Int,
        module: String,
        code: String,
        layer: String,
        function: String = #function,
        message: String
    ) {
        self.statusCode = statusCode
        super.init(
            module: module,
            code: code,
            layer: layer,
            function: function,
            message: message
        )
    }
    
    /// Convenience initializer that creates an `UndefinedErrorResponseException` with a default code and message.
    public convenience init(
        satusCode: Int,
        module: String,
        layer: String,
        function: String = #function
    ) {
        let code = ExceptionCode.undefinedErrorResponse.code
        let message = "Undefined Error Response Exception"
        self.init(
            statusCode: satusCode,
            module: module,
            code: code,
            layer: layer,
            function: function,
            message: message
        )
    }
    
    public override func toInfo(
        title: String?,
        sourceAppName: String,
        displayType: ExceptionDisplayType
    ) -> ExceptionInfo {
        let description = "\(statusCode) Terjadi kesalahan pada proses \(function) \(code)"
        
        return ExceptionInfo(
            title: title ?? "",
            description: description,
            exceptionDisplayType: displayType,
            sourceAppName: sourceAppName
        )
    }
}
