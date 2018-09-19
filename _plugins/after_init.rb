# Copy the content from remote respositories into the jekyll deploy directory
require 'fileutils'

Jekyll::Hooks.register :site, :after_init do |site|
    site.config["repositories"].each do |key, paths|
        FileUtils.cp_r(paths["origin"],paths["destination"])
    end
end
