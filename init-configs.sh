
if [ $1 = "clean" ];
  then
    echo "Cleaning previous build dirs..."
    rm -rf ../build-release ../build-debug .bdep
fi

bdep init --empty

bdep config create @release ../build-release cc config.config.load=build/clang.release.config
bdep config create @debug ../build-debug cc config.config.load=build/clang.debug.config
bdep config link @debug @release

bdep init --all

