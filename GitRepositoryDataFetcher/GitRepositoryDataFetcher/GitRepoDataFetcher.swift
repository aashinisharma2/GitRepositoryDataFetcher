import Foundation

// MARK: GitRepoDataFetcher
// ========================
public class GitRepoDataFetcher {
    // MARK: Static methods
    // ========================
    public static func getDataOf(plateform: Platform , org: String,completionHandler: @escaping (GitHubRepoModel?) -> Void , failedWithError: @escaping (String) -> Void ) {
        let urlString = "https://api.github.com/search/repositories?q=\(plateform.rawValue)+org:\(org)"
        WebServices.shared.hitGetDataApi(url: urlString) { (data: GitHubRepoModel?) in
            completionHandler(data)
        } failedWithError: { error in
            failedWithError(error)
        }
    }
}
