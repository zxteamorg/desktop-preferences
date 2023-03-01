# Desktop Preferences

GUI tools written in Flutter to manage desktop preferences like WiFi, Bluetooth, Display etc.

## Getting Started

```shell
git clone --single-branch --branch master git@github.com:zxteamorg/desktop-preferences.git
cd desktop-preferences
~/opt/flutter/3.3.6-x64/bin/flutter pub get
~/opt/flutter/3.3.6-x64/bin/flutter run --target=bin/main.dart --dart-entrypoint-args --tool=bluetooth-popup
~/opt/flutter/3.3.6-x64/bin/flutter run --target=bin/main.dart --dart-entrypoint-args --tool=display-popup
~/opt/flutter/3.3.6-x64/bin/flutter run --target=bin/main.dart --dart-entrypoint-args --tool=wireless-popup
```

## Development

### System requirements

#### Linux

TBD

#### MacOS

1. See [Flutter installation notes](https://docs.flutter.dev/get-started/install/macos) for MacOS
1. Install [Xcode Developer Tools](https://apps.apple.com/us/app/xcode/id497799835)
1. Useful commands
	```shell
	sudo softwareupdate --install-rosetta --agree-to-license
	sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
	sudo xcodebuild -license
	```

#### Windows

TBD

### Tool Class Diagram

```mermaid
classDiagram
	ToolWidget --> ToolController : use
	ToolController *-- ToolService: bind
	ToolService <|-- ToolServiceStub : implements
	ToolService <|-- ToolServiceImpl : implements
```
