defmodule Yamlex do

  def parse_string(text) when text == "---" do
    { :error, :parse }
  end

  def parse_string(text) do
    { :ok, :yamerl_constr.string(text) }
  end

  def parse_file(path) do
    { :ok, :yamerl_constr.file(path) }
  end

end
