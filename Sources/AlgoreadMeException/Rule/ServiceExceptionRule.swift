//
//  ServiceExceptionRule.swift
//  AlgoreadMeException
//
//  Created by @algoreadme on 06/08/25.
//

public enum ServiceExceptionRule: Error {
    case noInternetConnection(NoInternetConnectionException)
    case requestTimeOut(RequestTimeOutException)
    case undefinedErrorResponse(UndefinedErrorResponseException)
    case apiError(ApiErrorException)
    case decodeFailed(DecodeFailedException)
    case generalException(GeneralException)
}
