require "java"
require "arsystem/version"
require "./lib/java/arapi81_build001.jar"
require "./lib/java/log4j-1.2.14.jar"

module Arsystem
  include_package "com.bmc.arsys.api"
end
