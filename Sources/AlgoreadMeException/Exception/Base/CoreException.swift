//
//  CoreException.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

/// A base class for all custom exceptions within the application.
///
/// `CoreException` conforms to the `Error` protocol and provides a standardized
/// structure to represent errors by including contextual metadata such as the
/// module, layer, function, and a unique error code. This helps in identifying,
/// logging, and debugging errors consistently across different layers of the app.
public class CoreException: Error {

    /// The module where the exception occurred (e.g., "SPMModule-Name" "Network", "User", "Database").
    let module: String

    /// A unique code representing the specific type of exception.
    public let code: String

    /// The layer in which the error originated (e.g., "Repository", "UseCase", "ViewModel", "Utility", "External Layer").
    let layer: String

    /// The function or method where the exception was thrown.
    let function: String

    /// A human-readable message describing the exception.
    public let message: String

    /// Initializes a new instance of `CoreException`.
    ///
    /// - Parameters:
    ///   - module: The name of the module where the exception occurred.
    ///   - code: A unique identifier for the exception type.
    ///   - layer: The application layer that raised the exception.
    ///   - function: The name of the function or method where the exception occurred.
    ///   - message: A descriptive message of the error.
    init(
        module: String,
        code: String,
        layer: String,
        function: String = #function,
        message: String
    ) {
        self.module = module
        self.code = code
        self.layer = layer
        self.function = function
        self.message = message
    }

    /// A detailed description of the exception, useful for logging or debugging.
    ///
    /// Format: `[Module] Layer -> Function: Code - Message`
    public var descriptionDetail: String {
        return "[\(module)][\(layer)] - \(function): \(code) - \(message)"
    }

    /// Converts this exception into an `ExceptionInfo` object,
    /// typically used for displaying error messages or logging.
    ///
    /// - Parameters:
    ///   - title: An optional title for the exception.
    ///   - sourceAppName: The name of the app/module where the error originated.
    ///   - displayType: The way the exception should be displayed (e.g., alert, toast).
    /// - Returns: An `ExceptionInfo` containing structured error details.
    public func toInfo(
        title: String?,
        sourceAppName: String,
        displayType: ExceptionDisplayType
    ) -> ExceptionInfo {
        return ExceptionInfo(
            title: title ?? "",
            description: descriptionDetail,
            exceptionDisplayType: displayType
        )
    }

    /// Generates a string-based unique identifier for this exception
    /// based on the combination of module, layer, function, and code.
    ///
    /// Useful for logging, tracking, or error monitoring systems.
    ///
    /// Format: `Module-Layer-Function-Code`
    /// - Returns: A string representing a generated error code.
    public func toGeneratedCode() -> String {
        return "\(module)-\(layer)-\(function)-\(code)"
    }
}
