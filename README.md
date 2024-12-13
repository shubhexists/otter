# OTTER 🦦

Add cool decorations to your Discord avatar with ease!

## Overview

OTTER is a simple tool that allows you to enhance your Discord avatar with delightful decorations.

CLI is written in Rust btw 🦀

## Installation

You can quickly install OTTER using the following command:

```bash
curl https://otter.shubh.sh/install.sh | bash
```

You can install it from Cargo (NOT RECOMMENDED) by - 

```bash
cargo install otter_dc
``` 

This will install by the binary name `otter_dc` so it's preffered to use the install script provided

## Usage

```bash
otter --input <input> --decoration <decoration> --output <output>
```

## Options

| Option | Description | Short Flag | Long Flag |
|--------|-------------|------------|-----------|
| Input Avatar | Specify the input avatar image | `-i` | `--input` |
| Decoration | Choose a decoration image | `-d` | `--decoration` |
| Output Path | Set the output image path | `-o` | `--output` |
| Help | Print help information | `-h` | `--help` |
| Version | Print version information | `-V` | `--version` |

## Decorations

You can download a variety of decorations from our decoration library at [otter.shubh.sh](https://otter.shubh.sh)

## Examples

1. Add a festive hat to your avatar:
```bash
otter -i myavatar.png -d holiday_hat.png -o festive_avatar.gif
```

2. View available commands:
```bash
otter --help
```

Thanks :)
