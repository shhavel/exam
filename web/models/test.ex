defmodule Exam.Test do
  use Exam.Web, :model

  schema "tests" do
    field :locale, :string
    field :category, :string
    field :guide, :string
    field :name, :string
    has_many :questions, Exam.Question, on_delete: :delete_all

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:locale, :category, :name])
    |> cast_assoc(:questions)
    |> validate_required([:locale, :category, :name])
  end
end
