# SlowpokeWaffle

![](https://github.com/Elonsoft/slowpoke_waffle/workflows/test/badge.svg)
![](https://github.com/Elonsoft/slowpoke_waffle/workflows/lint/badge.svg)

Provides a storage module for Arc.

With this storage method, all images are stored locally first,
then are queued to be uploaded to AWS, and after uploading is
done, the local copy is deleted. Either an uploading is in progress
or is already done, the returned url for the resource is always
valid.

## Usage

See [hexdocs](https://hexdocs.pm/slowpoke_waffle) for details.

## Installation

The package can be installed by adding `slowpoke_waffle` to your list of
dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:slowpoke_waffle, "~> 0.3"}
  ]
end
```
