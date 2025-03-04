
local function find_clangd()
  local paths = { "/usr/bin/clangd", "/usr/local/bin/clangd", "/opt/llvm/bin/clangd" }
  for _, path in ipairs(paths) do
    if vim.fn.executable(path) == 1 then
      return path
    end
  end
  return "clangd" -- Fallback to system default
end

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = {
          find_clangd(),
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          -- "--query-driver=/usr/bin/clang++,/opt/homebrew/bin/g++",
        },
        init_options = {
          fallbackFlags = {
            "-std=c++17",
            -- "--stdlib=libc++",
            "-I/usr/include",
            "-I/usr/include/c++/11", -- Adjust to match your GCC version
            "-I/usr/lib/gcc/x86_64-linux-gnu/11/include", -- Adjust if needed
            "-I/usr/local/include",
            "-I/usr/include/x86_64-linux-gnu",
            -- Apple Silicon Mac paths
            "-I/opt/homebrew/opt/llvm/include/c++/v1",
            "-I/opt/homebrew/include",
            "-I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include",
            "-I/Library/Developer/CommandLineTools/usr/include/c++/v1",
            "-I/Library/Developer/CommandLineTools/usr/include",
            "-I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1",
            "-I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include",
          }
        }
      },
    },
  },
}
