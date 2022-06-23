{-# LANGUAGE GADTs #-}
module Main where

data TestType r a where
  A :: r -> TestType r ()
  B :: r -> TestType r ()

instance Functor (TestType r) where
  fmap f (A a) = A (f a)
  fmap f (B r) = B (f r)
  
main = print "hello!"
