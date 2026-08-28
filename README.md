# Pangle iOS Specs

This repository hosts CocoaPods podspecs for Pangle iOS SDK releases.

It is a CocoaPods Specs repository only. The SDK binaries are distributed through
the release URLs declared in each podspec, and are not stored in this repository.

For the full iOS SDK integration guide, see
[Integrate Pangle SDK for iOS](https://www.pangleglobal.com/integration/integrate-pangle-sdk-for-ios).

## Usage

Add this Specs repository before the official CocoaPods CDN source in your
`Podfile`:

```ruby
source 'https://github.com/bytedance/pangle-ios-specs.git'
source 'https://cdn.cocoapods.org/'

target 'YourApp' do
  pod 'Ads-Global'
end
```

Then run:

```bash
pod install --repo-update
```

## Available Pods

This repository provides CocoaPods podspecs for multiple Pangle iOS business
integrations, including stable SDK releases, beta releases, and
mediation-related packages. Choose the pod that matches your integration path
and pin a version in production builds when deterministic dependency resolution
is required:

```ruby
pod 'Ads-Global', '8.3.0.7'
```
