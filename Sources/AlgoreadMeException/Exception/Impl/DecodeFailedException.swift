//
//  DecodeFailedException.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

public class DecodeFailedException: CoreException {
    public let underlying: Error
    
    /// Initializes a new instance of `DecodeFailedException`.
    public init(
        underlying: Error,
        module: String,
        code: String,
        layer: String,
        function: String = #function,
        message: String
    ) {
        self.underlying = underlying
        super.init(
            module: module,
            code: code,
            layer: layer,
            function: function,
            message: message
        )
    }
    
    /// Convenience initializer that creates an `DecodeFailedException` with a default code and message.
    public convenience init(
        underlying: Error,
        module: String,
        layer: String,
        function: String = #function
    ) {
        let code = ExceptionCode.decodeFailed.code
        let message = "Failed encode/decode: \(underlying.localizedDescription)"
        self.init(
            underlying: underlying,
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
        let description = "Terjadi kesalahan pada proses enkoding/dekoding ketika melakukan \(function) \(code)"

        return ExceptionInfo(
            title: title ?? "",
            description: description,
            exceptionDisplayType: displayType,
            sourceAppName: sourceAppName
        )
    }
}
