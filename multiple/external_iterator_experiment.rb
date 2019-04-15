class IO
  def next
    gets || raise(StopIteration)
  end
end

module Multiple
  class ExternalIteratorExperiment  < BaseExperiment
    def run
      count = 0

      io_files = files.collect{|file| File.open(file)}

      loop do
        numbers = io_files.collect{|io_file| io_file.next.to_f}
        count += numbers.reduce(:-)
      end

      count
    end
  end
end
