# ``GitRepositoryDataFetcher``
Its a data fetcher which provides  data of  given repo and its platform. 

[![Platform](https://img.shields.io/badge/swift-5.6-orange)](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/)
![Xcode](https://img.shields.io/badge/Xcode-13.3.1-blue)

## Installation

### Using [CocoaPods](https://cocoapods.org/):

Simply add the following line to your Podfile:

```ruby
pod 'GitRepositoryDataFetcher'
```
This will download the GitRepoDataFetcher binaries in `Pods/` during your next
`pod install`.

## Requirements

* Xcode 13.3.1+
* Swift 5.6+

## Usage
1. Once Pod is added test it using import GitRepoDataFetcher in yourVC.
2. Now we can call static function of GitRepoDataFetcher Class.
 
 The simplest use-case is getting data by providing platForm and orginization name.
 
 ```swift
 import GitRepositoryDataFetcher
 
 let org = "xyz"
 let platform = Platform.iOS
 
 GitRepoDataFetcher.getDataOf(plateform: platform, org: org) { retrivedData in
    //  use the retrived information. 
 } failedWithError: { error in
    // error occure
 }
 ```
GitRepositoryDataFetcher will download the info for the organization and platform. Once
 done with the API call, we will have a callback with data ( `GitHubRepoModel` ) in
 the `completionHandler`. If any error occurs during this we will have a callback in
 the `failedWithError` block where we can manage accordingly.

