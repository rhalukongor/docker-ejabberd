#!/bin/bash
set -e

source "${EJABBERD_ROOT}/bin/scripts/lib/config.sh"
source "${EJABBERD_ROOT}/bin/scripts/lib/functions.sh"


copy_cluster_script() {
    export EJABBERD_BIN_PATH="${EJABBERD_ROOT}/bin"

    cp "${EJABBERD_ROOT}/bin/scripts/joincluster" ${EJABBERD_BIN_PATH}
    chmod +x "${EJABBERD_BIN_PATH}/joincluster"
}

join_cluster() {
    copy_cluster_script
    echo "Wait for node ${EJABBERD_MASTER_NODE}..."
    sleep 6
    echo "Join cluster at node ${EJABBERD_MASTER_NODE}... "
    ${EJABBERDCTL} join_cluster ${EJABBERD_MASTER_NODE}
}


is_set ${EJABBERD_MASTER_NODE} \
    && join_cluster

exit 0
