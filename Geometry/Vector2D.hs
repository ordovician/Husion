module Geometry.Vector2D
(
	Vectorish(..)

) where

import Geometry


data Vector2D = Vector2D GFloat GFloat deriving (Show)

class Vectorish a where
	dot   :: a -> a -> GFloat
	cross :: a -> a -> GFloat
	abs   :: a -> Vector2D
	angle :: a -> GFloat 
	
instance Vectorish Vector2D where
	dot   (Vector2D ux uy) (Vector2D vx vy) = ux * vx + uy * vy
	cross (Vector2D ux uy) (Vector2D vx vy) = ux * vy + uy * vx
	abs   (Vector2D vx vy) = Vector2D (abs vx) (abs vy)
	angle (Vector2D vx vy) = atan2(vy, vx)
