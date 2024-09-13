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
  -i <image>    Set wallpaper and generate colorscheme from <image>.
  -j <json>     load colorscheme from <json>.
  -r            Restore wallpaper.

Examples:
  shwal -i ~/Pictures/wallpaper.jpg
  shwal -j ~/Files/gruvbox.json
  shwal -r

Note:
  -i will set the wallpaper and also change the colorschome while.
  -j will only make changes to the colorscheme.
```
- `-i <image>`  : This option will set <image> as wallpaper, generate colorcheme, process templates with the new colorcheme. also
                  run a script assigned to `SCRIPT` variable inside the `shwal` script file.
- `-j <json>`   : This flag can be used to load a colorscheme from a json file, process templates with the new colorcheme. also
                  run a script assigned to `SCRIPT` variable inside the `shwal` script file. 
- `-r`          : This flag will reset the wallpaper to the last used one. this flag should be used to put wallpaper
                  on the screen after a reboot. put it in your startscript.

## Installation

- Clone this repository.
- `cd Shwal`
- Move the `src/shwal` script to a directory in your path variable.
- Move the `.config/shwal` to `~/.config/shwal`. This will give you access to a whole colldection of premade themes stored in json format
  , also to some pre-made templates.
- After these steps, `shwal` command can be run as per the options given in the `Usage` section.

## Dependencies

- `ImageMagick` (magick) for color extraction.
- `feh` for setting wallpaper.
- `jq` for setting colorsheme from json files. 
- `bc` for arithmetic, if you already dont have it.

## Configuration

- Current wallpaper path, Colorschemed templates generated are stored in `$HOME/cache/shwal`.
- Additionaly an external script or program can be run after a colorscheme is generated. How this can be done is 
  specified inside the `Usage` section.
- Config files as stored in `$HOME/.config/shwal`. The following are the contents of the this folder:
  
  - ## `$HOME/.config/shwal/templates`
    A folder where templates can be stored.
    The way templates work is that you can store your template files in this folder. inside a template file
    colors can be substituted from the generated colorscheme by using `{color-key}`.
    The following are the colorkeys
    `foreground`, `background`, `cursor`, `color0` ... `color15`.

    The following is an example of a `rofi` color template.

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
    
  - ## `$HOME/.config/shwal/colorschemes`
    This folder have an extensive collection of dark and light themes saved as json files which can be used with shwal. This folder was taken from the `pywal` project.
    
  - ## `$HOME/.config/shwal/scripts`
    This folder contains an example external script that applies the sourced colors to softwares like zathura, dunst, polybar and also to xmonad wm.

- Customize the script to match your setup.

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests.

## License

This project is licensed under the GPLv3 [License](LICENSE).

