FOSS-BU ARENA - LOCAL BROWSER BUILD

TO TEST ON THIS LAPTOP
1. Double-click Start Local Browser Game.cmd. Node.js is required; on the first run the launcher installs local development tools. Keep the server window open. If the browser opens before the server is ready, refresh once the window says Ready.
2. The site is at http://127.0.0.1:8765/. This address works on this laptop only and is not an internet address.
3. Select Start Multiplayer, choose a name, share the eight-character room code or invite link, and select Next. On another browser tab, enter that room code, choose a name, and join. The match starts when both connect.
4. To stop the local server, close its terminal window. This does not publish anything online.

The browser map is adapted from the FreeDM MAP01 used by the Windows prototype. The FOSS-BU wall sign, title image and pickup changes were converted into Doom-compatible WAD data. The browser engine is Chocolate Doom, so movement, graphics, rules and interface differ from the Windows Zandronum version. The two versions cannot join one another.

Local verification: two browser tabs connected to the same room and loaded the map as players 1 and 2 in deathmatch. The room relay was also checked for two-way packet delivery and rejection of a third connection. Internet play, sustained match stability, phone controls and independent-device play have not been verified.

BEFORE INTERNET RELEASE: the room router needs production security, abuse/rate-limit and resource-limit review, browser/device testing, and deployment in a Cloudflare account with Durable Objects. The site and relay are not deployed and play.vedantsomani.tech is not configured. Keep the existing domain and DNS unchanged until deployment is ready.

Sources: Cloudflare doom MIT code, WebAssembly engine GPL-2.0, Freedoom 3-clause BSD. See CLOUDFLARE-LICENSE.txt, ENGINE-LICENSE.txt, ENGINE-SOURCE-AND-CREDITS.txt and the FreeDM license and credits under public/.
