defmodule Exam.PageController do
  use Exam.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
