defmodule YamlexFileTest do
  use ExUnit.Case

  setup do
    on_exit fn -> Helper.Files.cleanup end
  end

  test "parse empty file returns empty list" do
    assert { :ok, [] } == Yamlex.parse_file Helper.Files.empty
  end

end
