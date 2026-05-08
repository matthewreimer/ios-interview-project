import Foundation

struct SearchResults {
    var page: Int
    var totalResults: Int
    var results: [SearchResult]
    var totalPages: Int
}

extension SearchResults: Codable {
    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case results
        case totalPages = "total_pages"
    }
}
