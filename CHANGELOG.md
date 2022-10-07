## 5.5.1

##### Fixed
- Fixes an issue where content cards would not be properly removed when stopping a content card campaign on the dashboard and selecting the option _Remove card after the next sync (e.g. session start)_.

## 5.5.0

##### Added
- Adds support for host apps written in Objective-C.
  - Braze Objective-C types start either with `BRZ` or `Braze`, e.g.:
    - `Braze`
    - `BrazeDelegate`
    - `BRZContentCardRaw`
  - See our Objective-C [Examples](Examples/) project.
- Adds [`BrazeDelegate.braze(_:noMatchingTriggerForEvent:)`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/brazedelegate/braze(_:nomatchingtriggerforevent:)-8rt7y) which is called if no Braze in-app message is triggered for a given event.

##### Changed
- In `Braze.Configuration.Api`:
  - Renamed `SdkMetadata` to `SDKMetadata`.
  - Renamed `addSdkMetadata(_:)` to `addSDKMetadata(_:)`.
- In `Braze.InAppMessage`:
  - Renamed `Themes.default` to `Themes.defaults`.
  - Renamed `ClickAction.uri` to `ClickAction.url`.
  - Renamed `ClickAction.uri(_:useWebView:)` to `ClickAction.url(_:useWebView:)`.

## 5.4.0

##### Fixed
- Fixes an issue where `brazeBridge.logClick(button_id)` would incorrectly accept invalid `button_id` values like `""`, `[]`, or `{}`.

##### Added
- Adds support for Braze Action Deeplink Click Actions.

## 5.3.2

##### Fixed
- Fixes an issue preventing compilation when importing `BrazeUI` via SwiftPM in specific cases.
- Lowers `BrazeUI` minimum deployment target to iOS 10.0.

## 5.3.1

##### Fixed
- Fixes an HTML in-app message issue where clicking a link in an iFrame would launch a separate webview and close the message, instead of redirecting within the iFrame.
- Fixes the rounding of In-App Message modal view top corners.
- Fixes the display of modals and full screen in-app messages on iPads in landscape mode.

##### Added
- Adds two Example schemes:
  - InAppMessage-Custom-UI:
    - Demonstrates how to implement your own custom In-App Message UI.
    - Available on iOS and tvOS.
  - ContentCards-Custom-UI:
    - Demonstrates how to implement your own custom Content Card UI.
    - Available on iOS and tvOS.
- Adds [`Braze.InAppMessage.ClickAction.uri`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/inappmessage/clickaction/uri) for direct access.
- Adds [`Braze.ContentCard.ClickAction.uri`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/contentcard/clickaction/uri/) for direct access.
- Adds [`Braze.deviceId(queue:completion:)`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/deviceid(queue:completion:)) to retrieve the device identifier used by Braze.

## 5.3.0

##### Added
- Adds support for tvOS.
  - See the schemes _Analytics-tvOS_ and _Location-tvOS_ in the [Examples](Examples/) project.

## 5.2.0

##### Added
- Adds [Content Cards](https://www.braze.com/docs/user_guide/message_building_by_channel/content_cards) support.
  - See the [_Content Cards UI_](https://braze-inc.github.io/braze-swift-sdk/tutorials/braze/c2-contentcardsui) tutorial to get started.

##### Changed
- Raises `BrazeUI` minimum deployment target to iOS 11.0 to allow providing SwiftUI compatible Views.

## 5.1.0

##### Fixed
- Fixes an issue where the SDK would be unable to present a webview when the application was already presenting a modal view controller.
- Fixes an issue preventing a full device data update after changing the identified user.
- Fixes an issue preventing events and user attributes from being flushed automatically under certain conditions.
- Fixes an issue delaying updates to push notifications settings.

##### Added
- Adds CocoaPods support.
  - Pods:
    - [BrazeKit](https://cocoapods.org/pods/BrazeKit)
    - [BrazeUI](https://cocoapods.org/pods/BrazeUI)
    - [BrazeLocation](https://cocoapods.org/pods/BrazeLocation)
    - [BrazeNotificationService](https://cocoapods.org/pods/BrazeNotificationService)
    - [BrazePushStory](https://cocoapods.org/pods/BrazePushStory)
  - See [Examples/Podfile](Examples/Podfile) for example integration.
- Adds `Braze.UIUtils.activeTopmostViewController` to get the topmost view controller that is currently being presented by the application.

## 5.0.1

##### Fixed
- Fixes a race condition when retrieving the user's notification settings.
- Fixes an issue where duplicate data could be recorded after force quitting the application.

## 5.0.0 (Early Access)

We are excited to announce the initial release of the Braze Swift SDK!

The Braze Swift SDK is set to replace the [current Braze iOS SDK](https://github.com/Appboy/appboy-ios-sdk/) and provides a more modern API, simpler integration, and better performance.

### Current limitations

The following features are not supported yet:
- ~~Objective-C integration~~
  - Added in [5.5.0](#550)
- ~~tvOS integration~~
  - Added in [5.3.0](#530)
- News Feed
- ~~Content Cards~~
  - Added in [5.2.0](#520)