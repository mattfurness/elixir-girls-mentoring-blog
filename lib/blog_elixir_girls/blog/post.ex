defmodule BlogElixirGirls.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias BlogElixirGirls.Blog.Post


  schema "posts" do
    field :body, :string
    field :title, :string

    has_many :comments, BlogElixirGirls.Blog.Comment

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
