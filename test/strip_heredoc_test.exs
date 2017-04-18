defmodule StripHeredocTest do
  import StripHeredoc
  use ExUnit.Case
  doctest StripHeredoc

  test "strip heredoc on a heredoc with no margin" do
    assert strip_heredoc("foo\nbar"), "foo\nbar"
    assert strip_heredoc("foo\n  bar"), "foo\n  bar"
  end

  test "strip heredoc on a regular indented heredoc" do
    str = strip_heredoc """
      foo
        bar
      baz
    """
    assert "foo\n  bar\nbaz\n", strip_heredoc(str)
  end

  test "strip heredoc on a regular indented heredoc with blank lines" do
    str = strip_heredoc """
      foo
        bar

      baz
    """

    assert "foo\n  bar\n\nbaz\n", strip_heredoc(str)
  end
end
