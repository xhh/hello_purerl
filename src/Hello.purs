module Hello where

import Prelude

foreign import ffi_message :: String

message ∷ String
message =
  "Hello from Purescript via purerl\n"
    <> "FFI message: "
    <> ffi_message
