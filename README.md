# LIFX Console

A [Pry](https://github.com/pry/pry)-enabled REPL to interact with [LIFX](http://lifx.co) devices.

## Features

* Pry-enabled!
* Helpers to help you visually identify lights.

## Installation

$ gem install lifx-console

## Usage

```bash
$ lifx-console
```

Print the label of lights being visually identified
```bash
[1] pry(#<LIFX::Client>)> while light = identify
[1] pry(#<LIFX::Client>)*   puts light.label
[1] pry(#<LIFX::Client>)* end
```
## Contributing

1. Fork it ( http://github.com/<my-github-username>/lifx-console/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT. See `LICENSE.txt`
