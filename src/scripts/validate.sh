validate() {
    date
    if [[ $(curl --head --silent --fail https://$(clusterUrl}) 2> /dev/null]];
    then
    echo "This URL is ok."
    else
    echo "This URL does not exist."
    fi

}


# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    validate
fi
