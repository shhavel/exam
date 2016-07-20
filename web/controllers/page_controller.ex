defmodule Exam.PageController do
  use Exam.Web, :controller

  alias Exam.Test

  def index(conn, _params) do
    tests = Repo.all(Test)
    render(conn, "index.html", tests: tests)
  end
end
