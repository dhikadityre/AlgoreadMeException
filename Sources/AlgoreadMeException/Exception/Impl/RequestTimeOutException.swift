//
//  RequestTimeOutException.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

/// `RequestTimeOutException` is a subclass of `CoreException` and is used to capture
public class RequestTimeOutException: CoreException {
    public override init(
        module: String,
        code: String,
        layer: String,
        function: String = #function,
        message: String
    ) {
        super.init(
            module: module,
            code: code,
            layer: layer,
            function: function,
            message: message
        )
    }
    
    /// Convenience initializer that creates an `RequestTimeOutException` with a default code and message.
    public convenience init(
        module: String,
        layer: String,
        function: String = #function
    ) {
        let code = ExceptionCode.requestTimeOut.code
        let message = "Request Timeout"
        self.init(
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
        let description = "Terjadi kesalahan pada proses \(function) \(code)"
        
        return ExceptionInfo(
            title: title ?? "",
            description: description,
            exceptionDisplayType: displayType,
            sourceAppName: sourceAppName
        )
    }
}
