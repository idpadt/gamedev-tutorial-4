## Latihan Mandiri

### Enemies
Untuk Fish di level 1 dan Slime di level 2 memiliki script yang serupa. Saat collide dengan Player, akan menjalankan func player_lose di script root node level.

### Spawner
Spawner di level 1 dan 2 memakai script yang sama, hanya menggunakan scene enemy yang berbeda.

### Death Zone dan Lose Screen
Saat Player menyentuh area DeathZone, maka akan menjalankan func player_lose di script root node level, yang mana akan memunculkan LoseScreen (dijelaskan lebih lanjut dalam seksi Level). Saat enemy menyentuh area ini, mereka akan dijalankan queue_free agar hilang.

### Win Zone dan Win Screen
Saat Player menyentuh area WinZone, maka akan menjalankan func player_win di script root node level, yang mana akan memunculkan LoseScreen (dijelaskan lebih lanjut dalam seksi Level).

### Level
Script ini berisi mayoritas fungsi. Saat ready, akan dijalankan paused = false agar waktu berhenti, dan start_spawner untuk menjalankan spawner. Fungsi kill_fish dan kill_slime berfungsi menghilangkan instance dari fish dan slime saat player mati, seperti semacam reset.

Player_lose dijalankan saat player mati. Fungsi ini akan memberhentikan player, dan memperlihatkan LoseScreen. Setelah beberapa detik, Player akan di reset posisinya, menghilangkan LoseScreen, menjalankan player, menjalankan kill_fish atau kill_slime, dan mengulang kembali spawnernya.

Player_win dijalankan saat player menang. Fungsi ini akan memberhentikan player dan memperlihatkan WinScreen. WinScreen berisi sebuah button yang saat dipencet, akan memindahkan ke scene baru (lvl 1 ke lvl 2, lvl 2 ke lvl 1 kembali)
