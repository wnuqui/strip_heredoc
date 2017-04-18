# StripHeredoc

[![Build Status](https://travis-ci.org/wnuqui/strip_heredoc.png?branch=master)](https://travis-ci.org/wnuqui/strip_heredoc)
[![Inline docs](http://inch-ci.org/github/wnuqui/strip_heredoc.png?branch=master&style=flat)](http://inch-ci.org/github/wnuqui/strip_heredoc)

StripHeredoc is very small library for Elixir projects that needs to strips indentation in heredocs.
This is a direct Elixir port from Rails!

The complete documentation for StripHeredoc is located [here](https://hexdocs.pm/StripHeredoc).

### Adding StripHeredoc To Your Project

To use StripHeredoc with your projects, edit your `mix.exs` file and add it as a dependency:

```elixir
defp deps do
  [{:strip_heredoc, "~> 0.7.0"}]
end
```

### Examples

To use StripHeredoc, add
```elixir
import StripHeredoc
```
to the top of the module so you can use `strip_heredoc/1` function.

Example:

```elixir
iex(2)> str = strip_heredoc """
...(2)>   foo
...(2)>     bar
...(2)>   baz
...(2)> """
"foo\n    bar\n  baz\n"
```

## License

This software is licensed under [the MIT license](LICENSE.md).
