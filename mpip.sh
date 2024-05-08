function mpip() {
    echo "[mpip]"
    echo "venv: ${VIRTUAL_ENV}"
    CMD=${1} # install, uninstall, list
    ARG=${@:2} # any
    if [ -z "$VIRTUAL_ENV" ]; then
        echo "venv: NOT active"
    else
        echo "venv: Active"
        echo "cmd: ${CMD}, arg: [${ARG}]"
        SRC=$(realpath "${VIRTUAL_ENV}/Scripts/python.exe")
        echo "line: ${SRC} -m pip ${CMD} ${ARG}"
        ${SRC} -m pip ${CMD} ${ARG}
    fi
}

