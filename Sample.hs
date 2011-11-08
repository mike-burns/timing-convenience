module Sample where

import Data.Time.Convenience
import Data.Time.Format (formatTime)
import System.Locale (defaultTimeLocale)

main = do
  aWeekAgo     <- timeFor 1 Week Ago
  aWeekFromNow <- timeFor 1 Week FromNow
  aTickAgo     <- timeFor 3 Seconds Ago
  tomorrow     <- timeFor 1 Day FromNow

  putStrLn $ "A week ago was          " ++ formatting aWeekAgo
  putStrLn $ "A week from now will be " ++ formatting aWeekFromNow
  putStrLn $ "A bit ago was           " ++ formatting aTickAgo
  putStrLn $ "Tomorrow will be        " ++ formatting tomorrow

formatting = formatTime defaultTimeLocale "%c %T"
