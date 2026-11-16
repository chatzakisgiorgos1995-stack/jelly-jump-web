JELLY JUMP — Friends Edition

NEW: touch controls, synthesised background music (starts after pressing Play), sound toggle,
progressive difficulty every 5 points, player name, saved personal score and leaderboard.

GITHUB PAGES:
Upload index.html, config.js, sw.js, manifest.webmanifest and the icon PNG files
at the root of your public GitHub repository. Settings > Pages > Deploy from branch > main /root.
Refresh the published game after uploading changes; the service worker uses cache v2.

LOCAL leaderboard works immediately on one device, with localStorage.
SHARED leaderboard (across friends' devices) requires Supabase:
1. Create a Supabase project at https://supabase.com
2. Run supabase_setup.sql in the SQL Editor.
3. In config.js enter Project URL and the PUBLIC anon/publishable API key.
4. Commit config.js to GitHub. Never put secret/service_role keys in client code.
5. All friends open the same GitHub Pages link. Online scores appear in the leaderboard.

IMPORTANT: This demo leaderboard is public, not cheat-proof. Names/scores can be submitted
by anyone who has the public API key. Do not use personal information as player names.
