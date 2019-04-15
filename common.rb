require 'benchmark'
require 'get_process_mem'
require 'zeitwerk'

loader = Zeitwerk::Loader.new
loader.push_dir('.')
loader.setup

