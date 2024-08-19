{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

helloPerson :: T.Text -> T.Text
helloPerson name = "Hello " <> name <> "!" 

main :: IO ()
main = do
  putStrLn "Hello! What is your name?"
  name <- TIO.getLine
  let statement = helloPerson name
  TIO.putStrLn statement
