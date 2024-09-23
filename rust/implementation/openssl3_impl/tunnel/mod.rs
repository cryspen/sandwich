// Copyright (c) SandboxAQ. All rights reserved.
// SPDX-License-Identifier: AGPL-3.0-only

//! Tunnel implementation using OpenSSL 3 and oqs-provider.

use bio_method::BIO_METHOD;
use ssl::{Ssl, TunnelBuilder};
use verify_callback::verify_callback;
use x509_verify_param::X509VerifyParam;
use crate::support::Pimpl;
use crate::ossl3::NativeSsl;
use crate::ossl3::NativeSslCtx;
use crate::tunnel::tls;
use crate::tunnel::BoxedIO;
use crate::tunnel::Mode;
use crate::ossl3::LibCtx;

mod bio_method;
mod context;
mod ssl;
mod verify_callback;
mod x509_verify_param;

/// A tunnel, wrapper around a SSL object.
pub struct Tunnel<'a> {
    /// Parent SSL_CTX object.
    pub(crate) _ssl_ctx: &'a Context<'a>,

    /// SSL object.
    pub(crate) ssl: Pimpl<'a, NativeSsl>,

    /// Security requirements from the verifiers.
    pub(crate) security_requirements: tls::TunnelSecurityRequirements,

    /// IO interface.
    pub(crate) io: BoxedIO,

    /// state.
    pub(crate) state: pb::State,
}

/// Tunnel context.
pub struct Context<'a> {
    /// Library context parent.
    _lib_ctx: &'a LibCtx<'a>,

    /// `SSL_CTX` object.
    ssl_ctx: Pimpl<'a, NativeSslCtx>,

    /// Security requirements from the verifiers.
    security_requirements: tls::TunnelSecurityRequirements,

    /// Execution mode.
    mode: Mode,
}
