# browser

## Clangd integration

Run `make clean` then `make bear` in order to update the
`compile_commands.json` file. This is necessary the first time you run the
project and whenever the Makefile is changed, so that clangd knows what the
project looks like.
