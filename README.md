# lmask

> Small library of input masks for lua inspired by [v-mask](https://github.com/probil/v-mask).

## Dependencies

- [Lua5.1+](https://www.lua.org/download.html) (or [LuaJIT 2.0+](https://luajit.org/))

## Initialization

```lua
local lmask = require("lmask")
```

## Usage

Phone number
```lua
local phoneNumber = lmask('(####)-##-##-###', '04128692598')
-- (0412)-86-92-598
```

Passport document
```lua
local passportDocument = lmask('A-########-#', 'J234176882')
-- J-23417688-2
```

Here is a list placeholders you can utilize by default:

| Placeholder | Format                         |
|-------------|--------------------------------|
| #           | Number (0-9)                   |
| A           | Letter in any case (a-z,A-Z)   |

## License

lmask is available under the MIT license. Details can be found in the [LICENSE](LICENSE) file.
