defmodule StripHeredoc do
  @moduledoc """
  Strips indentation in heredocs.

  For example in

      usage = \"""
      This command does such and such.

       Supported options are:
         -h         This message
         ...
      \"""

      IO.puts( strip_heredoc(usage) )

  the user would see the usage message aligned against the left margin.

  Technically, it looks for the least indented non-empty line
  in the whole string, and removes that amount of leading whitespace.
  """

  @doc """
  Strips indentation in heredocs.

  ## Examples

      iex> StripHeredoc.strip_heredoc("")
      ""

      iex> StripHeredoc.strip_heredoc("x")
      "x"

      iex> StripHeredoc.strip_heredoc("    x")
      "x"
  """
  def strip_heredoc(""), do: ""

  def strip_heredoc(string) do
    spaces = Regex.scan(~r/^[ \t]*(?=\S)/m, string)
    min_spaces = Enum.min(spaces)
    Regex.replace(~r/^#{min_spaces}/, string, "")
  end
end
