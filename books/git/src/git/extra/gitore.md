# gitore

* [gitore source code](https://codeberg.org/kallisti5/gitore)

I tried to set it up, so far without success.

```
git clone https://codeberg.org/kallisti5/gitore.git
```

I tried to build it inside a docker container, but it failed as it did not have the `git` client installed.
When I ran the commands on my own computer where I had git installed it got stuck asking for username and password.

See [this issue](https://codeberg.org/kallisti5/gitore/issues/31)

```
$ docker run -it --rm --workdir /opt -v$(pwd):/opt ubuntu bash

apt update
apt upgrade -y
apt install -y curl
apt install -y build-essential
apt install -y libclang-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
cargo install --path .
```
