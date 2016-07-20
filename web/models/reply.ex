defmodule Exam.Reply do
  use Exam.Web, :model

  schema "replies" do
    belongs_to :participation, Exam.Participation
    belongs_to :question, Exam.Question
    has_many :opinions, Exam.Opinion, on_delete: :delete_all

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:question_id])
    |> cast_assoc(:opinions)
    |> validate_required([:question_id])
  end

  def answers_count(reply) do
    length reply.question.answers
  end

  def opinions_count(reply) do
    length reply.opinions
  end

  def correct?(reply) do
    answers_count(reply) == opinions_count(reply) && Enum.all?(reply.opinions, &(&1.agree == &1.answer.correct))
  end
end
