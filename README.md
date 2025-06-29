# This is an unofficial Pokemon Odyssey Showdown repo

## How to run

Open a cmd prompt and run ./run.bat

# Notes

## How to change pokemon

Technically, only server-side changes are required, but you can't use teambuilder and only use /dt to see changes. So change the client too, its the main pull of doing this.

### Server-side

go to Pokemon Odyssey Showdown\pokemon-showdown\data\pokedex.ts and edit them as seen. I would like to develop an example, but i don't have it right now.

Pokemon Odyssey Showdown\pokemon-showdown\data\pokedex.ts

You can add new ones too I think.

### Client-side

go to Pokemon Odyssey Showdown\pokemon-showdown-client\play.pokemonshowdown.com\data\pokedex.js and edit them the same way.

Pokemon Odyssey Showdown\pokemon-showdown-client\play.pokemonshowdown.com\data\pokedex.js

Edit this line

```js
if (!fs.existsSync("caches/pokemon-showdown")) {
  child_process.execSync(
    "git clone https://github.com/Sylvati/pokemon-showdown-odysseymod.git",
    {
      cwd: "caches",
    }
  );
}
```

in build-indexes to make it use your server repo
