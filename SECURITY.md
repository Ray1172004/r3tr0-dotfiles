# Seguridad / Security

[Español](#español) · [English](#english)

## Español

Este repositorio publica configuraciones de escritorio, **no** credenciales. Antes de publicar cambios, revisa **todos** los archivos añadidos (incluidos los scripts y el historial de commits).

- No publiques contraseñas, tokens, claves SSH/GPG, archivos `.env`, perfiles de NetworkManager, cookies, bases de datos o datos de clientes.
- Las rutas `/home/YOUR_USER/` son marcadores de posición; no deben sustituirse por rutas privadas de una máquina real en GitHub.
- Los archivos pueden ejecutar comandos locales (Rofi, Hyprland, scripts). **Léelos antes de ejecutarlos** y no copies toda la carpeta `.config` sin revisar.
- No confíes únicamente en `.gitignore`: los archivos ya rastreados pueden seguir publicándose y los patrones no detectan todos los secretos.
- Si una credencial se filtra, **revócala o rótala primero**. Borrarla de un commit nuevo no la elimina del historial.
- Los repositorios públicos revelan nombres de aplicaciones, atajos, comportamientos y preferencias del entorno. No son una vulnerabilidad por sí solos, pero pueden aportar información a terceros.

**Alcance de la revisión inicial:** lectura de rutas y búsqueda de patrones comunes en las configuraciones publicadas. No es una auditoría integral ni garantiza ausencia total de vulnerabilidades. El entorno de escritorio y el instalador no han sido sometidos a pruebas independientes.

Si encuentras un problema de seguridad, evita incluir secretos reales en un issue público.

## English

This repository publishes desktop configuration, **not** credentials. Review **all** files before committing, including scripts and commit history.

- Never publish passwords, tokens, SSH/GPG keys, `.env` files, NetworkManager profiles, cookies, databases or customer information.
- `/home/YOUR_USER/` paths are placeholders; do not replace them with private paths before pushing to GitHub.
- Dotfiles can execute local commands. **Read the scripts before running** and never blindly overwrite all of `~/.config`.
- `.gitignore` alone is insufficient: already-tracked files can still be published, and patterns cannot catch every secret.
- If a secret leaks, **revoke or rotate it first**. Removing it in a new commit does not erase Git history.
- A public repo reveals desktop setup and preferences. This is not inherently a vulnerability, but is information others can see.

**Review scope:** inspection of common secret patterns, paths and selected published scripts. This is not a full security audit, nor a guarantee of complete security. No independent end-to-end installation or runtime testing has been performed.

Please do not paste real secrets into public issues.
