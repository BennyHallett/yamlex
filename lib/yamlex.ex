defmodule Yamlex do

  @moduledoc """
  Yamlex is a YAML parser.

  It is currently implemented as a wrapper around [yamerl](https://github.com/yakaz/yamerl),
  but will be moved to a pure Elixir implementation in the future.

  ## Usage

  To parse a string containing YAML, use:
  
      Yamlex.parse_string "---\\nkey: value"

  To parse a file containing YAML, use:
  
      Yamlex.parse_file "/path/to/file"

  ## Note

  `Yamlex.parse_file/1` will hang if the file contains just the YAML header, `---`, and no
  other characters (i.e no trailing newline). This issue is handled in `Yamlex.parse_string/1`
  but not when parsing files.
  """

  def parse_string(text) when text == "---" do
    { :error, :parse }
  end
  
  @doc """
  Parse a YAML string and convert it into a list of tuples

  ## Usage

      Yamlex.parse_string "---\\ntest: data\\none: 1"
  """
  def parse_string(text) do
    { :ok, :yamerl.decode(text) }
  end

  @doc """
  Parse a file containing a YAML document and convert it into a list of tuples

  ## Usage

      Yamlex.parse_string "/path/to/file"
  """
  def parse_file(path) do
    { :ok, :yamerl.decode_file(path) }
  end

end
