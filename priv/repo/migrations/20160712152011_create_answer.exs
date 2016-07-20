defmodule Exam.Repo.Migrations.CreateAnswer do
  use Ecto.Migration

  def change do
    create table(:answers) do
      add :question_id, references(:questions, on_delete: :delete_all), null: false
      add :text, :text, null: false
      add :correct, :boolean, default: false, null: false

      timestamps()
    end

    create index(:answers, [:question_id])
  end
end
