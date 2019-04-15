module Multiple
  class ThreadsAndQueuesExperiment < BaseExperiment
    def run
      queues = Array.new(files.length) { Queue.new }

      threads = files.collect.with_index do |file, index|
        queue = queues[index]
        Thread.new do
          File.foreach(file) do |line|
            queue << line.to_i
          end
          queue.close
        end
      end

      count = 0

      loop do
        numbers = queues.collect { |queue| queue.pop.to_f }
        count += numbers.reduce(:-)

        break unless queues.find{|queue| !queue.empty? || !queue.closed?}
      end

      threads.each(&:join)

      count
    end
  end
end
