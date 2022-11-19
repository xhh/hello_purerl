module Main where

import Prelude
import Data.Maybe (fromMaybe)
import Effect (Effect)
import Effect.Console (logShow)
import Erl.Data.Queue as Queue

main :: Effect Unit
main = do
  -- logShow $ Just 42
  logShow v1
  logShow v2
  where
  get n q = fromMaybe { item: "No data " <> show n, queue: q } (Queue.get q)

  -- q1 = Queue.empty
  q1 = Queue.singleton "test1"

  -- q2 = q1
  q2 = Queue.put "test2" q1

  { item: v1, queue: q3 } = get 1 q2

  { item: v2 } = get 2 q3
