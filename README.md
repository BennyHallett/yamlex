# Yamlex is a YAML parser.

It is currently implemented as a wrapper around [yamerl](https://github.com/yakaz/yamerl),
but will be moved to a pure Elixir implementation in the future.

## Usage

To parse a string containing YAML, use:

```Elixir
Yamlex.parse_string "---\\nkey: value"
```

To parse a file containing YAML, use:

```Elixir
Yamlex.parse_file "/path/to/file"
```