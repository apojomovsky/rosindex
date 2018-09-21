# Copy the content from remote respositories into the jekyll deploy directory
require 'fileutils'

Jekyll::Hooks.register :site, :after_init do |site|
    site.config['documentation_repos'].each do |repo_dir|
        origin = File.join(site.source, "_remotes", repo_dir)
        dest = File.join(site.source) 
        to_delete = File.join(site.source, repo_dir) 
        if File.directory?(to_delete)
        FileUtils.rm_r(to_delete)
        end
        if File.directory?(origin)
            FileUtils.cp_r(origin, dest)
        end
    end
end
