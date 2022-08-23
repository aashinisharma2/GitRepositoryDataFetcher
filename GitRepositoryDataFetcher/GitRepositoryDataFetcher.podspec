Pod::Spec.new do |spec|

  spec.name         = "GitRepositoryDataFetcher"
  spec.version      = "0.0.1"
  spec.summary      = "GitRepositoryDataFetcher fetched a few details of a given repo and platefrom."
  spec.description  = "GitRepositoryDataFetcher fetched a few details ( such as name , privacy status ) of a given repo and platefrom."
  spec.homepage     = "https://github.com/aashinisharma2/GitRepositoryDataFetcher.git"
  spec.license      = "MIT"
  spec.author             = { "Aashini Sharma" => "aashini.sharma@appinventiv.com" }
  spec.platform     = :ios, "15.4"
  
  spec.source       = { :git => "https://github.com/aashinisharma2/GitRepositoryDataFetcher.git", :tag => spec.version.to_s }
  spec.source_files  = "GitRepositoryDataFetcher/**/*.{swift}"
  spec.exclude_files = 'GitRepositoryDataFetcher/GitRepositoryDataFetcherTests/**/*.{*}'
  spec.swift_version = "5.6"
end
