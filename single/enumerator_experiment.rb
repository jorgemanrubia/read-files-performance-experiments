module Single
  class EnumeratorExperiment < BaseExperiment
    def run
      count = 0

      enumerator = File.foreach(file)

      loop do
        count += enumerator.next.to_i
      end

      count
    end
  end
end

