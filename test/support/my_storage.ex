defmodule SlowpokeWaffleTest.MyStorage do
  @moduledoc false

  use SlowpokeWaffle,
    local_storage: SlowpokeWaffleTest.LocalStorage,
    inet_storage: SlowpokeWaffleTest.InetStorage
end
