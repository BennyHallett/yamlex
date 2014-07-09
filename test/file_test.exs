defmodule YamlexFileTest do
  use ExUnit.Case

  setup do
    on_exit fn -> Helper.Files.cleanup end
  end

  test "parse empty file returns empty list" do
    assert { :ok, [] } == Yamlex.parse_file Helper.Files.empty
  end

  test "parse file with header only" do
    assert { :ok, [:null] } == Yamlex.parse_file Helper.Files.header_newline
  end

  test "parse simple key value file" do
    assert { :ok, [[ {'some', 'more'}, {'test', 'data'} ]] } == Yamlex.parse_file Helper.Files.key_value
  end

  test "parse key with no value" do
    assert { :ok, [[ {'test', :null} ]] } == Yamlex.parse_file Helper.Files.key_no_value
  end

  test "parse list" do
    assert { :ok, [[ 'one', 'two', 'three' ]] } == Yamlex.parse_file Helper.Files.list
  end

  test "parse hierarchy" do
    assert  {:ok, [[ { 'root', [ {'one', 1}, {'two', 2} ] } ]] } == Yamlex.parse_file Helper.Files.hierarchy
  end

end
