defmodule Exam.ParticipationTest do
  use Exam.ModelCase

  alias Exam.Participation

  @valid_attrs %{mark: "some content", test_id: 42, evaluation: "120.5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Participation.changeset(%Participation{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Participation.changeset(%Participation{}, @invalid_attrs)
    refute changeset.valid?
  end
end
