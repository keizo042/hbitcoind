module Main where
import Control.Monad
import qualified Program.HBitCoin as HBitCoin
import qualified Program.HBitCoin.Config as HBCConf
import System.Posix.Daemonize as D

main :: IO ()
main = HBCConf.setup >>= hbitcoind

 
hbitcoind :: HBCConf.Config -> IO ()
hbitcoind cfg = undefined
  where
