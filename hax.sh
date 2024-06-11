
function extract() {
    # Extract the `sandwich` crate as F* code
    cargo hax -C -p sandwich \; \
          into -i '-** +~sandwich::tunnel::tls::**' \
          fstar --interfaces '+!** +sandwich::tunnel::tls::**'

    # Extract the `sandwich-proto` crate as an F* interface
    cargo hax -C -p sandwich-proto \; \
          into -i '-** +:**' \
          fstar --interfaces '+!**'
}

function list_names() {
    if ! command -v jq &> /dev/null
    then
        echo "Please install `jq` (see https://jqlang.github.io/jq/)"
        exit 1
    fi

    # Filters items: only the ones defined in `sandwich::tunner::tls` remains
    function filter_sandwich_tunner_tls() {
        jq '[.[] | select(.owner_id.krate == "sandwich") | select(.owner_id.path | map(try .data.TypeNs catch null) | .[0:2] == ["tunnel", "tls"])]'
    }
    
    # Find every definintion identifiers nested inside a JSON blob
    function find_def_ids() {
        jq '[.. | objects | select(has("krate")) | select(has("path"))] | unique'
    }

    # Print def ids in an human readable form
    function prettyprint_def_id() {
        jq '.[] | [.krate, (.path | [.[] | .data | if type == "string" then . else .[(keys | .[0])] end])] | flatten | join("::")' -r
    }

    cargo hax -C -p sandwich \; json -o - \
        | filter_sandwich_tunner_tls \
        | find_def_ids \
              > external-names.json

    cat external-names.json \
        | prettyprint_def_id \
        | grep -v '^sandwich::tunnel::tls' \
        | grep -v '^core::' \
        | grep -v '^alloc::' \
               > external-names.txt
}

case $1 in
    extract) extract;;
    list-names) list_names;;
    *)
        echo 'usage:'
        echo '  hax.sh extract     Extract crates as F*'
        echo '  hax.sh list-names  List names of external dependencies for the `sandwich` crate'
        exit 1
    ;;
esac

