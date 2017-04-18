use Mix.Config

if Mix.env == :dev do
  config :mix_test_watch,
    tasks: [
      "credo",
      "test"
    ],
    clear: true
end
