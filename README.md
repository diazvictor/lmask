# lmask

> Small input mask library for lua based on [v-mask](https://github.com/probil/v-mask).

## Dependencies

- [Lua5.1+](https://www.lua.org/download.html) (or [LuaJIT 2.0+](https://luajit.org/))

## Usage

```lua
local lmask = require("lmask")
```

Phone number
```lua
local phoneNumber = lmask('(####)-##-##-###', '04128692598')
-- (0412)-86-92-598
```

Passport document
```lua
local passport = lmask('A-########-#', 'J234176882')
-- J-23417688-2
```

## License

See the [LICENSE](LICENSE) file for license rights and limitations (MIT).
