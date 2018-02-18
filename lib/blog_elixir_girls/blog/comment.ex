defmodule BlogElixirGirls.Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias BlogElixirGirls.Blog.Comment


  schema "comments" do
    field :content, :string
    field :name, :string

    belongs_to :post, BlogElixirGirls.Blog.Post, foreign_key: :post_id

    timestamps()
  end

  @doc false
  def changeset(%Comment{} = comment, attrs) do
    comment
    |> cast(attrs, [:name, :content, :post_id])
    |> validate_required([:name, :content, :post_id])
  end
end
