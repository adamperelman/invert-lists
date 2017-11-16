#!/usr/bin/env ruby
INPUT_FILE_PATH = 'input.txt'
OUTPUT_FILE_PATH = 'output.txt'

def build_values_to_keys(path)
  values_to_keys = {}
  File.open(path, 'r') do |f|
    f.each_line do |l|
      key, values_str = l.split(':')
      values = values_str.split(',').map(&:strip)

      values.each do |value|
        values_to_keys[value] ||= []
        values_to_keys[value] << key
      end
    end
  end

  values_to_keys
end

def write_values_to_keys(values_to_keys, path)
  File.open(path, 'w') do |f|
    values_to_keys.sort.each do |value, keys|
      line = "#{value}: #{keys.sort.join(', ')}"
      f.puts(line)
    end
  end
end

def main
  values_to_keys = build_values_to_keys(INPUT_FILE_PATH)
  write_values_to_keys(values_to_keys, OUTPUT_FILE_PATH)
end

main
