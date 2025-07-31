# OSC	Copy

OSC Copy is a lightweight shell function that seamlessly copies its standard input to your local system's clipboard when working on a remote server over SSH.

## Installation

```bash
curl -LsSf https://raw.githubusercontent.com/chen1plus/osc-copy/master/install.sh \
| bash -s >> .bashrc
```

You can set a custom function name during installation using the `--function-name` flag. For example, to name the function `ssh-copy`:

```bash
curl -LsSf https://raw.githubusercontent.com/chen1plus/osc-copy/master/install.sh \
| bash -s -- --function-name ssh-copy >> .bashrc
```

## Usage

OSC Copy passes its input through to stdout, so you can place it in the middle of a command pipeline without breaking it. Here's an example:

```bash
printf 'gcc --version' | osc-copy | bash -s
```
