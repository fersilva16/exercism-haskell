module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

yearsToSeconds :: Float -> Float
yearsToSeconds = (/ 31557600)

ageOn :: Planet -> Float -> Float
ageOn planet years = case planet of
  Mercury -> seconds / 0.2408467
  Venus   -> seconds / 0.61519726
  Earth   -> seconds
  Mars    -> seconds / 1.8808158
  Jupiter -> seconds / 11.862615
  Saturn  -> seconds / 29.447498
  Uranus  -> seconds / 84.016846
  Neptune -> seconds / 164.79132
  where seconds = yearsToSeconds years
