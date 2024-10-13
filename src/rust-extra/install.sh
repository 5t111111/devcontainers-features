#!/usr/bin/env bash

set -e

echo "========================================================================="
echo "Installing Rust extra feature"
echo "========================================================================="
pwd
echo "========================================================================="
env
echo "========================================================================="

# cargo install --force cargo-make

# Create entrypoint
if [ ! -e "/usr/local/share/rust-extra-entrypoint.sh" ]; then
    cp -f rust-extra-entrypoint.sh /usr/local/share/
    chmod +x /usr/local/share/rust-extra-entrypoint.sh
fi

exit 0

echo "-------------------------------------------------------------------------"
cat /etc/passwd
echo "-------------------------------------------------------------------------"
ls -l /
echo "-------------------------------------------------------------------------"
ls -l /workspaces
echo "-------------------------------------------------------------------------"
ls -l /workspaces/rust-devcontainer-template
echo "-------------------------------------------------------------------------"

chown -R rust:rust /workspaces/rust-devcontainer-template/target

USERNAME="${USERNAME:-"none"}"

if [ "${USERNAME}" = "none" ] || ! id -u "${USERNAME}" > /dev/null 2>&1; then
  USERNAME=root
fi

if [ -d "$(pwd)/target" ]; then
  # If it exists, change permissions recursively
  chmod -R 777 "$(pwd)/target"
  echo "Permissions for $(pwd)/target have been set to 777."
else
  echo "$(pwd)/target does not exist."
fi

# echo "Activating feature 'color'"
# echo "The provided favorite color is: ${FAVORITE}"


# # The 'install.sh' entrypoint script is always executed as the root user.
# #
# # These following environment variables are passed in by the dev container CLI.
# # These may be useful in instances where the context of the final
# # remoteUser or containerUser is useful.
# # For more details, see https://containers.dev/implementors/features#user-env-var
# echo "The effective dev container remoteUser is '$_REMOTE_USER'"
# echo "The effective dev container remoteUser's home directory is '$_REMOTE_USER_HOME'"

# echo "The effective dev container containerUser is '$_CONTAINER_USER'"
# echo "The effective dev container containerUser's home directory is '$_CONTAINER_USER_HOME'"

# cat > /usr/local/bin/color \
# << EOF
# #!/bin/sh
# echo "my favorite color is ${FAVORITE}"
# EOF

# chmod +x /usr/local/bin/color
