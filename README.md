# prayush-game

FOSS-BU Arena: a FreeDM-based local multiplayer game, desktop launcher, and separate browser multiplayer prototype.

## Downloads

- [Windows 1.2 single-file launcher](downloads/FOSS-BU-Arena-1.2.exe)
- [Linux x86-64 / Arch / CachyOS preview](downloads/FOSS-BU-Arena-1.2-Linux-Arch-CachyOS.tar.gz)

The Windows EXE includes game data and extracts it into the current user's local application-data directory. It is unsigned. Linux has a separate package; Windows executables are not native Linux programs.

## Desktop play

Connect all computers to the same local network. Up to 10 players including the host are configured. Everyone must use matching engine versions, data files and modes.

1. Choose Classic deathmatch, Deathmatch + zombies, or Co-op adventure.
2. The host selects an unused UDP port (default 10666) and starts a match.
3. Share the host's Wi-Fi IPv4 address and port.
4. Other players enter those values and select Join.
5. Keep the host server open; stop it from the launcher after playing.

The zombie variant places six enemy soldiers in the arena and enables monster respawning. Co-op uses Freedoom Phase 2. School/guest network isolation, VPNs and firewall rules can prevent connections.

## Source and builds

- `desktop/launcher.py`: cross-platform Python/Tk launcher.
- `desktop/payload.zip`: Windows game payload and third-party notices; do not extract personal configs or logs into this archive.
- `desktop/LINUX.txt`: native Arch/CachyOS setup and Linux requirements.
- `browser/`: separate WebAssembly/Cloudflare Workers browser prototype with eight-character room codes.
- `tools/build_windows.ps1`: build a single-file Windows EXE.

The repository includes the latest project only; temporary files and obsolete builds are omitted. The Windows and Linux desktop packages use Zandronum 3.2.1. Odamex is a separate experiment and does not share its multiplayer protocol. The reference repository is [DOOM_LAN_2](https://github.com/paryushj2209-svg/DOOM_LAN_2).

### Windows build

Use Python 3 with tkinter, then run in PowerShell from the repository root:

```powershell
powershell -NoProfile -File tools/build_windows.ps1
```

The script creates a local build environment, installs PyInstaller, and packages the supplied payload. It does not launch a game or publish anything.

### Browser development

```text
cd browser
npm install
npm start
```

Open http://127.0.0.1:8765/. The browser version cannot join desktop Zandronum or Odamex matches. Public hosting and the proposed custom domain are not configured. The relay needs production review and additional testing before an internet release.

## Verification and known limitations

Windows payload extraction, launcher configuration and mode/port arguments have been checked. Two browser tabs joined one local room and loaded the arena as two deathmatch players; packet relaying and the two-client limit were also checked. This does not establish 10-player stability or internet readiness.

Arch/CachyOS gameplay, cross-platform matches, Linux launcher behavior, co-op balance and zombie behavior remain untested. An earlier report of the desktop game closing during hosting remains unresolved. Title artwork is concept art; it is not a screenshot of the playable map.

## Credits and licensing

This is a collection of independently licensed components, not a blanket relicensing of a game engine:

- FreeDM/Freedoom: Freedoom contributors, BSD-style license. Notices are included with the game data.
- Zandronum: see the bundled ZANDRONUM-LICENSE.txt and [upstream source](https://foss.heptapod.net/zandronum/zandronum-stable).
- FMOD by Firelight Technologies Pty Ltd: proprietary runtime included in the official Zandronum distribution. Its [separate terms](https://www.fmod.com/legal) apply; public, sponsored or commercial distribution requires review.
- Browser frontend/router: adapted from Cloudflare's MIT-licensed [doom](https://github.com/cloudflare/doom).
- Browser engine: Chocolate Doom WebAssembly, GPL-2.0. See `browser/ENGINE-LICENSE.txt` and `browser/ENGINE-SOURCE-AND-CREDITS.txt` for provenance and corresponding-source information.

FOSS-BU custom artwork and launcher changes are project additions; preserve third-party credits when sharing.
