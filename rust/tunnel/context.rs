// Copyright (c) SandboxAQ. All rights reserved.
// SPDX-License-Identifier: AGPL-3.0-only

//! Defines [`Context`] trait.
//!
//! ## [`Context`] trait
//!
//! [`Context`] trait is the entrypoint for Sandwich. It is created
//! from a protobuf configuration (see `proto/api/v1`).
//!
//! A [`Context`] is tied to a specific underlying implementation and a
//! protocol. From it, developers may spawn tunnels (see [`Tunnel`].
//! Any objects derived from a [`Context`] will use its configuration.

use pb::ConfigurationError;
use pb_api::configuration;

#[cfg(any(feature = "openssl1_1_1", feature = "boringssl"))]
use crate::implementation::ossl;

use super::Tunnel;

use crate::{
    io::listener::try_from,
    tunnel::{tls, BoxedIO, IO},
};

/// Mode for a [`Context`].
///
/// A [`Context`] is either a context for client-side applications or
/// server-side applications.
#[derive(PartialEq, Eq, Copy, Clone, Debug)]
pub(crate) enum Mode {
    /// Client mode.
    Client,
    /// Server mode.
    Server,
}

/// The result type of [`Context::new_tunnel`].
/// In case of success, [`Context::new_tunnel`] returns the tunnel.
/// In case of error, [`Context::new_tunnel`] returns an error code
/// ([`crate::Error`]) along with the I/O that was meant to be used to create
/// the tunnel.
/// Returning the I/O interface in case of error allows the caller to re-use it
/// without having to create a new one.
pub type TunnelResult<'a> = Result<Tunnel<'a>, (crate::Error, BoxedIO)>;

/// A Sandwich context.
pub enum Context<'a> {
    /// OpenSSL 1.1.1 context.
    #[cfg(feature = "openssl1_1_1")]
    OpenSSL1_1_1(ossl::openssl1_1_1::Context<'a>),

    /// BoringSSL context.
    #[cfg(feature = "boringssl")]
    BoringSSL(ossl::boringssl::Context<'a>),

    /// OpenSSL 3 context.
    #[cfg(feature = "openssl3")]
    OpenSSL3(crate::ossl3::tunnel::Context<'a>),
}

impl std::fmt::Debug for Context<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match self {
            #[cfg(feature = "openssl1_1_1")]
            Self::OpenSSL1_1_1(c) => write!(f, "Context(OpenSSL1_1_1({c:?}))"),
            #[cfg(feature = "boringssl")]
            Self::BoringSSL(c) => write!(f, "Context(BoringSSL({c:?}))"),
            #[cfg(feature = "openssl3")]
            Self::OpenSSL3(c) => write!(f, "Context(OpenSSL3({c:?}))"),
        }
    }
}

#[hax_lib::opaque]
fn shr_hax(e1: crate::Error, e: ConfigurationError) -> crate::Error {
    e1 >> e
}
#[hax_lib::opaque]
fn shr_hax_api(e1: crate::Error, e: pb::APIError) -> crate::Error {
    e1 >> e
}

