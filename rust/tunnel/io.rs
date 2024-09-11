// Copyright (c) SandboxAQ. All rights reserved.
// SPDX-License-Identifier: AGPL-3.0-only

//! This module provides the definition of I/O interfaces specific to the
//! tunnel API.
//!
//! I/O interfaces for tunnels are regular I/O interfaces with the addition
//! of the `set_state` method which allows the I/O interfaces to know the state
//! of the tunnel it is attached to.

/// An IO interface specific to tunnels.
pub trait IO: crate::IO {
    /// Indicates the current state of the tunnel.
    ///
    /// It is guaranteed that the state of the tunnel will not change between
    /// two calls to this callback.
    fn set_state(&mut self, _state: pb::State) {}
}

/// BoxedIO
#[hax_lib::opaque_type]
pub struct BoxedIO(pub Box<dyn IO>);

impl IO for BoxedIO {
    fn set_state(&mut self, _state: pb::State) {}
}

impl std::io::Read for BoxedIO {
    fn read(&mut self, buf: &mut [u8]) -> Result<usize, std::io::Error> {
        (self.0).read(buf)
    }
}

impl std::io::Write for BoxedIO {
    fn write(&mut self, buf: &[u8]) -> Result<usize, std::io::Error> {
        (self.0).write(buf)
    }

    fn flush(&mut self) -> Result<(), std::io::Error> {
        (self.0).flush()
    }
}

// impl From<(crate::Error, Box<dyn IO>)> for (crate::Error, BoxedIO) {
//     fn from(err: (crate::Error, Box<dyn IO>)) -> Self {
//         unimplemented!()
//     }
// }

impl From<Box<dyn IO>> for BoxedIO {
    fn from(io: Box<dyn IO>) -> Self {
        unimplemented!()
    }
}

impl<'a> std::fmt::Debug for dyn IO + 'a {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "Box(tunnel::IO)")
    }
}
