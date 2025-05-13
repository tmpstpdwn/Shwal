# shwal

- `shwal` is a bash script to set wallpaper and generate color schemes from an image.
- It allows you to use templates so that new colorschemes can be applied across many softwares effortlessly.

## shwal integrated with lf filemanager.

![Alt Text](https://s10.gifyu.com/images/SfDyQ.gif)
  
## Usage

```sh
Usage: shwal [OPTIONS] [FILE]
Set wallpaper and generate colorscheme from an image.

Options:
  -w <image>    Set wallpaper.
  -i <image>    Set wallpaper, generate colorscheme, templates from <image>.
  -r            Restore wallpaper.
```

## Installation

```bash
git clone https://github.com/tmpstpdwn/shwal.git
cd shwal
mv src/shwal ~/.local/bin
mkdir -p ~/.config/shwal
mv config/* ~/.config/shwal
```

- Make sure that `~/.local/bin` is in `$PATH`.

## Dependencies

- `ImageMagick` (magick) for color extraction.
- `feh` for setting wallpaper.
- `bc` for arithmetic, if you already dont have it.

## Configuration

- Templates are stored in `$HOME/.config/shwal/templates`.
- The way templates work is that you can store your template files in this folder.
-  inside a template file colors can be substituted from the generated colorscheme by using `{color-key}`.
- The following are the colorkeys
`foreground`, `background`, `cursor`, `color0` ... `color15`.
- Colorschemed templates generated are stored in `$HOME/cache/shwal`.

## License

This project is licensed under the GPLv3 [License](LICENSE).
