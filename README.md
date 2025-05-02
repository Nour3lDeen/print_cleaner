# Print Cleaner

A simple Dart CLI tool to replace all `print` statements with `debugPrint` in your Flutter project files.

## Features
- Replace `print` statements with `debugPrint`
- Support for recursive search in directories

## Installation

To use the tool, simply add it as a dependency in your `pubspec.yaml` file.

1. Open your `pubspec.yaml` file and add `print_cleaner` as a dependency under `dev_dependencies` (since it's a development tool):

```yaml
dev_dependencies:
  print_cleaner: ^1.0.0  # You can specify the latest version here
```
2. Run flutter pub get to install the dependency.

```
flutter pub get
```
## Usage

Once you've added the library to your project, you can run the command directly from the terminal.

The tool will be available globally within your project. To replace print statements with debugPrint, run the following command:
```
dart run print_cleaner
```
This will run the tool on the current project directory and replace all print statements with debugPrint in all the .dart files recursively.


