defmodule ListsEQC do
  use ExUnit.Case
  use EQC.ExUnit

  # property "SUPPOSED TO FAIL - reversing a list twice yields the original list" do
  #   forall l <- list(int()) do
  #     ensure(l |> Enum.reverse() == l)
  #   end
  # end

  @tag numtests: 100
  property "SUPPOSED TO PASS - reversing a list twice yields the original list" do
    forall l <- list(int()) do
      IO.puts("#{inspect(l)}")
      ensure(l |> Enum.reverse() |> Enum.reverse() == l)
    end
  end
end
