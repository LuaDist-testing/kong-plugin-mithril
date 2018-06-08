-- This file was automatically generated for the LuaDist project.

package = "kong-plugin-mithril"  -- TODO: rename, must match the info in the filename of this rockspec!
                                 -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.0.12-1"             -- TODO: renumber, must match the info in the filename of this rockspec!

supported_platforms = {"linux", "macosx"}
-- LuaDist source
source = {
  tag = "0.0.12-1",
  url = "git://github.com/LuaDist-testing/kong-plugin-mithril.git"
}
-- Original source
-- source = {
--   url = "git://github.com/edenlabllc/kong-plugin-mithril",
--   tag = "0.0.12"
-- }

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "MIT"
}

dependencies = {
  "lua-resty-http == 0.11",
  "lrexlib-pcre == 2.9.0-1",
  "lua-resty-cookie == 0.1.0-1",
  "dkjson == 2.5",
}

local pluginName = "mithril"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}