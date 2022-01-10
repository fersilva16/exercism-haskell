module HelloWorldSpec where

import Test.Hspec        (Spec, it, shouldBe)
import HelloWorld (hello)

spec :: Spec
spec = it "hello" $
          hello `shouldBe` "Hello, World!"
