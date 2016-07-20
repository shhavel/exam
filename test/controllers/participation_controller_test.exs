defmodule Exam.ParticipationControllerTest do
  use Exam.ConnCase
  import Exam.Fixtures

  alias Exam.Participation
  @invalid_attrs %{test_id: nil}

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, participation_path(conn, :index)
    assert html_response(conn, 200) =~ "Listing participations"
  end

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, participation_path(conn, :new), test_id: fixture(:test).id
    assert html_response(conn, 200) =~ fixture(:test).name
  end

  test "creates resource and redirects when data is valid", %{conn: conn} do
    conn = post conn, participation_path(conn, :create), participation: valid_attrs(:participation)
    participation = Repo.get_by(Participation, valid_attrs(:participation))
    assert participation
    assert redirected_to(conn) == participation_path(conn, :show, participation)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, participation_path(conn, :create), participation: @invalid_attrs
    assert html_response(conn, 404) =~ "Page not found"
  end

  test "shows chosen resource", %{conn: conn} do
    participation = fixture(:participation)
    conn = get conn, participation_path(conn, :show, participation)
    assert html_response(conn, 200) =~ "Show participation"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, participation_path(conn, :show, -1)
    end
  end

  test "renders form for editing chosen resource", %{conn: conn} do
    participation = fixture(:participation)
    conn = get conn, participation_path(conn, :edit, participation)
    assert html_response(conn, 200) =~ "Edit participation"
  end

  test "updates chosen resource and redirects when data is valid", %{conn: conn} do
    participation = fixture(:participation)
    conn = put conn, participation_path(conn, :update, participation), participation: valid_attrs(:participation)
    assert redirected_to(conn) == participation_path(conn, :show, participation)
    assert Repo.get_by(Participation, valid_attrs(:participation))
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    participation = fixture(:participation)
    conn = put conn, participation_path(conn, :update, participation), participation: @invalid_attrs
    assert html_response(conn, 200) =~ "Edit participation"
  end

  test "deletes chosen resource", %{conn: conn} do
    participation = fixture(:participation)
    conn = delete conn, participation_path(conn, :delete, participation)
    assert redirected_to(conn) == participation_path(conn, :index)
    refute Repo.get(Participation, participation.id)
  end
end
