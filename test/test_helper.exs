ExUnit.start()

defmodule Helper.Files do

  def empty do
    File.write test_file, ""
    test_file
  end

  def header_newline do
    File.write test_file, "---\n"
    test_file
  end

  def key_value do
    File.write test_file, """
    ---
    some: more
    test: data
    """
    test_file
  end

  def cleanup do
    File.rm test_file
  end

  defp test_file do
    "./test_file.yml"
  end

end
