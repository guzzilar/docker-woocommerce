# Docker WooCommerce

> Note: Docker-WooCommerce was developed as a part of the [Docky](https://github.com/guzzilar/docky) (a dockerizer for e-commerce application).
> However, it can also work stand alone as well.

Docker-WooCommerce helps you easily run up a WooCommerce application (can be used either by [Docky](https://github.com/guzzilar/docky) or stand alone).

### Supported Versions

- latest

**Can't find the version you're looking for?**  
Just contribute by yourself! 😛  
Or, let me hear your voice at https://github.com/guzzilar/docker-woocommerce/issues

## Get Started

### Dependencies

- Docker Engine v17.06.0 or higher

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

## Customization

### Environment Variables

There are some system environment variables you can custom with your own value, such as 'WP_ADMIN_USER', 'WP_ADMIN_PASSWORD', etc.  
Inside the source folder (`src/[version]/`) you will see `default.env`.

### Parameters

**[--env-file=\<env-file\>] `optional`**  

Specify a path to your custom `.env` file.

## License

Docker-WooCommerce is open-sourced software released under the [MIT License](https://opensource.org/licenses/MIT).
