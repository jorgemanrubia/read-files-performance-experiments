class ExperimentRunner
  class << self
    def check_result(result)
      @expected ||= result
      raise "Wrong result? #{result} (expected #{@expected})" if result != @expected
    end

    def run(experiment)
      print_title(experiment)
      run_measuring_time(experiment)
      run_profiling_memory(experiment)
    end

    private

    def print_title(experiment)
      separator = "*" * experiment.name.length
      puts "\n#{separator}\n#{experiment.name}\n#{separator}\n"
    end

    def run_measuring_time(experiment)
      benchmark_result = Benchmark.measure do
        result = experiment.run
        check_result(result)
      end

      puts "Time: #{benchmark_result.total.round(3)} seconds"
    end

    def run_profiling_memory(experiment)
      memory = GetProcessMem.new
      memory_before = memory.mb
      experiment.run
      memory_after = memory.mb
      total_memory = (memory_after - memory_before).round(3)
      puts "Memory: #{[total_memory, 0].max} MB"
    end
  end
end
