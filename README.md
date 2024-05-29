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
- `-i <image>` : This option will set <image> as wallpaper, generate and apply colorcheme, process templates with the new colorcheme, run the `script` file.
- `j <json>`   : This flag can be used to load a colorscheme from a json file. 
- `-r`         : This flag will reset the wallpaper to the last used one. this flag should be used to put wallpaper
                 on the screen after a reboot. put it in your startscript.


## Installation

Clone this repository.
Make the script executable:

```sh
chmod +x setup.sh
```
Run the script and the program should be installed to your `$HOME/.local/bin`. make sure that this path is in
the `$PATH` variable.
The `setup.sh` also installs some configs to your `$HOME/.config/shwal`.

## Dependencies

- `ImageMagick` (magick) for color extraction.
- `feh` for setting wallpaper.
- `jq` for setting colorsheme from json files. 

## Configuration

- Current wallpaper path, Colorschemed templates generated are stored in `$HOME/cache/shwal`.
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
    
  - ## `$HOME/.config/shwal/script`
    
    A shell script that will automaticaly be run after colorscheme generation. This script can be used to
    to execute anything you would like after the colorschemes are generated for example i use it to enforce
    the theme generated to xmonad, mpv, dunst etc .. by using `sed` to change color variable values in their configs and
    reload those software with new colorscheme.
    This is a good workaround for those software for whom you dont know how color templates are to be made / imported to the
    respective configs etc ...

  - ## `$HOME/.config/shwal/colorschemes`
    
    This folder have an extensive collection of dark and light themes saved as json files which can be used with shwal. This folder was taken from the `pywal` project.

- Customize the script to match your setup.

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests.

## License

This project is licensed under the GPLv3 License.

