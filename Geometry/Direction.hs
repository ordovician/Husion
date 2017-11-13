module Geometry.Direction
(
	dot,
	abs
) where

import Geometry

data Direction = Direction GFloat GFloat deriving (Show)
	
instance Vectorish Direction where
	dot   (Direction ux uy) (Direction vx vy) = ux * vx + uy * vy
	cross (Direction ux uy) (Direction vx vy) = ux * vy + uy * vx
	abs   (Direction vx vy) = Direction (abs vx) (abs vy)
	angle (Direction vx vy) = atan2(vy, vx)