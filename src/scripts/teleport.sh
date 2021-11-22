Teleport() {
    date
    echo "Starting Teleport"
    curl --insecure -s -X POST "https://${clusterUrl}/api/v1/clusters/${teleClusterId}/volumes" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"destinationHistoryPolicy\": \"${destinationHistoryPolicy}\", \"destinationNamespace\": \"${destinationNamespace}\", \"destinationPvcName\": \"${destinationPvcName}\", \"destinationStorageClass\": \"${destinationStorageClass}\", \"sourceClusterId\": \"${clusterId}\", \"sourceVolumeId\": \"${sourceVolumeIdsure}\"}" 

}


    Teleport

