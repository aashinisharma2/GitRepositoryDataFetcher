import Foundation

// MARK: - GitHubRepoModel
 public  struct GitHubRepoModel: Decodable {
    public let totalCount: Int
    public let incompleteResults: Bool
    public let items: [Item]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
        case items
    }
}

// MARK: - Item
public struct Item: Decodable {
    public let name: String
    public let itemPrivate: Bool
    public let itemDescription: String?
    public let language: String?

    enum CodingKeys: String, CodingKey {
        case name
        case itemPrivate = "private"
        case language
        case itemDescription = "description"
    }
}

// MARK: Available plateform
public enum Platform: String {
    case iOS = "ios"
    case android
}
