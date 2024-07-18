#!/usr/bin/env bash

# Shimed modules have a `*_shim` crate name; we need to get rid of
# it. This script creates non-shim F* modules including the shim ones.

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR"

for shim_path in *.fst; do
    shim_module=${shim_path%.fst*}
    path="${shim_path/_shim/}"
    module=${path%.fst*}
    printf "module %s\n\ninclude %s" "$module" "$shim_module" > $path
done
