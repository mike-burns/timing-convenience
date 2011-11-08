timing-convenience
------------------

Functions to make it a little more convenient to work with time offsets.
Inspired by Ruby's ActiveSupport time methods on Fixnum.

Usage
=====

See the [Sample.hs](http://github.com/mike-burns/timing-convenience/blob/master/Sample.hs) for a more full sample.

    main = do
      t <- timeFor 3 Days Ago
      putStrLn $ show t

Installation
============

In your project's cabal file:

    -- Packages needed in order to build this package.
    Build-depends:       timing-convenience

Or from the command line:

    cabal install timing-convenience

Documentation
=============

For details see [the reference documentation on Hackage](http://hackage.haskell.org/packages/archive/timing-convenience/lastest/doc/html/Data-Time-Convenience.html).

Copyright
=========

Copyright 2011 Mike Burns.

Available under the BSD 3-clause license.

