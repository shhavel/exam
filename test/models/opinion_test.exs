defmodule Exam.OpinionTest do
  use Exam.ModelCase

  alias Exam.Opinion

  @valid_attrs %{answer_id: 43, agree: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Opinion.changeset(%Opinion{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Opinion.changeset(%Opinion{}, @invalid_attrs)
    refute changeset.valid?
  end
end
