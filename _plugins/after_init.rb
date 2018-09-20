# Copy the content from remote respositories into the jekyll deploy directory
require 'fileutils'

Jekyll::Hooks.register :site, :after_init do |site|
    site.config['documentation_repos'].each do |repo_dir|
        STDOUT.puts "Path to repo to copy: #{File.join(site.source, "_remotes", repo_dir)}".green
        STDOUT.puts "Destination path: #{File.join(site.source)}".green
        FileUtils.rm_rf(File.join(site.source, repo_dir))
        FileUtils.cp_r(File.join(site.source, "_remotes", repo_dir), File.join(site.source))
    end
end
