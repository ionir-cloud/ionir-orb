# Runs prior to every test
setup() {
    # Load our script file.
    source ../scripts/validate.sh
}

@test '1: test Validate' {
    # Mock environment variables or functions by exporting them (after the script has been sourced)
    export clusterUrl="localhost"
    # Capture the output of our "validate" function
    result=$(validate)
    [ "$result" == "Hello World" ]
}