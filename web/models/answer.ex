defmodule Exam.Answer do
  use Exam.Web, :model

  schema "answers" do
    belongs_to :question, Exam.Question
    field :text, :string
    field :correct, :boolean, default: false
    field :delete, :boolean, virtual: true

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text, :correct, :delete])
    |> foreign_key_constraint(:question_id)
    |> validate_required([:text, :correct])
    |> maybe_mark_for_deletion()
  end

  defp maybe_mark_for_deletion(changeset) do
    # If delete was set and it is true, let's change the action
    if get_change(changeset, :delete) do
      %{changeset | action: :delete}
    else
      changeset
    end
  end
end
