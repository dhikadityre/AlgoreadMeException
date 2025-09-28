//
//  ApiErrorException.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

/// An exception representing an error that occurred during an API call.
///
/// `ApiErrorException` is a subclass of `CoreException` and is used to capture
/// and describe backend response errors, including the HTTP `statusCode`,
/// the `responseBody`, and contextual information such as the module, layer,
/// and function where the error occurred.
public class ApiErrorException: CoreException {

    /// The HTTP status code returned from the API response.
    public let statusCode: Int

    /// The response body returned from the API, typically containing error details.
    public let responseBody: [String: Any]

    /// Initializes a new instance of `ApiErrorException`.
    public init(
        statusCode: Int,
        responseBody: [String: Any],
        module: String,
        code: String,
        layer: String,
        function: String = #function,
        message: String
    ) {
        self.statusCode = statusCode
        self.responseBody = responseBody
        super.init(
            module: module,
            code: code,
            layer: layer,
            function: function,
            message: message
        )
    }

    /// Convenience initializer that creates an `ApiErrorException` with a default code and message.
    public convenience init(
        statusCode: Int,
        responseBody: [String: Any],
        module: String,
        layer: String,
        function: String = #function
    ) {
        let code = ExceptionCode.apiError.code
        let message = "API Error Exception"
        self.init(
            statusCode: statusCode,
            responseBody: responseBody,
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
        let description = "\(statusCode) - \(message) di proses \(function) \(code)"

        return ExceptionInfo(
            title: title ?? "",
            description: description,
            exceptionDisplayType: displayType,
            sourceAppName: sourceAppName
        )
    }
}
