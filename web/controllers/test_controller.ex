defmodule Exam.TestController do
  use Exam.Web, :controller

  alias Exam.Test
  alias Exam.Question
  alias Exam.Answer

  def index(conn, _params) do
    tests = Repo.all(Test)
    render(conn, "index.html", tests: tests)
  end

  def new(conn, _params) do
    changeset = Test.changeset(%Test{questions: [
      %Question{answers: [%Answer{}, %Answer{}]},
      %Question{answers: [%Answer{}, %Answer{}]}
    ]})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"test" => test_params}) do
    changeset = Test.changeset(%Test{}, test_params)

    case Repo.insert(changeset) do
      {:ok, _test} ->
        conn
        |> put_flash(:info, "Test created successfully.")
        |> redirect(to: test_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    test = Repo.get!(Test, id)
    render(conn, "show.html", test: test)
  end

  def edit(conn, %{"id" => id}) do
    test = Repo.get!(Test, id) |> Repo.preload([questions: :answers])
    changeset = Test.changeset(test)
    render(conn, "edit.html", test: test, changeset: changeset)
  end

  def update(conn, %{"id" => id, "test" => test_params}) do
    test = Repo.get!(Test, id) |> Repo.preload([questions: :answers])
    changeset = Test.changeset(test, test_params)

    case Repo.update(changeset) do
      {:ok, test} ->
        conn
        |> put_flash(:info, "Test updated successfully.")
        |> redirect(to: test_path(conn, :show, test))
      {:error, changeset} ->
        render(conn, "edit.html", test: test, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    test = Repo.get!(Test, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(test)

    conn
    |> put_flash(:info, "Test deleted successfully.")
    |> redirect(to: test_path(conn, :index))
  end
end
