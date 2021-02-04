# Still Imageflow

Image preprocessor adapter to use [`imageflow`][imageflow] with [Still][still].

## Installation

First, make sure you include it in your deps:

```elixir
def deps do
  [
    {:still_imageflow, "~> 0.1.0"},
    # ...
  ]
end
```

Then, configure `still` to use it as your adapter:

```elixir
config :still, :image_adapter, Still.Preprocessor.Image.Imageflow
```

## About

Still was created and is maintained with :heart: by [Subvisual][subvisual].

![Subvisual][sub-logo]

## License

Still Imageflow is released under the [ISC License](./LICENSE).

[still]: https://github.com/still-ex/still
[imageflow]: https://github.com/imazen/imageflow
[subvisual]: https://subvisual.com
[sub-logo]: https://raw.githubusercontent.com/subvisual/guides/master/github/templates/logos/blue.png
