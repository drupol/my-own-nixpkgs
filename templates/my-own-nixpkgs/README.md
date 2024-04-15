[![Donate!][donate github]][github sponsors link]

# My Custom Nixpkgs Overlay

This repository serves as a template for creating your own collection of custom
Nix expressions, akin to what is done in `nixpkgs`. It includes a `default`
overlay that exposes all custom packages, facilitating their integration into
other projects.

## Usage

### Setting Up

1. Fork this repository.
2. Begin adding packages to the `pkgs/by-name` directory. Follow the
   same approach as adding packages in `nixpkgs`. Similar to [RFC140], packages
   added in this directory will be automatically discovered.
   - Create a new directory for each package.
   - Inside each directory, create a `package.nix` file.
3. Optionally, you can add packages directly to the `pkgs/` directory and
   manually update the bindings in the `imports/pkgs-all.nix` file.

### Integrating Your Repository as an Overlay

To use this repository as an overlay in another project, follow these steps:

1. **Add the Repository as an Input**:

   Add the following to your `nix` file to include this repository as an input:

   ```nix
   inputs = {
       my-custom-nixpkgs.url = "repo-url";  # Replace "repo-url" with the actual URL to your repository
   };
   ```

2. **Include the Overlay in `pkgs`**:

   When constructing `pkgs`, include the overlay as follows:

   ```nix
   pkgs = import inputs.nixpkgs {
     overlays = [
       inputs.my-custom-nixpkgs.overlays.default
     ];
   };
   ```

3. **Use Your Packages**:

   Access the packages in your project like this:

   ```nix
   buildInputs = [ pkgs.example1 pkgs.example2 ];
   ```

[RFC140]: https://github.com/NixOS/rfcs/pull/140

### Examples

Refer to the dummy projects `example1` and `example2` for practical examples of
how packages can be structured.

## Going further

- Use the continuous integration service of your choice to build and test your
  packages
- Add a binary cache to your repository to speed up builds and avoid
  recompilation using [Cachix](https://cachix.org/)
- This project uses a flake framework, we recommend to use [flake-parts](https://flake.parts)

## Contributing

Feel free to contribute by sending pull requests. We are a usually very
responsive team and we will help you going through your pull request from the
beginning to the end.

For some reasons, if you can't contribute to the code and willing to help,
sponsoring is a good, sound and safe way to show us some gratitude for the hours
we invested in this package.

Sponsor me on [Github][github sponsors link] and/or any of [the
contributors][6].

[donate github]: https://img.shields.io/badge/Sponsor-Github-brightgreen.svg?style=flat-square
[github sponsors link]: https://github.com/sponsors/drupol
[6]: https://github.com/drupol/my-own-nixpkgs/graphs/contributors
