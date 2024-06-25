
function extract() {
    # Extract the `sandwich` crate as F* code
    cargo hax -C -p sandwich \; \
          into -i '-** +!sandwich::tunnel::tls::**' \
          fstar --interfaces '+!** +sandwich::tunnel::tls::**'
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

case $1 in
    extract) extract;;
    *)
        echo 'usage:'
        echo '  hax.sh extract     Extract crates as F*'
        exit 1
    ;;
esac

