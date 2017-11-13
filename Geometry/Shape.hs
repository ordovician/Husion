module Geometry.Shape
(

) where

data Shape a = Circle (Point a) a | Rect (Point a) (Point a) deriving (Show)  
