module Data.Time.Convenience.Data (
Unit(..)
,Direction(..)
) where

-- | The number of units to count. Singulars are provided to make your code
-- read nicely.
data Unit =
    Second    | Seconds
  | Minute    | Minutes
  | Hour      | Hours
  | Day       | Days
  | Week      | Weeks
  | Fortnight | Fortnights
  deriving (Eq, Show, Ord)

-- | The direction in which to travel from the current time (or, in the case
-- of FromThat, from the given time). As just hinted at, @FromNow@ and
-- @FromThat@ are the same thing, but one reads better sometimes. Same with
-- @Ago@ and @BeforeThat@.
data Direction = Ago | BeforeThat | FromNow | FromThat
  deriving (Eq, Show, Ord)
