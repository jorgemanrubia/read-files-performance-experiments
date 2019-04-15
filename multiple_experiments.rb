require_relative 'common'

[
  Multiple::InMemoryExperiment,
  Multiple::EnumeratorExperiment,
  Multiple::ExternalIteratorExperiment,
  Multiple::ThreadsAndQueuesExperiment
].each do |klass|
  ExperimentRunner.run klass.new('data/file_1.txt', 'data/file_2.txt', 'data/file_3.txt')
end
