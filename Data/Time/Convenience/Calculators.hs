module Data.Time.Convenience.Calculators (
 seconds
,minutes
,hours
,days
,weeks
,fortnights
) where

import Data.Time.Convenience.Data

seconds :: (Num i) => i -> Direction -> i
seconds n Ago = negate n
seconds n FromNow = n
seconds n FromThat = n

minutes :: (Num i) => i -> Direction -> i
minutes n direction = (seconds n direction) * 60

hours :: (Num i) => i -> Direction -> i
hours n direction = (minutes n direction) * 60

days :: (Num i) => i -> Direction -> i
days n direction = (hours n direction) * 24

weeks :: (Num i) => i -> Direction -> i
weeks n direction = (days n direction) * 7

fortnights :: (Num i) => i -> Direction -> i
fortnights n direction = (weeks n direction) * 2
