module Data.Time.Convenience.Data (
Unit(..)
,Direction(..)
) where

data Unit =
    Second | Seconds
  | Minute | Minutes
  | Hour   | Hours
  | Day    | Days
  | Week   | Weeks
  | Fortnight | Fortnights
  deriving (Eq, Show, Ord)

data Direction = Ago | FromNow | FromThat
  deriving (Eq, Show, Ord)
