module Program.HBitCoin.Utils
  (
  )
  where
import Control.Monad
import qualified System.Posix as Posix


stop :: Signal
stop = sigTERM

reload :: Signal
reload = sigHUP

info :: Signal
info = sigUSER2
