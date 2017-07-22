# Docker WooCommerce

> Note: Docker-WooCommerce was developed as a part of the [Docky](https://github.com/guzzilar/docky) (a dockerizer for e-commerce application), however, it can also work stand alone as well.

Docker-WooCommerce helps you easily run up a WooCommerce application (can be used either by [Docky](https://github.com/guzzilar/docky) or stand alone).

## Get Started

### Build a new container

Just type 

```bash
./bin/docky-servant [<command>] [<version>] [<build_location>(optional)]
```

1. **Build a WooCommerce application with the latest version**
```bash
./bin/docky-servant up latest
```

2. **Build a WooCommerce application with the latest version at a specific path**
```bash
./bin/docky-servant up latest ~/Desktop/demo
```

## Supported Versions

- latest

## License

Docker-WooCommerce is open-sourced software released under the [MIT License](https://opensource.org/licenses/MIT).
