
@test "No arguments given causes exit with error" {
  run ./autox
  [[ $status != 0 ]]
  [[ $output =~ "usage" ]]
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
  run ./autox
  local control_status="$status"
  local control_output="$output"

  [[ $control_status != 0 ]]
  [[ $(echo "$control_output" | wc -l) > 0 ]]

  run ./autox -v
  local test_status="$status"
  local test_output="$output"

  [[ $status_status != 0 ]]
  [[ $(echo "$control_output" | wc -l) < $(echo "$test_output" | wc -l) ]]
}

@test "-d --display=<name> : Sets target display" {
  true
}

