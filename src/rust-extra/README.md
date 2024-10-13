
# Rust Extra Feature (rust-extra)

This feature enhances the developer experience by adding some missing configurations to the Rust feature.

## Example Usage

```json
"features": {
    "ghcr.io/5t111111/devcontainers-features/rust-extra:0": {}
}
```



## Customizations

### VS Code Extensions

- `swellaby.vscode-rust-test-adapter`
- `fill-labs.dependi`

## Feature Dependencies

This feature depends on the following features:

- [rust](https://github.com/devcontainers/features/tree/main/src/rust)
- [common-utils](https://github.com/devcontainers/features/tree/main/src/common-utils)

The purpose of this feature is to enhance the developer experience by adding
some missing configurations to the Rust feature maintained by the Dev Container
Spec Maintainers. Therefore, it assumes that the Rust feature is already
installed, and it will not function properly if it is not. Note that this
feature does not depend on the Rust feature, which means you must manually
install the Rust feature.

In addition, this feature also assumes that you are using the common-utils
feature for user management.

## What does this feature do?

### Adding some Rust binary tools

This feature installs the following Rust binary tools:

- cargo-binstall
- cargo-audit
- cargo-edit
- cargo-expand
- cargo-watch

### Fix permission issues

This feature fixes permission issues especially when running the `cargo` command
by a non-root user or using in-container volumes.

It changes the owner of the workspace directory to the appropriate remote user
specified in your `devcontainer.json`.

A point to note is that this permission setting assumes that the build target
directory is located within the workspace path. In other words, if the target
directory is outside of the workspace, such as when configured via
`CARGO_TARGET_DIR`, it will not function as expected.

## OS Support

This feature should work on recent versions of Debian/Ubuntu-based distributions
with the `apt` package manager installed.

`bash` is required to execute the `install.sh` script.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/5t111111/devcontainers-features/blob/main/src/rust-extra/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
