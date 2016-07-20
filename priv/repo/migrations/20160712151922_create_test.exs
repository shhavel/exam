defmodule Exam.Repo.Migrations.CreateTest do
  use Ecto.Migration

  def change do
    create table(:tests) do
      add :locale, :string, default: "uk", null: false
      add :category, :string, default: "Geography", null: false
      add :guide, :string
      # add :difficulty_level, :string
      add :name, :string, null: false

      timestamps()
    end

    create index(:tests, [:locale])
    create index(:tests, [:category])
    create index(:tests, [:locale, :category])
    create index(:tests, [:guide])
    create index(:tests, [:locale, :guide])
  end
end
