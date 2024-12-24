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
  -i <image>    Set wallpaper, generate colorscheme from <image>.
  -j <json>     load colorscheme from <json>.
  -r            Restore wallpaper.
```

- `-w <image>`  : This option will set 'image' as wallpaper.
- `-i <image>`  : This option will set 'image' as wallpaper, generate colorcheme, save the colorscheme and also process templates.
- `-j <json>`   : This flag can be used to load a colorscheme from a json file and also process templates.
- `-r`          : This flag will reset the wallpaper to the last used one.

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
- `jq` for setting colorsheme from json files. 
- `bc` for arithmetic, if you already dont have it.

## Configuration

- ### Templates :
  
    - Templates are stored in `$HOME/.config/shwal/templates`.
    - The way templates work is that you can store your template files in this folder.
    -  inside a template file colors can be substituted from the generated colorscheme by using `{color-key}`.
    - The following are the colorkeys
    `foreground`, `background`, `cursor`, `color0` ... `color15`.
  
    - The following is an example of a color template.
  
      ```
      * {
      background: {background};
      background-alt: {background};
      foreground: {foreground};
      selected: {cursor};
      active: {color10};
      urgent: {color9};
      }
      ```
  
   - Colorschemed templates generated are stored in `$HOME/cache/shwal`.

- ### Saved colorschemes.
    Colorschemes generated will be saved in `$HOME/.config/shwal/jsons` as json, so that it can be reloaded later.

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests.

## License

This project is licensed under the GPLv3 [License](LICENSE).

