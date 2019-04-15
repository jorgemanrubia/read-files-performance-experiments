## Experiments for processing big text files with Ruby

This are a set of experiments for testing the performance of approaches for processing big ruby text files.

[Read the companion blog post](#)

### Single file

| Name                       | Time   | Memory    |
|---|---|---|
| [`InMemoryExperiment`](https://github.com/jorgemanrubia/read-files-performance-experiments/blob/24c32f76d96db58606bae3d023f673a881341bcd/single/in_memory_experiment.rb#L2-L3) | 1.686s | 4125MB |
| [`InternalIteratorExperiment`](https://github.com/jorgemanrubia/read-files-performance-experiments/blob/aaf4eb0c0ac7a4d0a9c519f32ce946cf4dea2668/single/internal_iterator_experiment.rb#L2) | 1.219s | 0MB       |
| [`EnumeratorExperiment`](https://github.com/jorgemanrubia/read-files-performance-experiments/blob/aaf4eb0c0ac7a4d0a9c519f32ce946cf4dea2668/single/enumerator_experiment.rb#L2)       | 2.462s | 0MB       |
| [`ExternalIteratorExperiment`](https://github.com/jorgemanrubia/read-files-performance-experiments/blob/efcd3902e5995a468c173fd3be90c10a4ac2df9e/single/external_iterator_experiment.rb#L2) | 1.279s | 0MB       |


### Multiple files

| Name                       | Time   | Memory    |
|---|---|---|
| [`InMemoryExperiment`](https://github.com/jorgemanrubia/read-files-performance-experiments/blob/24c32f76d96db58606bae3d023f673a881341bcd/single/in_memory_experiment.rb) | 3.824s | 175.6MB |
| [`EnumeratorExperiment`](https://github.com/jorgemanrubia/read-files-performance-experiments/blob/b2eded116f65ee779e6d678eb0901fbe6a265724/multiple/enumerator_experiment.rb)       | 4.919s | 0MB       |
| [`ExternalIteratorExperiment`](https://github.com/jorgemanrubia/read-files-performance-experiments/blob/b2eded116f65ee779e6d678eb0901fbe6a265724/multiple/external_iterator_experiment.rb) | 3.465s | 0MB       |
| [`ThreadsAndQueuesExperiment`](https://github.com/jorgemanrubia/read-files-performance-experiments/blob/7861db0af4dd580dca217e4025501ae264299640/multiple/threads_and_queues_experiment.rb) | 4.936s | 0MB       |

### Run the tests

```
ruby single_experiments.rb # run single-file processing experiments
ruby mutiple_experiments.rb # run multiple-file processing experiments
```

If you want to generate synthetic text files:

```
ruby generate_file <file name> <number of lines to generate>
```

