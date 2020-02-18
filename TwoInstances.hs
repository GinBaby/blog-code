{-# LANGUAGE DeriveFunctor #-}

data Two a = Two { firstOfTwo  :: a -- ^ One value.
                 , secondOfTwo :: a -- ^ Another value.
                 }
    deriving Functor

instance Applicative Two where

    pure a = Two a a

    Two f g <*> Two x y = Two (f x) (g y)

instance Monad Two where
  (>>=) (Two a a') f = a (f a')
--   (>>=) :: Two a a -> (a -> Two a b) -> Two a b
