local function options(root_dir, workspace_dir)
	local jdtls_bin = vim.fn.stdpath("data") .. "/mason/bin/jdtls"
	local home = os.getenv("HOME")
	return {
		cmd = {
			jdtls_bin,

			-- Use the workspace_folder defined above to store data for this project
			'-data',
			workspace_dir,
		},
		settings = {
			java = {
				signatureHelp = { enabled = true },
				imports = { enabled = true },
				rename = { enabled = true },
				contentProvider = { preferred = 'fernflower' }, -- Use fernflower to decompile library code
				-- Specify any completion options
				completion = {
					favoriteStaticMembers = {
						'org.hamcrest.MatcherAssert.assertThat',
						'org.hamcrest.Matchers.*',
						'org.hamcrest.CoreMatchers.*',
						'org.junit.jupiter.api.Assertions.*',
						'java.util.Objects.requireNonNull',
						'java.util.Objects.requireNonNullElse',
						'org.mockito.Mockito.*',
					},
					filteredTypes = {
						'com.sun.*',
						'io.micrometer.shaded.*',
						'java.awt.*',
						'jdk.*',
						'sun.*',
					},
				},
				-- Specify any options for organizing imports
				sources = {
					organizeImports = {
						starThreshold = 9999,
						staticStarThreshold = 9999,
					},
				},
				-- How code generation should act
				codeGeneration = {
					toString = {
						template =
						'${object.className}{${member.name()}=${member.value}, ${otherMembers}}',
					},
					hashCodeEquals = {
						useJava7Objects = true,
					},
					useBlocks = true,
				},
				project = {
					referencedLibraries = {
						home .. '/Developer/web-app/java/extlib/**.*',
					},
				},
			},
		},
	}
end

local function setup()
	local pkg_status, jdtls = pcall(require, "jdtls")
	if not pkg_status then
		vim.notify("unable to load nvim-jdtls", vim.log.levels.ERROR)
		return {}
	end

	local root_markers = { ".gradle", "gradlew", ".git", "mvnw", "build.xml" }
	local root_dir = jdtls.setup.find_root(root_markers)
	local home = os.getenv("HOME")
	local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
	local workspace_dir = home .. "/.cache/jdtls/workspace/" .. project_name
	local opts = options(root_dir, workspace_dir)

	local on_attach = function(_, _)
		jdtls.setup_dap({ hotcodereplace = "auto" })
		jdtls.dap.setup_dap_main_class_configs()
	end

	opts.on_attach = on_attach
	opts.capabilities = vim.lsp.protocol.make_client_capabilities()

	return opts
end

return { setup = setup }
