defmodule WabanexWeb.Resolvers.Training do
  def create(%{input: params}, _ctx), do: Wabanex.Trainings.Create.call(params)
end
