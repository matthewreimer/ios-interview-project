import Foundation

struct SearchResultsJson: Decodable {
    var page: Int
    var total_results: Int
    var results: [SearchResult]
    var total_pages: Int
}