use std::ops::Shr;
#[allow(unused_variables)]
//#[hax_lib::fstar::before(impl, "assume val configured: Sandwich_api_proto.Configuration.t_Configuration -> bool")]
/*#[hax_lib::fstar::before(impl, "[@@ FStar.Tactics.Typeclasses.tcinstance]
assume val missing_impl: Protobuf.Enums.t_Enum Sandwich_api_proto.Configuration.t_Implementation")]*/
#[hax_lib::requires(fstar!("configured(configuration)"))]
fn hax_try_from<'a>(
    context: &'a crate::Context,
    configuration: &pb_api::Configuration,
) -> crate::Result<Context<'a>> {
    tls::assert_compliance(configuration)?;
    configuration
        .impl_
        .enum_value()
        .map_err(|_| {
            shr_hax(
                shr_hax(
                    crate::Error::new(),
                    ConfigurationError::CONFIGURATIONERROR_INVALID_IMPLEMENTATION,
                ),
                ConfigurationError::CONFIGURATIONERROR_INVALID,
            )
        })
        .and_then(|v| match v {
            #[cfg(feature = "openssl1_1_1")]
            pb_api::Implementation::IMPL_OPENSSL1_1_1_OQS => {
                ossl::openssl1_1_1::Context::try_from(configuration)
                    .map(Self::OpenSSL1_1_1)
                    .map_err(|e| shr_hax(e, ConfigurationError::CONFIGURATIONERROR_INVALID))
            }
            #[cfg(feature = "boringssl")]
            pb_api::Implementation::IMPL_BORINGSSL_OQS => {
                ossl::boringssl::Context::try_from(configuration)
                    .map(Self::BoringSSL)
                    .map_err(|e| shr_hax(e, ConfigurationError::CONFIGURATIONERROR_INVALID))
            }
            #[cfg(feature = "openssl3")]
            pb_api::Implementation::IMPL_OPENSSL3_OQS_PROVIDER => {
                crate::ossl3::tunnel::Context::try_from(context, configuration)
                    .map(Context::OpenSSL3)
                    .map_err(|e| shr_hax(e, ConfigurationError::CONFIGURATIONERROR_INVALID))
            }
            _ => Err(shr_hax(
                shr_hax(
                    crate::Error::new(),
                    ConfigurationError::CONFIGURATIONERROR_INVALID_IMPLEMENTATION,
                ),
                ConfigurationError::CONFIGURATIONERROR_INVALID,
            )),
        })
        .map_err(|e| shr_hax_api(e, pb::APIError::APIERROR_CONFIGURATION))
}

pub mod hax_ghost_code {
    use pb_api::{tunnel_verifier, ClientOptions};

    /* fn ciphersuite_of_ssl_context<S>(context : & SslContext) -> impl IntoIterator<Item = S> where S: AsRef<str> {
      vec![]
    } */
    /* pub fn ciphersuite_of_config(
        config: &pb_api::Configuration,
    ) -> ::std::vec::Vec<::std::string::String> {
        match config.opts.clone() {
            Some(pb_api::configuration::configuration::Opts::Client(ClientOptions {
                opts:
                    Some(pb_api::client_options::Opts::Tls(pb_api::tls::TLSClientOptions {
                        common_options: protobuf::MessageField(Some(tls_opts)),
                        ..
                    })),
                ..
            })) => (tls_opts).tls13.ciphersuite.clone(),
            _ => Vec::new(),
        }
    } */
    /* pub fn san_of_tunnel_config(
        config: &pb_api::TunnelConfiguration,
    ) -> Option<::std::vec::Vec<pb_api::SANMatcher>> {
        match &config.verifier.as_ref()?.verifier {
            Some(pb_api::verifiers::tunnel_verifier::Verifier::SanVerifier(san_verifier)) => Some(san_verifier.alt_names.clone()),
            _ => None,
        }
    } */
    /* pub fn san_in_tunnel_config(san: &pb_api::sanmatcher::San, tunnel_config: &pb_api::TunnelConfiguration) -> bool {
      let Some(verifier) = tunnel_config.verifier.as_ref()
      else {
        return false
      };
      let sans = match &verifier.verifier {
        Some(pb_api::verifiers::tunnel_verifier::Verifier::SanVerifier(san_verifier)) => san_verifier.alt_names.clone(),
        _ => return false,
      };
      sans.iter().any(|s| {
        if let Some(s) = s.san.as_ref() {
          *s == *san
        } else {false}
      })
    } */
    /* fn san_verifier_of_tunnel_config(tunnel_config: &pb_api::TunnelConfiguration) -> Option<pb_api::SANVerifier>{
      let Some(verifier) = tunnel_config.verifier.as_ref()
      else {
        return None
      };
      match &verifier.verifier {
        Some(pb_api::verifiers::tunnel_verifier::Verifier::SanVerifier(san_verifier)) => Some(san_verifier.clone()),
        _ => None,
      }
    }
    #[hax_lib::requires(fstar!(r"exists tc. tunnel_configured tc /\ Core.Option.Option_Some san_verifier == ${san_verifier_of_tunnel_config} tc"))]
    pub fn dummy(san_verifier: &pb_api::SANVerifier) {

    } */

