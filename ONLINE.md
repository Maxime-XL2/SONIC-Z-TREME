# Online play (NetLink)

Two Saturns play together over the Sega NetLink modem, one player each, each console showing its own player full screen.
The consoles meet on a small relay server. Like Doom's modem games, every console runs the whole game and only the pads travel.

Status: works in Mednafen with an emulated NetLink. Not tried on a real Saturn yet.

## Playing

- **GAME SELECT > ONLINE**: the NetLink dials, the console waits in the relay's hall for another player (B cancels), then both
  consoles load the first map. The first console to arrive is player 1.
- Hold **START** for the network page: step, time spent waiting, bytes received and lost, modem speed, checksums.
- **OUT OF SYNC AT STEP n** appears if the consoles ever disagree.
- A lost line or a player leaving returns to the menu with a message. A+B+C+START leaves, as before.

## Code

| File | Role |
|---|---|
| `ZTE/ZT_NETLINK.c` | NetLink driver: 16550 UART, Hayes AT, its A-bus interrupt (the 16-byte FIFO would overflow while the game draws) |
| `ZTE/ZT_NETPLAY.c` | Lockstep, game-agnostic: input delay, agreed step length, checksums, relay protocol |
| `SRC/online.c` | Sonic side: hall screen, pad records, checksums, network page |

Changes to the engine, all behind `ztNetOn` (offline nothing changes):

- `ZT_FRAMERATE`, each console's measured frame time, scales all the physics. Online, every step uses player 1's console's
  value, sent with its pad, so both consoles play the same game time.
- `controls()` reads `ztPlayerPad()`: the console's own pad offline, the pad from the line online.
- `main_loop()` draws only this console's player, then moves player 2 and player 1 as split screen does. `ztRender()` takes
  that player as its main view.
- The START debug keys of `ztGameLoop()` are offline only.
- GAME SELECT gets a fourth picture, `cd/MENU/ONLINE.ZTI`, made of the letters of `OPTIO.ZTI` and `1PLAY.ZTI`. The
  choices are 36 pixels apart instead of 40 to keep it on screen.

Build switches are listed in `SRC/online.h` (dial number, game id, input delay, unattended test modes).

## Trying it in an emulator

You need the [saturn-online](https://github.com/N0rt0N85/saturn-online) kit: Mednafen 1.32.1 with its NetLink modem cartridge (`-ss.cart nlmodem`: dialing becomes a TCP
connection to `MDFN_NLMODEM`), and its relay (`relay/relay.py`, Python 3.8+).

    python3 relay.py --port 4822
    MDFN_NLMODEM=127.0.0.1:4822 mednafen -ss.cart nlmodem sl_coff.cue     # console 1
    MDFN_NLMODEM=127.0.0.1:4822 mednafen -ss.cart nlmodem sl_coff.cue     # console 2, with its own MEDNAFEN_HOME

To play alone against a scripted player, build the second disc with `make re ZT_DEFS="-DZT_NET_AUTO=1 -DZT_NET_TEST_PAD=1"`.

Measured this way (`-ss.dbg_cem full`, the emulated modem modelling the UART's speed, FIFOs and interrupt), with two scripted
players, 40 and 100 ms of line, 17 games:

- the 13 game ends that were logged all came on the same step on both consoles;
- no checksum difference where read, 0 bytes lost;
- the UART FIFO never held more than 4 of its 16 bytes;
- at 40 ms the consoles almost never waited for each other. At 100 ms (more than the 2-step input delay) they waited about 30 %
  of the time: the game keeps real time, with fewer images per second.

## On a real Saturn

The NetLink dials a DreamPi, or a PC with a USB voice modem running a NetLink bridge, which connects to the relay. Sonic
Z-Treme dials 199411 (`ZT_NET_NUMBER`). The DreamPi's codes are handed out in the `netlink_config.ini` of
[eaudunord/Netlink](https://github.com/eaudunord/Netlink), where 199411 is not registered yet: add this entry at the end of
the DreamPi's `netlink_config.ini`, then restart it.

    [server:199411]
    name = Sonic Z-Treme
    host = <relay host>
    port = <relay port>
    shared_secret = <the relay's secret, if any>
    auth_magic = AUTH
    auth_timeout = 5.0

## Limits

- Two players, no joining a game already running.
- Only player 1's GAME OVER ends the game, as in split screen.
- The stream has no resync marker: one lost byte breaks the game. The UART interrupt is there to prevent that.
