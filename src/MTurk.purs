

-- | <fullname>Amazon Mechanical Turk API Reference</fullname>
module AWS.MTurk where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Service (Options, Service, ServiceName(..), service) as AWS

newtype Service = Service AWS.Service

service :: forall eff. AWS.Options -> Eff (exception :: EXCEPTION | eff) Service
service options = do
    let serviceName = AWS.ServiceName "MTurk"
    service' <- AWS.service serviceName options
    pure $ Service service'
