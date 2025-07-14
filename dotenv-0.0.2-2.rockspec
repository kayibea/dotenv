rockspec_format = "3.0"
package = "dotenv"
version = "0.0.2-2"
source = {
   url = "git://github.com/kayibea/dotenv.git"
}
description = {
   summary = "A simple Lua module to load environment variables from a .env file.",
   detailed = [[
This module provides a simple way to load environment variables from a `.env` file into Lua's environment.
It reads key-value pairs from the file, allowing you to use them in your Lua scripts as if they were set in the environment.
It supports basic parsing of the `.env` file format, including handling of comments, whitespace, and quoted values.
    ]],
   homepage = "https://github.com/kayibea/dotenv",
   license = "MIT",
   issues_url = "https://github.com/kayibea/dotenv/issues",
   labels = {
      "lua",
      "dotenv",
      "environment variables",
      "configuration"
   }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      dotenv = "dotenv.lua"
   }
}