    /*
    for propagating in pre, we would need:
    x509_verifier
    tls_options
    */
    // ignore this for now, and focus on the interesting part,
    // use tls::support::configuration_get_mode_and_options in spec assuming it is correct
    pub fn tls_options_of_config(config: &pb_api::Configuration) -> Option<pb_api::TLSOptions> {
        match config.opts.clone() {
            Some(pb_api::configuration::configuration::Opts::Client(ClientOptions {
                opts:
                    Some(pb_api::client_options::Opts::Tls(pb_api::tls::TLSClientOptions {
                        common_options,
                        ..
                    })),
                ..
            }))
            | Some(pb_api::configuration::configuration::Opts::Server(pb_api::ServerOptions {
                opts:
                    Some(pb_api::server_options::Opts::Tls(pb_api::tls::TLSServerOptions {
                        common_options,
                        ..
                    })),
                ..
            })) => common_options.as_ref().map(|o| o.clone()),
            _ => None,
        }
    }
    pub fn tls13_config_of_config(config: &pb_api::Configuration) -> Option<pb_api::TLSv13Config> {
        tls_options_of_config(config)
            .and_then(|tls_config| tls_config.tls13.as_ref().map(|v| v.clone()))
    }
    pub fn ciphersuites_of_config(config: &pb_api::Configuration) -> Vec<String> {
        tls13_config_of_config(config)
            .map(|c| c.ciphersuite)
            .unwrap_or(Vec::new())
    }
    pub fn x509_verifier_of_tls_options(
        tls_options: &pb_api::TLSOptions,
    ) -> Option<pb_api::X509Verifier> {
        match tls_options.peer_verifier.clone()? {
            pb_api::tlsoptions::Peer_verifier::X509Verifier(x509) => Some(x509),
            _ => None,
        }
    }
    pub fn x509_verifier_of_config(config: &pb_api::Configuration) -> Option<pb_api::X509Verifier> {
        tls_options_of_config(config)
            .as_ref()
            .and_then(x509_verifier_of_tls_options)
    }
    pub fn verify_mode_of_config(config: &pb_api::Configuration) -> Option<super::tls::VerifyMode> {
        let mode = match config.opts.clone()? {
            pb_api::configuration::configuration::Opts::Client(_) => super::Mode::Client,
            pb_api::configuration::configuration::Opts::Server(_) => super::Mode::Server,
            _ => return None,
        };
        let x509_verifier = x509_verifier_of_config(config);
        if x509_verifier.is_none() {
            Some(super::tls::VerifyMode::None)
        } else if mode == super::Mode::Client {
            Some(super::tls::VerifyMode::Peer)
        } else {
            Some(super::tls::VerifyMode::Mutual)
        }
    }
    pub fn ca_in_x509_verifier(
        x509_verifier: &pb_api::X509Verifier,
        ca: &pb_api::Certificate,
    ) -> bool {
        let cas = x509_verifier.trusted_cas.clone();
        cas.contains(ca)
    }
    pub fn cas_of_x509_verifier(
        x509_verifier: &pb_api::X509Verifier,
    ) -> Option<::std::vec::Vec<pb_api::Certificate>> {
        Some(x509_verifier.clone().trusted_cas)
    }

    pub fn ca_in_config(config: &pb_api::Configuration, ca: &pb_api::Certificate) -> bool {
        let x509_verifier = x509_verifier_of_config(config);
        x509_verifier
            .map(|verifier| ca_in_x509_verifier(&verifier, ca))
            .unwrap_or(false)
    }
    pub fn is_verifier_of_tunnel_config(
        verifier: Option<pb_api::TunnelVerifier>,
        tv: pb_api::TunnelConfiguration,
    ) -> bool {
        tv.verifier.as_ref() == verifier.as_ref()
    }
}

