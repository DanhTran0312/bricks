# Blue Print brick 🧱

## Set up 🛠️

Download the bricks folder from GitHub

Make sure you have [mason_cli](https://pub.dev/packages/mason/install) installed. If not, run the following command:

```bash
# Install with dart
dart pub global activate mason_cli
```

## Installation 📦

```bash
# Install locally
mason add blue_print --path [path/to/bricks/blue_print]]

# Install globally
mason add -g blue_print --path [path/to/bricks/blue_print]
```

## Usage 🚀

```bash
mason make blue_print
```

## Variables 📝

| Name          | Description                    | Default                      |
| ------------- | ------------------------------ | ---------------------------- |
| `name`        | The name of the project        | `my_app`                     |
| `description` | The description of the project | `An awesome Flutter Project` |
| `org`         | The organization name          | `com.example`                |
