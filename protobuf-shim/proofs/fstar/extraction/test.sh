
    # Prints a path if and only if it exists. Takes one argument: the
    # path.
    function print_if_exists() {
        if [ -d "$1" ]; then
            echo "$1"
        fi
    }
    # Asks Cargo all the dependencies for the current crate or workspace,
    # and extract all "root" directories for each. Takes zero argument.
    function dependencies() {
        cargo metadata --format-version 1 |
            jq -r '.packages | .[] | .manifest_path | split("/") | .[:-1] | join("/")'
    }
    # Find hax libraries *around* a given path. Takes one argument: the
    # path.
    function find_hax_libraries_at_path() {
        path="$1"
        # if there is a `proofs/fstar/extraction` subfolder, then that's a
        # F* library
        print_if_exists "$path/proofs/fstar/extraction"
        # Maybe the `proof-libs` folder of hax is around?
        MAYBE_PROOF_LIBS=$(realpath -q "$path/../proof-libs/fstar")
        if [ $? -eq 0 ]; then
            print_if_exists "$MAYBE_PROOF_LIBS/core"
            print_if_exists "$MAYBE_PROOF_LIBS/rust_primitives"
        fi
    }
    { while IFS= read path; do
          find_hax_libraries_at_path "$path"
      done < <(dependencies)
    } | sort -u
