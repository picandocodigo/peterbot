defmodule PeterBotTest do
  use ExUnit.Case
  doctest PeterBot

  test "greets the world" do
    assert PeterBot.hello() == :world
  end
end
