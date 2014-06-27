
autox
=====

`autox` is a bash script designed to automate and simplify the steps required
to manage displays connected to a MacBook Pro 11,3 (including the attached
Retina display) running Arch Linux. It is designed to be "smart" by scanning 
your laptop's configuration and connected hardware, then assuming some sane 
defaults about how to handle each display. These defaults may be overwritten
within the script to handle your desired configuration, or by command-line
flags (_in progress_).

This script is designed to be as readable and user-friendly as possible (along
with JDoc-style function usage comments), to be fully tested, and to be able
to configure displays automatically, if requested.

## Usage

Clone this repo, `cd` into its directory, run

``bash
./autox -h
```

## Tests

Must have `bats` installed (link: [bats](https://github.com/sstephenson/bats)).

```bash
bats test
```

