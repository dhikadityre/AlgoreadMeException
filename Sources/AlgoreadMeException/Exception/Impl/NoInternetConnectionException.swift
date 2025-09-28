//
//  NoInternetConnectionException.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

public class NoInternetConnectionException: CoreException {
    /// Initializes a new instance of `NoInternetConnectionException`.
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

    /// Convenience initializer that creates an `NoInternetConnectionException` with a default code and message.
    public convenience init(
        module: String,
        layer: String,
        function: String = #function
    ) {
        let code = ExceptionCode.noInternetConnection.code
        let message = "No Internet Connection"
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
        let description = "Tidak ada koneksi Internet \(code)"

        return ExceptionInfo(
            title: title ?? "",
            description: description,
            exceptionDisplayType: displayType,
            sourceAppName: sourceAppName
        )
    }
}
