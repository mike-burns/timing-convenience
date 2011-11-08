module Data.Time.Convenience (
 timeFor
,module Data.Time.Convenience.Data
) where

import Data.Time.Clock
import Control.Applicative ((<$>))
import Data.Time.Convenience.Data
import Data.Time.Convenience.Calculators

timeFor :: NominalDiffTime -> Unit -> Direction -> IO UTCTime
timeFor n unit direction =
  addUTCTime ((calculator unit) n direction) <$> getCurrentTime

calculator :: (Num i) => Unit -> (i -> Direction -> i)
calculator Second = seconds
calculator Seconds = seconds
calculator Minute = minutes
calculator Minutes = minutes
calculator Hour = hours
calculator Hours = hours
calculator Day = days
calculator Days = days
calculator Week = weeks
calculator Weeks = weeks
calculator Fortnight = fortnights
calculator Fortnights = fortnights
