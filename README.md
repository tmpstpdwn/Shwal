# shwal

- `shwal` is a bash script to set wallpaper and generate color schemes from an image.
- primarily useful for Linux Desktops running standalone WM.
- It allows you to use templates so that new colorschemes can be applied across many softwares effortlessly.

## shwal integrated with lf filemanager.

![Alt Text](https://s10.gifyu.com/images/SfDyQ.gif)

## Features

- Set wallpaper and generate color scheme from an image.
- Automatically apply the color scheme to various applications via `templates`.
- Automatically Execute a `script` after setting the color scheme.  
- Reload the color scheme on some software (e.g. xrdb, polybar) using a `reloader` script.
  
## Usage

```sh
Usage: shwal [OPTIONS] [FILE]

Options:
  -i FILE    Set wallpaper and generate color scheme from FILE.
  -r         Restore wallpaper and reload color scheme.

Examples:
  shwal -i ~/Pictures/wallpaper.jpg
  shwal -r
```
- `-i FILE` : This option will set FILE as wallpaper, generate colorcheme, process templates with the new colorcheme, run the `script` file, 
            run the `reloader` file.
- `-r`      : This will set the wallpaper and run the `reloader` file. `shwal -r` should be included in your startupscript to reload last used
            wallpaper and also to reload the temporary color settings inside `reloader` after a restart.

## Installation

Clone this repository.
Make the script executable:

```sh
chmod +x shwal
```
Run the script as described in the Usage section.

## Dependencies

- ImageMagick (magick) for color extraction.
- feh for setting wallpaper.

## Configuration

- Current wallpaper path, Colorschemed templates generated are stored in `$HOME/cache/shwal`.
- Config files as stored in `$HOME/.config/shwal`. The following are the contents of the this folder:
  
  - ## `$HOME/.config/shwal/templates`
    A folder where templates can be stored.
    The way templates work is that you can store your template files in this folder. inside a template file
    colors can be substituted from the generated colorscheme by using `{color-key}`.
    The following are the colorkeys
    `foreground`, `background`, `color0`, `color1`, `color2`, `color3`,
    `color4`, `color5`, `color6`, `color7`, `color8`, `color9`, `color10`,
    `color11`, `color12`, `color13`, `color14`, `color15`.

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
    
  - ## `$HOME/.config/shwal/script`
    A shell script that will automaticaly be run after colorscheme generation. This script can be used to
    to execute anything you would like after the colorschemes are generated for example i use it to enforce
    the theme generated to xmonad, mpv, dunst etc .. by using `sed` to change color variable values in their configs and
    reload those software with new colorscheme.
    This is a good workaround for those software for whom you dont know how color templates are to be made, imported to the
    respective configs etc ...
    
  - ## `$HOME/.config/shwal/reloader`
    A shell script where Temporary colorsettings can be set such as exporting xrdb colors etc...
    This i use mainly to refresh xrdb colors based on current colorschemes because some software i use
    source colors from xrdb.
    Also this change in xrdb colors is temporary therefor this script is run whenever wallpaper changes
    or system restarts.


- Customize the OUTPUT_DIR, TEMPLATE_DIR, SCRIPT, and RELOADER variables inside the script to match your setup.

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests.

## License

This project is licensed under the GPLv3 License.

