defmodule YamlexTest do
  use ExUnit.Case

  test "test parse empty string returns empty list" do
    assert { :ok, [] } == Yamlex.parse_string ""
  end

  test "test parse only header string fails" do
    assert { :error, :parse } == Yamlex.parse_string "---"
  end

end
