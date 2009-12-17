# Include hook code here

require 'version_detector'

ActiveRecord::Base.logger.info "ver. #{VersionDetector::VERSION}"
