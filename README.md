# ZunCore
ZunCore is a fun small project, i'm working on.

## Installation

Clone the git repository.

```bash
git clone https://github.com/Zuntie/ZunCore
```

Download FiveM's artifacts
[Click here](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/).

## Setup

Change the paths in server.cfg, to where the files are on your system.
```python
## CONFIGS ##
exec C:\Users\Zuntie\Documents\ZunCore\ZunCore\configs\serveroptions.cfg
exec C:\Users\Zuntie\Documents\ZunCore\ZunCore\configs\admins.cfg
exec C:\Users\Zuntie\Documents\ZunCore\ZunCore\configs\secretkeys.cfg
exec C:\Users\Zuntie\Documents\ZunCore\ZunCore\configs\resources.cfg
```

As an example:
```python
exec C:\Users\Administrator\Desktop\ZunCore\configs\serveroptions.cfg
```

Change the keys in configs/secretkeys.cfg to your own keys.

[SteamWebApiKey](https://steamcommunity.com/dev/apikey)
[Keymaster](https://keymaster.fivem.net)

```python
set steam_webApiKey ""
sv_licenseKey cfxk_1TS9Y6wHdZwYxN2TW7Zls_3vAVVx
```

Edit the configs/admins.cfg to fit your needs, or add more admins.

```python
add_ace group.admin command allow # allow all commands
add_ace group.admin command.quit deny # but don't allow quit
add_principal identifier.fivem:1 group.admin # add the admin to the group
```

## Contributing
As of now, i won't be accepting pull requests, because it is a fun small project.

## License

    ZunCore
    Copyright (C) 2022 Zuntie

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.