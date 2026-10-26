# ILM Keycloak Theme

> This repository is part of the commercial open-source project ILM. You can find more information about the project at the [ILM](https://github.com/OmniTrustILM/ilm) repository, including the contribution guide.

This repository contains the Keycloak login themes for ILM. Each extends Keycloak's `keycloak` login theme with its own styles, images and English messages.

| Theme        | Description                                          |
|--------------|------------------------------------------------------|
| `ilm`        | ILM login theme, the login theme of ILM realms       |
| `czertainly` | CZERTAINLY login theme for realms that still use it  |

For more information on Keycloak themes, refer to [Themes](https://www.keycloak.org/ui-customization/themes) in the Keycloak documentation.

## Container image

The image `hub.omnitrustregistry.com/ilm/keycloak-theme` contains the themes under `/themes/<theme>` and runs as the non-root user `10001`.
ILM's `init-theme` container runs `cp -a /themes/. <volume>/` with `/bin/sh` to stage them in a volume that Keycloak mounts at `/opt/keycloak/themes`.
