module Single
  class ExternalIteratorExperiment < BaseExperiment
    def run
      count = 0

      File.open(file) do |file|
        while line = file.gets do
          count += line.to_i
        end
      end

      count
    end
  end
end
