defmodule Exam.ParticipationController do
  use Exam.Web, :controller

  alias Exam.Test
  alias Exam.Participation

  def index(conn, _params) do
    participations = Repo.all(Participation)
    render(conn, "index.html", participations: participations)
  end

  def new(conn, %{"test_id" => test_id}) do
    test = Repo.get!(Test, test_id) |> Repo.preload([questions: :answers])
    changeset = Participation.changeset_for_test(test)
    render(conn, "new.html", changeset: changeset, test: test)
  end

  def create(conn, %{"participation" => participation_params}) do
    if participation_params["test_id"] do
      test = Repo.get!(Test, participation_params["test_id"]) |> Repo.preload([questions: :answers])

      changeset = Participation.changeset(%Participation{}, participation_params)

      case Repo.insert(changeset) do
        {:ok, participation} ->
          conn
          |> put_flash(:info, "Participation created successfully.")
          |> redirect(to: participation_path(conn, :show, participation))
        {:error, changeset} ->
          render(conn, "new.html", changeset: changeset, test: test)
      end
    else
      conn
        |> put_status(:not_found)
        |> render(Exam.ErrorView, "404.html")
    end
  end

  def show(conn, %{"id" => id}) do
    participation = Repo.get!(Participation, id) |> Repo.preload([:test, [replies: [[opinions: :answer], [question: :answers]]]])
    render(conn, "show.html", participation: participation)
  end

  def edit(conn, %{"id" => id}) do
    participation = Repo.get!(Participation, id) |> Repo.preload([replies: [:question, [opinions: :answer]]])
    changeset = Participation.changeset(participation)
    render(conn, "edit.html", participation: participation, changeset: changeset)
  end

  def update(conn, %{"id" => id, "participation" => participation_params}) do
    participation = Repo.get!(Participation, id) |> Repo.preload([replies: :opinions])
    changeset = Participation.changeset(participation, participation_params)

    case Repo.update(changeset) do
      {:ok, participation} ->
        conn
        |> put_flash(:info, "Participation updated successfully.")
        |> redirect(to: participation_path(conn, :show, participation))
      {:error, changeset} ->
        render(conn, "edit.html", participation: participation, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    participation = Repo.get!(Participation, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(participation)

    conn
    |> put_flash(:info, "Participation deleted successfully.")
    |> redirect(to: participation_path(conn, :index))
  end
end
