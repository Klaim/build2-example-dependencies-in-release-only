
This demonstrates how to setup a `build2` project with 2 configurations, `@debug` and `@release` but we want the dependencies to only be built in `@release` but be used in both cases (for example when working on linux - void doing that on windows...).
To achieve this we setup `@debug` to be linked to `@release` which means that any package not explicitely initialized in `@debug` will first be looked in `@release`.
We initialize the project in both but the dependencies will only be built in `@release`.
See `init-configs.sh` for the details.

In this example the `hello`  project/package contains multiple targets but they are all built with some flags specific to the project, see `build/root.build` for details.
These flags are not affecting the dependencies. Only the flags in the `debug/clang.debug.config` and `debug/clang.release.config` files are used in all `@debug` and `@release` respectively.


