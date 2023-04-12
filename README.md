# HAProxy Lua 5.3 base Docker container

This is a base Docker container packed with:

* Ubuntu 22.04
* HAProxy 2.4.x
* Lua 5.3
* Lua modules: `socket`, `json` and `inspect` pre-installed.

# Usage

Container is good enough for stand-alone deployment, yet it'll make more sense if Lua scripts are shipped
with it. Projects that use this base container include:

* [Hockey stick](https://github.com/dobrevit/docker-hockey-stick) Reverse proxy for Hockeypuck OpenPGP server
