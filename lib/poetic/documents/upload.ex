defmodule Poetic.Documents.Upload do
  use Ecto.Schema
  import Ecto.Changeset

  schema "uploads" do
    field :content_type, :string
    field :filename, :string
    field :hash, :string
    field :size, :integer

    timestamps()
  end

  @doc false
  def changeset(upload, attrs) do
    upload
    |> cast(attrs, [:filename, :size, :content_type, :hash])
    |> validate_required([:filename, :size, :content_type, :hash])
  end
end
