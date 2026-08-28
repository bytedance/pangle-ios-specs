# Pangle iOS Specs

This repository hosts CocoaPods podspecs for Pangle iOS SDK releases.

It is a CocoaPods Specs repository only. The SDK binaries are distributed through
the release URLs declared in each podspec, and are not stored in this repository.

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

If you use an internal mirror of this repository, replace the first `source`
with the mirror URL.

Then run:

```bash
pod install --repo-update
```

## Available Pods

The repository may contain multiple Pangle-related podspecs, including stable
and beta releases. Pin a version in production builds when deterministic
dependency resolution is required:

```ruby
pod 'Ads-Global', '8.3.0.7'
```

## Repository Layout

Each pod is organized by name and version:

```text
<PodName>/
  <Version>/
    <PodName>.podspec
```

Published versions should be treated as immutable. If a release needs to change,
publish a new version instead of replacing an existing artifact.

## License

The contents of this repository are licensed under the MIT License. The Pangle
iOS SDK binaries referenced by the podspecs may be subject to separate license
terms included with each SDK release.
