class BaseExperiment
  attr_reader :files

  def initialize(*files)
    @files = files
  end

  def file
    @file ||= files[0]
  end

  def name
    self.class.name
  end
end
