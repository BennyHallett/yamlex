ExUnit.start()

defmodule Helper.Files do

  def empty do
    File.write(test_file, "")
    test_file
  end

  def cleanup do
    File.rm test_file
  end

  defp test_file do
    "./test_file.yml"
  end

end
