module PostgresFilterUI.Main where

import Prelude

import Effect (Effect)
import Halogen.Aff as HA
import Halogen.VDom.Driver (runUI)
import PostgresFilterUI.Components.Form as Form

main :: Effect Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody
  runUI Form.component unit body
