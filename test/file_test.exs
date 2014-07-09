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

end
