return {
  "p00f/clangd_extensions.nvim",
  opts = {
    inlay_hints = {
      inline = false,
    },
    ast = {
      role_icons = {
        type = "🄣",
        declaration = "📦",
        expression = "🔧",
        statement = ";",
        specifier = "🔍",
        ["template argument"] = "🔹",
      },
      kind_icons = {
        Compound = "",
        Recovery = "",
        TranslationUnit = "",
        PackExpansion = "",
        TemplateTypeParm = "",
        TemplateTemplateParm = "",
        TemplateParamObject = "",
      },
    },
  },
}
