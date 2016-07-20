defmodule Exam.Repo.Migrations.CreateParticipation do
  use Ecto.Migration

  def change do
    create table(:participations) do
      add :test_id, references(:tests, on_delete: :delete_all), null: false
      add :evaluation, :float
      add :mark, :string

      timestamps()
    end

    create index(:participations, [:test_id])
  end
end
