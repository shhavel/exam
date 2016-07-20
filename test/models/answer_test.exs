defmodule Exam.AnswerTest do
  use Exam.ModelCase

  alias Exam.Answer

  @valid_attrs %{correct: true, question_id: 42, text: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Answer.changeset(%Answer{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Answer.changeset(%Answer{}, @invalid_attrs)
    refute changeset.valid?
  end
end
