defmodule Exam.TestControllerTest do
  use Exam.ConnCase

  alias Exam.Test
  @valid_attrs %{category: "g8", locale: "uk", name: "ПРИРОДНІ УМОВИ ТА ПРИРОДНІ РЕСУРСИ"}
  @invalid_attrs %{category: "", locale: "", name: ""}

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, test_path(conn, :index)
    assert html_response(conn, 200) =~ "Listing tests"
  end

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, test_path(conn, :new)
    assert html_response(conn, 200) =~ "New test"
  end

  test "creates resource and redirects when data is valid", %{conn: conn} do
    conn = post conn, test_path(conn, :create), test: @valid_attrs
    assert redirected_to(conn) == test_path(conn, :index)
    assert Repo.get_by(Test, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, test_path(conn, :create), test: @invalid_attrs
    assert html_response(conn, 200) =~ "New test"
  end

  test "shows chosen resource", %{conn: conn} do
    test = Repo.insert! %Test{category: "some content", locale: "some content", name: "some content"}
    conn = get conn, test_path(conn, :show, test)
    assert html_response(conn, 200) =~ "Show test"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, test_path(conn, :show, -1)
    end
  end

  test "renders form for editing chosen resource", %{conn: conn} do
    test = Repo.insert! %Test{category: "some content", locale: "some content", name: "some content"}
    conn = get conn, test_path(conn, :edit, test)
    assert html_response(conn, 200) =~ "Edit test"
  end

  test "updates chosen resource and redirects when data is valid", %{conn: conn} do
    test = Repo.insert! %Test{category: "some content", locale: "some content", name: "some content"}
    conn = put conn, test_path(conn, :update, test), test: @valid_attrs
    assert redirected_to(conn) == test_path(conn, :show, test)
    assert Repo.get_by(Test, @valid_attrs)
    assert html_response(conn, 302)
    assert get_flash(conn, :info) == "Test updated successfully."
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    test = Repo.insert! %Test{category: "some content", locale: "some content", name: "some content"}
    conn = put conn, test_path(conn, :update, test), test: @invalid_attrs
    assert html_response(conn, 200) =~ "Edit test"
  end

  test "deletes chosen resource", %{conn: conn} do
    test = Repo.insert! %Test{category: "some content", locale: "some content", name: "some content"}
    conn = delete conn, test_path(conn, :delete, test)
    assert redirected_to(conn) == test_path(conn, :index)
    refute Repo.get(Test, test.id)
  end
end
