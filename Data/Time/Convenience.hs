module Data.Time.Convenience (
 timeFor
,timeSince
,module Data.Time.Convenience.Data
) where

import Data.Time.Clock
import Control.Applicative ((<$>))
import Data.Time.Convenience.Data
import Data.Time.Convenience.Calculators

-- | Produce the time following the specified offset. For example, to get
-- the date and time from two weeks from right now:
--
-- > timeFor 1 Fortnight FromNow
timeFor :: NominalDiffTime -> Unit -> Direction -> IO UTCTime
timeFor n unit direction = do
  currentTime <- getCurrentTime
  return $ timeSince currentTime n unit direction

-- | Given a time, produce a new time offset from that time. For example,
-- to get the date and time from a month after two weeks ago:
--
-- > do
-- >   twoWeeksAgo <- timeFor 1 Fortnight Ago
-- >   return $ timeSince twoWeeksAgo 1 Month FromThat
timeSince :: UTCTime -> NominalDiffTime -> Unit -> Direction -> UTCTime
timeSince base n unit direction =
  addUTCTime ((calculator unit) n direction) base

-- | Given a Unit, produce the function that takes a number and a direction and
-- produces the number of seconds to offset the current time.
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
