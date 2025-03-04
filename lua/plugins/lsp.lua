return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--query-driver=/usr/bin/clang++,/opt/homebrew/bin/g++",
        },
        init_options = {
          fallbackFlags = {
            "-std=c++17",
            "--stdlib=libc++",
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
