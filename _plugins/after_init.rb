# Copy the content from remote respositories into the jekyll deploy directory
require 'fileutils'

Jekyll::Hooks.register :site, :after_init do |site|
    STDOUT.puts "HOLA HOLA HOLA HOLA".green
    STDOUT.puts "HOLA HOLA HOLA HOLA".green
    site.config.documentation_repos.each do |repo_dir|
        STDOUT.puts "Path to repo to copy: #{File.join(site.source, "_remotes", repo_dir)}".green
        #FileUtils.rm_rf(File.join(site.source, "_remotes", repo_dir)
        #FileUtils.cp_r(repo_dir)
    end
end
