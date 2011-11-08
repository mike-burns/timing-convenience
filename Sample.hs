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

  putStrLn ""

  let twoWeeksBeforeThat = timeSince aWeekAgo 1 Fortnight BeforeThat
      aBitFromTomorrow   = timeSince tomorrow 3 Seconds FromThat

  putStrLn $ "A fortnight before a week ago was " ++ formatting twoWeeksBeforeThat
  putStrLn $ "A bit after tomorrow will be      " ++ formatting aBitFromTomorrow

formatting = formatTime defaultTimeLocale "%c %T"
