defmodule Wabanex.Users.Get do
  alias Ecto.UUID
  alias Wabanex.{Repo, User}

  def call(id) do
    with {:ok, uuid} <- UUID.cast(id),
         user <- Repo.get(User, uuid) do
      user
    else
      :error -> {:error, "Invalid UUID"}
      nil -> {:error, "User not found"}
    end
  end
end
