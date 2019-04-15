module Single
  class InMemoryExperiment < BaseExperiment
    def run
      count = 0

      lines = File.readlines(file)
      lines.each do |line|
        count += line.to_i
      end

      count
    end
  end
end

