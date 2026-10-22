# icon-ionic

[Ionicons](https://github.com/ionic-team/ionicons) as 2,714 pre-rendered `CrImage` constants for Crystal: 1,357 icons at 24×24 and 32×32.

```yaml
dependencies:
  icon-ionic:
    github: kojix2/icon-ionic
```

```crystal
require "icon-ionic"

icon = Icon::Ionic::Heart24Outline
```

Names follow the SVG filenames, size, and style. Use `require "icon-ionic/24_outline"` to load one size and style; other groups are `filled`, `sharp`, and `logos`, each at 24 or 32. Constants are shared, mutable images; copy before editing.

## Regenerate

Requires Python 3, librsvg, Cairo, and an upstream ZIP from the project linked above.

```bash
python3 scripts/generate.py /path/to/ionic.zip
python3 scripts/generate.py /path/to/ionic.zip --check
```

MIT: [shard](LICENSE), [upstream icons](LICENSE.ionic).
