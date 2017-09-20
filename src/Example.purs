module Example (example) where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (log)
import Control.Monad.Eff.Unsafe (unsafePerformEff)

foreign import hot :: forall eff. Eff eff Unit

example = unsafePerformEff $ do
  log "BOO"
  hot

