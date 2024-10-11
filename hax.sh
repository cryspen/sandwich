function extract() {
    # Extract the `sandwich` crate as F* code
    cargo hax -C -p sandwich \; \
          into -i '-** +!sandwich::tunnel::** -sandwich::tunnel::ffi +sandwich::implementation::openssl3::**' \
          fstar --interfaces '+!** +sandwich::tunnel::** -sandwich::tunnel::ffi +sandwich::implementation::openssl3::**'
}

function extract_interfaces() {
    extract
    # Using `hax` on branch `experimental-sandbox-tweaks`, we get a
    # list of things to extract in "/tmp/idents.json"

    function to_flags() {
        grep -v 'Constructor$' | grep -v 'Field$' | grep -v "AssociatedItem$" | cut -d$'\t' -f2 | sort -u | xargs -IX printf '+:%s ' "X"
    }
    
    # Compute a include clause
    FLAGS=""
    FLAGS=$(
        {
            echo "$FLAGS"
            cat /tmp/idents.json
        } | sort -u
         )

    export HAX_RUSTFMT="no"
    CONTINUE=y
    # Extract interfaces
    while [ "$CONTINUE" = "y" ]; do
        CONTINUE=n
        for PACKAGE in openssl3 sandwich-api-proto sandwich-proto sandwich; do
            rm /tmp/idents.json
            cargo hax -C -p "$PACKAGE" \; into -i "-** $(echo "$FLAGS" | to_flags)-sandwich::tunnel::tls::**" --make-impl-interfaces-opaque fstar --interfaces '+!**'
            PREV_FLAGS=$(echo "$FLAGS")
            FLAGS=$(
                {
                    echo "$FLAGS"
                    cat /tmp/idents.json
                } | sort -u
                 )
            if [ "$FLAGS" = "$PREV_FLAGS" ]; then
                echo "No new dependencies for this crate"
            else
                echo "New definitions found, iterating..."
                CONTINUE=y
            fi
        done
    done

    echo "$FLAGS" > FLAGS.backup
}

function extract_shim() {
    (
        cd ./protobuf-shim
        cargo hax into fstar --interfaces '+**'
        cd proofs/fstar/extraction
    )
}

case $1 in
    extract) extract;;
    extract-shim) extract_shim;;
    extract-interfaces) extract_interfaces;;
    *)
        echo 'usage:'
        echo '  hax.sh extract             Extract `sandwich::tunnel::tls` as F*'
        echo '  hax.sh extract-interfaces  Extract interfaces for dependencies as F*'
        echo '  hax.sh extract-shim        Extract `protobuf-shim`'
        exit 1
    ;;
esac

