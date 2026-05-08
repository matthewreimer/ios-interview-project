import Foundation

struct SearchResult {
    var reference: String
    var content: String
}

extension SearchResult: Codable {}
