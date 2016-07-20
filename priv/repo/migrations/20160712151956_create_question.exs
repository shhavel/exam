defmodule Exam.Repo.Migrations.CreateQuestion do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :test_id, references(:tests, on_delete: :delete_all), null: false
      add :text, :text, null: false

      timestamps()
    end

    create index(:questions, [:test_id])
  end
end
