# Dotenv Parser
A simple Lua module to load environment variables from a `.env` file.

## Installation
You can install the `dotenv` module using LuaRocks:

```bash
luarocks install dotenv
```
## Usage
```lua
require "dotenv".config()

print(os.getenv("MY_VARIABLE")) 
print(os.getenv("ANOTHER_VARIABLE")) 
```
## Example `.env` file
```
MY_VARIABLE=HelloWorld
ANOTHER_VARIABLE=42
```
## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
## Features
- Loads environment variables from a `.env` file.
- Supports comments and blank lines.
- Handles quoted values.
- Automatically trims whitespace around keys and values.
- Supports multi-line values.