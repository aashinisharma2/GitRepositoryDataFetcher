import XCTest
@testable import GitRepositoryDataFetcher

class GitRepositoryDataFetcherTests: XCTestCase {
    
    var platForm : Platform = .iOS
    var org: String = ""
    
    override func setUpWithError() throws {
        platForm = .iOS
        org = "rakutentech"
    }
    
    override func tearDownWithError() throws {
    }
    
    func test_JsonParing() throws {
        let bundle = Bundle(for: type(of: self))
        
        guard let url = bundle.url(forResource: "TestData", withExtension: "json") else {
            XCTFail("Missing file: TestData.json add it ")
            return
        }
        do {
            let json = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let parsedData = try decoder.decode(GitHubRepoModel.self, from: json)
            XCTAssertNotNil(parsedData)
            XCTAssertEqual(parsedData.totalCount, 12)
            XCTAssertFalse(parsedData.incompleteResults)
            XCTAssertNotNil(parsedData.items)
            XCTAssertEqual(parsedData.items.count, 12)
            XCTAssertEqual(parsedData.items[0].name, "android-miniapp")
            XCTAssertEqual(parsedData.items[0].itemDescription, "Mini App SDK for Android Apps")
            XCTAssertFalse(parsedData.items[0].itemPrivate)
            XCTAssertNotNil(parsedData.items[0].language)
            XCTAssertEqual(parsedData.items[0].language, "Kotlin")
            
        } catch (let error) {
            debugPrint(error)
            XCTFail()
        }
    }
}
