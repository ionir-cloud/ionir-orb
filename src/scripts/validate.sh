validate() {
    date
    # shellcheck disable=SC2154
    if curl -o /dev/null --head --silent --fail "https://${clusterUrl}" 2> /dev/null ;
    then
    echo "This URL is ok."
    else
    echo "This URL does not exist."
    fi

}
# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
echo "$0"
if [ "${0#*$ORB_TEST_ENV}" = "$0" ]; then
    validate
fi