#[hax_lib::attributes]
impl<'a> Context<'a> {
    /// Instantiates a [`Context`] from a protobuf configuration message.
    ///
    /// # Examples
    ///
    /// ## Constructs a configuration in Rust.
    /// ```
    /// use sandwich_api_proto as pb_api;
    ///
    /// // Instantiates a top-level context.
    /// let sw = sandwich::Context;
    ///
    /// // Creates a protobuf configuration
    /// let mut configuration = pb_api::Configuration::new();
    ///
    /// // Sets the implementation to be used by Sandwich. Here it's OpenSSL 1.1.1
    /// // with liboqs.
    /// configuration.set_impl(pb_api::Implementation::IMPL_OPENSSL1_1_1_OQS);
    ///
    /// // Sets the client or server configuration according to the implementation
    /// // and the protocol.
    /// // …
    ///
    /// // Creates the Sandwich context that will make use of the supplied
    /// // configuration.
    ///
    /// match sandwich::context::try_from(&sw, &configuration) {
    ///     Err(e) => eprintln!("Failed to instantiate a Sandwich context: {}", e),
    ///     Ok(context) => {
    ///         // Do something with `context`.
    ///     }
    /// };
    ///
    /// ```
    #[allow(unused_variables)]
    #[hax_lib::requires(fstar!("configured(configuration)"))]
    pub fn try_from(
        context: &'a crate::Context,
        configuration: &pb_api::Configuration,
    ) -> crate::Result<Self> {
        hax_try_from(context, configuration)
    }

    /// Creates a new tunnel from an I/O interface. See [`IO`] from [`crate::io`] module.
    ///
    /// The I/O interface must outlive the tunnel, as the tunnel makes use
    /// of it to send and receive data.
    ///
    /// If an error occured, the IO interface is returned to the user.
    // We could have a precondition
    #[hax_lib::requires(fstar!("tunnel_configured(configuration)"))]
    pub fn new_tunnel(
        &self,
        io: BoxedIO,
        configuration: pb_api::TunnelConfiguration,
    ) -> TunnelResult<'_> {
        match self {
            #[cfg(feature = "openssl1_1_1")]
            Self::OpenSSL1_1_1(c) => Ok(Tunnel::OpenSSL1_1_1(ossl::openssl1_1_1::Tunnel(
                c.0.new_tunnel(io, configuration)?,
            ))),
            #[cfg(feature = "boringssl")]
            Self::BoringSSL(c) => Ok(Tunnel::BoringSSL(ossl::boringssl::Tunnel(
                c.0.new_tunnel(io, configuration)?,
            ))),
            // (crate::Error, Box<dyn IO>) -> (crate::Error, BoxedIO)
            #[cfg(feature = "openssl3")]
            Self::OpenSSL3(c) => Ok(Tunnel::OpenSSL3(c.new_tunnel(io, configuration)?)),
        }
    }
}

#[hax_lib::requires(fstar!("tunnel_configured(configuration)"))]
fn new_tunnel<'a>(
    context: &'a Context,
    io: BoxedIO,
    configuration: pb_api::TunnelConfiguration,
) -> TunnelResult<'a> {
    context.new_tunnel(io, configuration)
}

#[cfg(test)]
#[allow(unused_imports)]
pub(crate) mod test {
    use super::*;
    use crate::test::resolve_runfile;

    /// The following tests target the OpenSSL 1.1.1 + liboqs Implementation
    /// (`sandwich_api_proto::Implementation::IMPL_OPENSSL1_1_1_OQS`).
    #[cfg(feature = "openssl1_1_1")]
    pub(crate) mod openssl1_1_1 {
        use super::*;
        use crate::tunnel::tls;

        /// Tests a [`sandwich_api_proto::Configuration`] for OpenSSL.
        #[test]
        fn test_configuration() {
            let mut config = protobuf::text_format::parse_from_str::<pb_api::Configuration>(
                format!(
                    r#"
                client <
                  tls <
                    common_options <
                      tls13 <
                        ke: "kyber512"
                      >
                      x509_verifier <
                        trusted_cas <
                          static <
                            data <
                              filename: "{}"
                            >
                            format: ENCODING_FORMAT_PEM
                          >
                        >
                      >
                      alpn_protocols: "h2"
                      alpn_protocols: "http/1.1"
                    >
                  >
                >
                "#,
                    resolve_runfile(tls::test::CERT_PEM_PATH),
                )
                .as_str(),
            )
            .unwrap();
            config.impl_ = pb_api::Implementation::IMPL_OPENSSL1_1_1_OQS.into();
            let sw_ctx = crate::Context::new();
            let ctx = Context::try_from(&sw_ctx, &config);
            ctx.unwrap();
        }

