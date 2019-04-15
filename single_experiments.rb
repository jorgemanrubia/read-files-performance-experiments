require_relative 'common'

[
    Single::InMemoryExperiment,
    Single::InternalIteratorExperiment,
    Single::EnumeratorExperiment,
    Single::ExternalIteratorExperiment
].each do |klass|
  ExperimentRunner.run klass.new('data/file.txt')
end
