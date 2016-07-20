defmodule Exam.Repo.Migrations.CreateOpinion do
  use Ecto.Migration

  def change do
    create table(:opinions) do
      add :reply_id, references(:replies, on_delete: :nothing)
      add :answer_id, references(:answers, on_delete: :nothing)
      add :agree, :boolean, default: false, null: false

      timestamps()
    end

    create index(:opinions, [:reply_id])
    create index(:opinions, [:answer_id])
    create unique_index(:opinions, [:reply_id, :answer_id])
  end
end