        /// Tests a [`sandwich_api_proto::Configuration`] for OpenSSL, but
        /// but with missing implementation field.
        #[test]
        fn test_configuration_no_impl() {
            let config = protobuf::text_format::parse_from_str::<pb_api::Configuration>(
                format!(
                    r#"
                client <
                  tls <
                    common_options <
                      tls13 <
                        ke: "kyber512"
                      >
                      x509_verifier <
                        trusted_cas <
                          static <
                            data <
                              filename: "{}"
                            >
                            format: ENCODING_FORMAT_PEM
                          >
                        >
                      >
                    >
                  >
                >
                "#,
                    resolve_runfile(tls::test::CERT_PEM_PATH),
                )
                .as_str(),
            )
            .unwrap();
            let sw_ctx = crate::Context::new();
            let ctx = Context::try_from(&sw_ctx, &config);
            assert!(ctx.is_err());
            assert!(
                ctx.unwrap_err().is(
                &errors! {ConfigurationError::CONFIGURATIONERROR_INVALID_IMPLEMENTATION => ConfigurationError::CONFIGURATIONERROR_INVALID => pb::APIError::APIERROR_CONFIGURATION}
            ));
        }

        /// Tests a [`sandwich_api_proto::Configuration`] for OpenSSL, but with
        /// an certificate supplied.
        #[test]
        fn test_configuration_bad_cert() {
            let mut config = protobuf::text_format::parse_from_str::<pb_api::Configuration>(
                format!(
                    r#"
                client <
                  tls <
                    common_options <
                      tls13 <
                        ke: "kyber512"
                      >
                      x509_verifier <
                        trusted_cas <
                          static <
                            data <
                              filename: "{}"
                            >
                            format: ENCODING_FORMAT_DER
                          >
                        >
                      >
                    >
                  >
                >
                "#,
                    resolve_runfile(tls::test::CERT_PEM_PATH),
                )
                .as_str(),
            )
            .unwrap();
            config.impl_ = pb_api::Implementation::IMPL_OPENSSL1_1_1_OQS.into();
            let sw_ctx = crate::Context::new();
            let ctx = Context::try_from(&sw_ctx, &config);
            assert!(ctx.is_err());
            assert!(ctx.unwrap_err().is(&errors! {
                pb::ASN1Error::ASN1ERROR_MALFORMED
                    => pb::CertificateError::CERTIFICATEERROR_MALFORMED
                        => pb::TLSConfigurationError::TLSCONFIGURATIONERROR_INVALID
                            => ConfigurationError::CONFIGURATIONERROR_INVALID
                                => pb::APIError::APIERROR_CONFIGURATION
            }));
        }

        /// Tests a [`sandwich_api_proto::Configuration`] for OpenSSL, but with
        /// an invalid private key supplied.
        #[test]
        fn test_configuration_bad_sk() {
            let mut config = protobuf::text_format::parse_from_str::<pb_api::Configuration>(
                format!(
                    r#"
                server <
                  tls <
                    common_options <
                      tls13 <
                        ke: "kyber512"
                      >
                      x509_verifier <
                        trusted_cas <
                          static <
                            data <
                              filename: "{cert}"
                            >
                            format: ENCODING_FORMAT_PEM
                          >
                        >
                      >
                      identity <
                        certificate <
                          static <
                            data <
                              filename: "{cert}"
                            >
                            format: ENCODING_FORMAT_PEM
                          >
                        >
                        private_key <
                          static <
                            data <
                              filename: "{private_key}"
                            >
                            format: ENCODING_FORMAT_DER
                          >
                        >
                      >
                    >
                  >
                >
                "#,
                    cert = resolve_runfile(tls::test::CERT_PEM_PATH),
                    private_key = resolve_runfile(tls::test::SK_PATH),
                )
                .as_str(),
            )
            .unwrap();
            config.impl_ = pb_api::Implementation::IMPL_OPENSSL1_1_1_OQS.into();
            let sw_ctx = crate::Context::new();
            let ctx = Context::try_from(&sw_ctx, &config);
            assert!(ctx.is_err());
            assert!(ctx.unwrap_err().is(&errors! {
                pb::ASN1Error::ASN1ERROR_MALFORMED
                    => pb::PrivateKeyError::PRIVATEKEYERROR_MALFORMED
                        => pb::TLSConfigurationError::TLSCONFIGURATIONERROR_INVALID
                            => ConfigurationError::CONFIGURATIONERROR_INVALID
                                => pb::APIError::APIERROR_CONFIGURATION
            }));
        }
    }
}
