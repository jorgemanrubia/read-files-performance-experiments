module Multiple
  class InMemoryExperiment < BaseExperiment
    def run
      lines_lists = files.collect{|file| File.readlines(file)}

      count = 0

      lines_lists[0].length.times do |index|
        numbers = lines_lists.collect { |lines| lines[index].to_f }
        count += numbers.reduce(:-)
      end

      count
    end
  end
end
