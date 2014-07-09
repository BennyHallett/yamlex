defmodule YamlexStringTest do
  use ExUnit.Case

  test "parse empty string returns empty list" do
    assert { :ok, [] } == Yamlex.parse_string ""
  end

  test "parse only header string fails" do
    assert { :error, :parse } == Yamlex.parse_string "---"
  end

  test "parse header with newline returns null in list" do
    assert { :ok, [:null] } == Yamlex.parse_string "---\n"
    # this should actually return nil
  end

  test "parse simple key/value string should return list of tuples" do
    assert { :ok, [[ {'this', 'is'}, {'a', 'test'} ]] } == Yamlex.parse_string(
    """
    ---
    this: is
    a: test
    """)
  end

  test "parse keys with no value" do
    assert { :ok, [[ {'test', :null} ]] } == Yamlex.parse_string(
    """
    ---
    test:
    """)
  end

  test "parse list" do
    assert { :ok, [[ 'one', 'two', 'three' ]] } == Yamlex.parse_string(
    """
    ---
    - one
    - two
    - three
    """)
  end

end
