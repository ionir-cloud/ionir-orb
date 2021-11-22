Clone() {
    date
    echo "Starting Clone"
    curl --insecure -s -X POST "https://${clusterUrl}/api/v1/clusters/${clusterId}/volumes/clone" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"destinationHistoryPolicy\": \"${destinationHistoryPolicy}\", \"destinationNamespace\": \"${destinationNamespace}\", \"destinationPvcName\": \"${destinationPvcName}\", \"sourceNamespace\": \"${sourceNamespace}\", \"sourceTimeTag\": \"${sourceTimeTag}\", \"sourceVolumeId\": \"${sourceVolumeIdsure}\"}" 

}

Clone
