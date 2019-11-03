import Foundation

public enum ParameterType {
    case queryItem
    case json
    case form
}

public protocol Request {
    associatedtype Response: Decodable

    var endPoint: URL { get }
    var path: String { get }

    var parameters: [String: String] { get }
    var parameterType: ParameterType { get }

    var httpMethod: HTTPMethod { get }
}