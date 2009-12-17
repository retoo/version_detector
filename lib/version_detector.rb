# VersionDetector

module VersionDetector
  if File.exists? File.join(RAILS_ROOT, ".git")
    VERSION = `cd #{RAILS_ROOT}; git show-ref --abbrev=8 --head --hash | head -1`
  elsif File.exists? File.join(RAILS_ROOT, ".svn")
    VERSION = `echo $(cd #{RAILS_ROOT}; svn info | egrep '(URL|Revision)' )`
  else
    VERSION = "N/A"
  end
end