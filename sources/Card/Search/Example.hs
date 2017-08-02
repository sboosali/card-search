{-# OPTIONS_GHC -fno-warn-missing-signatures #-} -- to test inference
module Card.Search.Example where
import Card.Search()
import System.Environment

{-|
@
stack build && stack exec -- example-card-search
@
-}
main :: IO ()
main = do
 arguments <- getArgs >>= \case
  [s] -> return (s)
  _ -> return ("")
 mainWith arguments

mainWith s = do
 putStrLn s
 putStrLn "(Card.Search.Example...)"

