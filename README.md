# lollipop

a new and shiny haxe game engine that's designed to be fast and usuable

## features

not much yet, very wip project 👍

## compiling

### dependencies

most libraries are preinstalled into the project, but for any dependencies
it is recommended to simply install [hmm](https://github.com/andywhite37/hmm) and run `hmm install`, since that's what the
project uses for dependency management.

### no hxcpp

many haxe game engines compile to desktop targets with [hxcpp](https://github.com/HaxeFoundation/hxcpp), however this
project forgos its use and instead opts to use the [reflaxe.CPP](https://github.com/SomeRanDev/reflaxe.CPP)
target instead.

this is mostly because of reflaxe's increased performance, ease of use,
and modernity. (as well as the fact i thought it would be interesting to test its limits)
