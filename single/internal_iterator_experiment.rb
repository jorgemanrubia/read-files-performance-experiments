module Single
  class InternalIteratorExperiment < BaseExperiment
    def run
      count = 0

      File.foreach(file) do |line|
        count += line.to_i
      end

      count
    end
  end
end

