import Foundation


struct EsvApi {
    
    private static let apiKey = "" // TODO: Add your API key here !!!

    private static let baseUrl = "https://api.esv.org/v3/passage"

    /// Search the ESV API for a given term.
    ///
    /// Example usage:
    ///
    /// ```
    ///  EsvApi.search("God") { (results, error) in
    ///      ...
    ///  }
    /// ```
    ///
    /// - parameter query: The String to search for.
    /// - parameter completion: A callback which returns a list of SearchResults if successful, or an error String if unsuccessful.
    ///
    static func search(_ query: String, completion: @escaping (_ results: [SearchResult]?, _ error: String?) -> Void) {
        let url = URL.init(string: "\(baseUrl)/search/?q=\(query)&page-size=100")!
        var request = URLRequest(url: url)
        request.addValue(apiKey, forHTTPHeaderField: "Authorization")

        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let jsonResponse = try JSONDecoder().decode(SearchResultsJson.self, from: data)
                completion(jsonResponse.results, nil)
            }
            catch {
                completion(nil, "Error loading data: \(error)")
            }
        }
        .resume()
    }
    
}
