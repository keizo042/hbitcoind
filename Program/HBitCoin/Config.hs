module Program.HBitCoin.Config 
  (
    Config(..),
    Opt,
    D.CreateDaemon(..),
    setup
  )
  where
import System.Posix.Daemonize as D
import qualified Options.Generic as Opts
import qualified Options.Applicative as Opts

data Config = Config {
  opt :: Opt,
  daemon :: D.CreateDaemon }

data Opt = Opt 
         {
           s :: Maybe String
           switch :: Maybe String
           f :: FilePath
         }

setup :: IO Config
setup = optparse daemon

optparse :: D.CreateDaemon -> IO Config
optparse d = execParser undefined

daemon :: D.CreateDaemon
daemon = D.CreateDaemon {
  privilegeAction = return (),
  program = undefined,
  name = Just "hbitcoind",
  user = Nothing,
  group = Nothing,
  syslogOption = [],
  pidfileDirectory = Nothing,
  killWait = Just 4
                       }


