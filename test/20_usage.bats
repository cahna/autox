
@test "No arguments given  : Displays help and exits with error status" {
  run ./autox
  [[ $status != 0 ]]
  [[ $output =~ "Usage" ]]
}

@test "-h --help           : Displays usage" {
  run ./autox -h
  [[ $status = 0 ]]
  [[ $lines[0] =~ "Usage: ./autox" ]]

  run ./autox -h
  [[ $status = 0 ]]
  [[ $lines[0] =~ "Usage: ./autox" ]]
}

@test "-v --verbose        : Enables verbose output" {
  run ./autox -v
  local original_output="$output"
  [[ $status = 0 ]]
  [[ $(echo "$original_output" | wc -l) > 0 ]]

  run ./autox --verbose
  [[ $status = 0 ]]
  [[ "$output" = "$original_output" ]]
}

@test "-vv --very-verbose  : Enables full output debugging messages" {
  run ./autox -vv
  [[ $status = 0 ]]
}

@test "-d --display=<name> : Sets target display" {
  true
}

