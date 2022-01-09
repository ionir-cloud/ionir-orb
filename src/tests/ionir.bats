# Not Implemented in this version. Skipped.

# Runs prior to every test
setup() {
    # Load our script file.
    source .src/scripts/validate.sh
}

@test '1: test validate' {
    # Mock environment variables or functions by exporting them (after the script has been sourced)
    export clusterUrl="localhost"
    # Capture the output of our "validate" function
    result=$(validate)
    [ "$result" == "This URL is ok." ]
}