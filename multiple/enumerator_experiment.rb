module Multiple
  class EnumeratorExperiment < BaseExperiment
    def run
      count = 0

      enumerators = files.collect { |file| File.foreach(file) }

      loop do
        numbers = enumerators.collect{|enumerator| enumerator.next.to_f}
        count += numbers.reduce(:-)
      end

      count
    end
  end
end
