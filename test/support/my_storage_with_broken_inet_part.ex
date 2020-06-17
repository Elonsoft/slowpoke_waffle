defmodule SlowpokeWaffleTest.MyStorageWithBrokenInetPart do
  @moduledoc false

  use SlowpokeWaffle,
    local_storage: SlowpokeWaffleTest.LocalStorage,
    inet_storage: SlowpokeWaffleTest.BrokenInetStorage
end
