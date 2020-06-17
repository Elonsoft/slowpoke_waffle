defmodule SlowpokeWaffleTest.MyImage do
  @moduledoc false

  use Waffle.Definition

  @versions [:original]

  def __storage, do: SlowpokeWaffleTest.MyStorage

  def transform(:original, _) do
    {:convert, "-thumbnail 700x700\> -format png", :png}
  end

  def filename(version, {file, _scope}) do
    "#{file.file_name}_#{version}"
  end
end
