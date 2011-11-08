module Data.Time.Convenience.Calculators (
 seconds
,minutes
,hours
,days
,weeks
,fortnights
) where

import Data.Time.Convenience.Data

-- | The number of seconds from the current time in the specified direction.
-- For example, three seconds in the past is:
--
-- > seconds 3 Ago
--
-- And three seconds into the future is:
--
-- > seconds 3 FromNow
--
-- This only produces seconds, it does not produce the actual time. See the
-- functions in "Data.Time.Convenience" for 'timeFor' and 'timeSince'.
seconds :: (Num i) => i -> Direction -> i
seconds n Ago = negate n
seconds n BeforeThat = negate n
seconds n FromNow = n
seconds n FromThat = n

-- | Similar to 'seconds', this produces the number of minutes from the current
-- time in the specified direction, in seconds. It is most useful as an offset
-- for functions in the "Data.Time.Convenience" module.
minutes :: (Num i) => i -> Direction -> i
minutes n direction = (seconds n direction) * 60

-- | Similar to 'seconds', this produces the number of hours from the current
-- time in the specified direction, in seconds. It is most useful as an offset
-- for functions in the "Data.Time.Convenience" module. See 'seconds' for an
-- example.
hours :: (Num i) => i -> Direction -> i
hours n direction = (minutes n direction) * 60

-- | Similar to 'seconds', this produces the number of days from the current
-- time in the specified direction, in seconds. It is most useful as an offset
-- for functions in the "Data.Time.Convenience" module. See 'seconds' for an
-- example.
days :: (Num i) => i -> Direction -> i
days n direction = (hours n direction) * 24

-- | Similar to 'seconds', this produces the number of weeks from the current
-- time in the specified direction, in seconds. It is most useful as an offset
-- for functions in the "Data.Time.Convenience" module. See 'seconds' for an
-- example.
weeks :: (Num i) => i -> Direction -> i
weeks n direction = (days n direction) * 7

-- | Similar to 'seconds', this produces the number of fortnights (two weeks)
-- from the current time in the specified direction, in seconds. It is most
-- useful as an offset for functions in the "Data.Time.Convenience" module. See
-- 'seconds' for an example.
fortnights :: (Num i) => i -> Direction -> i
fortnights n direction = (weeks n direction) * 2
