puts "Usage 'generate_file <path> <number of random numbers>'" unless ARGV.length == 2

path, count = ARGV

count = count.to_i

puts "Writing #{count} numbers to #{path}..."

File.open(path, 'w') do |file|
  count.times do
    random_number = rand(count)
    file.puts(random_number)
  end
end
