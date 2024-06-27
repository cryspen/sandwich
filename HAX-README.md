# Extracting code
 - `./hax.sh extract` extracts just `sandwich::tunnel::tls`
 - `./hax.sh extract-interfaces` tries to extracts as many interfaces
   as possible. Note that the generated interfaces needs tweaks, the
   generated interfaces contains some mutually recursive
   modules. Also, some external dependencies in those interfaces are
   still missing.

# Local version of `proof-libs`
The Makefile for F* in this repo uses Cargo to find F* libraries. If
you need to edit manually the F* proof-libs, you need to change
`Cargo.toml` to pin the dependency `hax-lib` to the right local path.

The following line should be changed from:
```toml
hax-lib = { git = "https://github.com/hacspec/hax", version = "0.1.0-pre.1" }
```

to:

```toml
hax-lib = { path = "/the/path/to/hax/hax-lib" }
```

# Typecheck F*
The makefile are using Cargo to find F* libraries, including local
extractions of the various crates of the workspace. So the makefiles
are quite portable, it should be easy to just copy paste them in other
proof folders.

Run `OTHERFLAGS="--lax" make` in:
 1. `./rust_vendor/openssl3/proofs/fstar/extraction`
 2. `./rust_vendor/sandwich-proto/proofs/fstar/extraction`
 3. `./rust_vendor/sandwich-api-proto/proofs/fstar/extraction`
 4. `./proofs/fstar/extraction`

## Status
### `sandwich-proto`
First error:
```
* Error 134 at Sandwich_proto.Io.fsti(10,28-10,33):
  - Namespace Protobuf.Reflect.Enums cannot be found
```

### `openssl3`
Lax-checks (after an edit, some "hax_dropped_body" call was inserted wrongly in a constant -- we should fix that in hax)

### `sandwich-api-proto`
First error:
```
* Error 72 at Sandwich_api_proto.Compliance.fsti(26,30-26,40):
  - Identifier not found: [Protobuf.Enum_full.t_EnumFull]
  - Module Protobuf.Enum_full does not belong to the list of modules in scope,
    namely:
  ...
```

### `sandwich` itself
First error:
```
* Error 72 at Sandwich.Support.Data_source.fsti(12,36-12,41):
  - Identifier not found: [Alloc.Borrow.t_Cow]
  - Module Alloc.Borrow does not belong to the list of modules in scope, namely:
  ...
```
