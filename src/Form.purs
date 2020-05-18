module PostgresFilterUI.Components.Form(component) where

import Prelude

import Halogen as H
import Halogen.HTML as HH
import PostgresFilterUI.Utils (stub)

component :: forall i m q output. H.Component HH.HTML q i output m
component = 
    H.mkComponent
      { initialState: stub,
        render: render,
        eval: H.mkEval $ H.defaultEval
          { handleAction = handleAction
          , handleQuery = stub  
          }
      }

render :: forall state action slots m. state -> H.ComponentHTML action slots m
render = stub

handleAction :: forall m action state slots output a. action -> H.HalogenM state action slots output m a
handleAction = stub