module Geometry.Point
(
	compare,
	min,
	max,
	(<),
	(>)
) where

import Geometry

data Point a = Point a a deriving (Show, Eq)

instance Ord Point where
	compare p q = if p < q 
		then LT 
		else if p == q 
			then EQ 
			else GT
	(Point px py) < (Point qx qy) = px < qx || (px == qx && py < qy)
	(Point px py) > (Point qx qy) = px > qx || (px == qx && py > qy)
	min p q = if p < q then p else q
	max p q = if p > q then p else q
