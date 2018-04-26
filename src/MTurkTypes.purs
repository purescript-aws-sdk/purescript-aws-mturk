
module AWS.MTurk.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AcceptQualificationRequestRequest = AcceptQualificationRequestRequest 
  { "QualificationRequestId" :: (String)
  , "IntegerValue" :: Maybe (Int)
  }
derive instance newtypeAcceptQualificationRequestRequest :: Newtype AcceptQualificationRequestRequest _
derive instance repGenericAcceptQualificationRequestRequest :: Generic AcceptQualificationRequestRequest _
instance showAcceptQualificationRequestRequest :: Show AcceptQualificationRequestRequest where show = genericShow
instance decodeAcceptQualificationRequestRequest :: Decode AcceptQualificationRequestRequest where decode = genericDecode options
instance encodeAcceptQualificationRequestRequest :: Encode AcceptQualificationRequestRequest where encode = genericEncode options

-- | Constructs AcceptQualificationRequestRequest from required parameters
newAcceptQualificationRequestRequest :: String -> AcceptQualificationRequestRequest
newAcceptQualificationRequestRequest _QualificationRequestId = AcceptQualificationRequestRequest { "QualificationRequestId": _QualificationRequestId, "IntegerValue": Nothing }

-- | Constructs AcceptQualificationRequestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptQualificationRequestRequest' :: String -> ( { "QualificationRequestId" :: (String) , "IntegerValue" :: Maybe (Int) } -> {"QualificationRequestId" :: (String) , "IntegerValue" :: Maybe (Int) } ) -> AcceptQualificationRequestRequest
newAcceptQualificationRequestRequest' _QualificationRequestId customize = (AcceptQualificationRequestRequest <<< customize) { "QualificationRequestId": _QualificationRequestId, "IntegerValue": Nothing }



newtype AcceptQualificationRequestResponse = AcceptQualificationRequestResponse Types.NoArguments
derive instance newtypeAcceptQualificationRequestResponse :: Newtype AcceptQualificationRequestResponse _
derive instance repGenericAcceptQualificationRequestResponse :: Generic AcceptQualificationRequestResponse _
instance showAcceptQualificationRequestResponse :: Show AcceptQualificationRequestResponse where show = genericShow
instance decodeAcceptQualificationRequestResponse :: Decode AcceptQualificationRequestResponse where decode = genericDecode options
instance encodeAcceptQualificationRequestResponse :: Encode AcceptQualificationRequestResponse where encode = genericEncode options



newtype ApproveAssignmentRequest = ApproveAssignmentRequest 
  { "AssignmentId" :: (EntityId)
  , "RequesterFeedback" :: Maybe (String)
  , "OverrideRejection" :: Maybe (Boolean)
  }
derive instance newtypeApproveAssignmentRequest :: Newtype ApproveAssignmentRequest _
derive instance repGenericApproveAssignmentRequest :: Generic ApproveAssignmentRequest _
instance showApproveAssignmentRequest :: Show ApproveAssignmentRequest where show = genericShow
instance decodeApproveAssignmentRequest :: Decode ApproveAssignmentRequest where decode = genericDecode options
instance encodeApproveAssignmentRequest :: Encode ApproveAssignmentRequest where encode = genericEncode options

-- | Constructs ApproveAssignmentRequest from required parameters
newApproveAssignmentRequest :: EntityId -> ApproveAssignmentRequest
newApproveAssignmentRequest _AssignmentId = ApproveAssignmentRequest { "AssignmentId": _AssignmentId, "OverrideRejection": Nothing, "RequesterFeedback": Nothing }

-- | Constructs ApproveAssignmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApproveAssignmentRequest' :: EntityId -> ( { "AssignmentId" :: (EntityId) , "RequesterFeedback" :: Maybe (String) , "OverrideRejection" :: Maybe (Boolean) } -> {"AssignmentId" :: (EntityId) , "RequesterFeedback" :: Maybe (String) , "OverrideRejection" :: Maybe (Boolean) } ) -> ApproveAssignmentRequest
newApproveAssignmentRequest' _AssignmentId customize = (ApproveAssignmentRequest <<< customize) { "AssignmentId": _AssignmentId, "OverrideRejection": Nothing, "RequesterFeedback": Nothing }



newtype ApproveAssignmentResponse = ApproveAssignmentResponse Types.NoArguments
derive instance newtypeApproveAssignmentResponse :: Newtype ApproveAssignmentResponse _
derive instance repGenericApproveAssignmentResponse :: Generic ApproveAssignmentResponse _
instance showApproveAssignmentResponse :: Show ApproveAssignmentResponse where show = genericShow
instance decodeApproveAssignmentResponse :: Decode ApproveAssignmentResponse where decode = genericDecode options
instance encodeApproveAssignmentResponse :: Encode ApproveAssignmentResponse where encode = genericEncode options



-- | <p> The Assignment data structure represents a single assignment of a HIT to a Worker. The assignment tracks the Worker's efforts to complete the HIT, and contains the results for later retrieval. </p>
newtype Assignment = Assignment 
  { "AssignmentId" :: Maybe (EntityId)
  , "WorkerId" :: Maybe (CustomerId)
  , "HITId" :: Maybe (EntityId)
  , "AssignmentStatus" :: Maybe (AssignmentStatus)
  , "AutoApprovalTime" :: Maybe (Types.Timestamp)
  , "AcceptTime" :: Maybe (Types.Timestamp)
  , "SubmitTime" :: Maybe (Types.Timestamp)
  , "ApprovalTime" :: Maybe (Types.Timestamp)
  , "RejectionTime" :: Maybe (Types.Timestamp)
  , "Deadline" :: Maybe (Types.Timestamp)
  , "Answer" :: Maybe (String)
  , "RequesterFeedback" :: Maybe (String)
  }
derive instance newtypeAssignment :: Newtype Assignment _
derive instance repGenericAssignment :: Generic Assignment _
instance showAssignment :: Show Assignment where show = genericShow
instance decodeAssignment :: Decode Assignment where decode = genericDecode options
instance encodeAssignment :: Encode Assignment where encode = genericEncode options

-- | Constructs Assignment from required parameters
newAssignment :: Assignment
newAssignment  = Assignment { "AcceptTime": Nothing, "Answer": Nothing, "ApprovalTime": Nothing, "AssignmentId": Nothing, "AssignmentStatus": Nothing, "AutoApprovalTime": Nothing, "Deadline": Nothing, "HITId": Nothing, "RejectionTime": Nothing, "RequesterFeedback": Nothing, "SubmitTime": Nothing, "WorkerId": Nothing }

-- | Constructs Assignment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssignment' :: ( { "AssignmentId" :: Maybe (EntityId) , "WorkerId" :: Maybe (CustomerId) , "HITId" :: Maybe (EntityId) , "AssignmentStatus" :: Maybe (AssignmentStatus) , "AutoApprovalTime" :: Maybe (Types.Timestamp) , "AcceptTime" :: Maybe (Types.Timestamp) , "SubmitTime" :: Maybe (Types.Timestamp) , "ApprovalTime" :: Maybe (Types.Timestamp) , "RejectionTime" :: Maybe (Types.Timestamp) , "Deadline" :: Maybe (Types.Timestamp) , "Answer" :: Maybe (String) , "RequesterFeedback" :: Maybe (String) } -> {"AssignmentId" :: Maybe (EntityId) , "WorkerId" :: Maybe (CustomerId) , "HITId" :: Maybe (EntityId) , "AssignmentStatus" :: Maybe (AssignmentStatus) , "AutoApprovalTime" :: Maybe (Types.Timestamp) , "AcceptTime" :: Maybe (Types.Timestamp) , "SubmitTime" :: Maybe (Types.Timestamp) , "ApprovalTime" :: Maybe (Types.Timestamp) , "RejectionTime" :: Maybe (Types.Timestamp) , "Deadline" :: Maybe (Types.Timestamp) , "Answer" :: Maybe (String) , "RequesterFeedback" :: Maybe (String) } ) -> Assignment
newAssignment'  customize = (Assignment <<< customize) { "AcceptTime": Nothing, "Answer": Nothing, "ApprovalTime": Nothing, "AssignmentId": Nothing, "AssignmentStatus": Nothing, "AutoApprovalTime": Nothing, "Deadline": Nothing, "HITId": Nothing, "RejectionTime": Nothing, "RequesterFeedback": Nothing, "SubmitTime": Nothing, "WorkerId": Nothing }



newtype AssignmentList = AssignmentList (Array Assignment)
derive instance newtypeAssignmentList :: Newtype AssignmentList _
derive instance repGenericAssignmentList :: Generic AssignmentList _
instance showAssignmentList :: Show AssignmentList where show = genericShow
instance decodeAssignmentList :: Decode AssignmentList where decode = genericDecode options
instance encodeAssignmentList :: Encode AssignmentList where encode = genericEncode options



newtype AssignmentStatus = AssignmentStatus String
derive instance newtypeAssignmentStatus :: Newtype AssignmentStatus _
derive instance repGenericAssignmentStatus :: Generic AssignmentStatus _
instance showAssignmentStatus :: Show AssignmentStatus where show = genericShow
instance decodeAssignmentStatus :: Decode AssignmentStatus where decode = genericDecode options
instance encodeAssignmentStatus :: Encode AssignmentStatus where encode = genericEncode options



newtype AssignmentStatusList = AssignmentStatusList (Array AssignmentStatus)
derive instance newtypeAssignmentStatusList :: Newtype AssignmentStatusList _
derive instance repGenericAssignmentStatusList :: Generic AssignmentStatusList _
instance showAssignmentStatusList :: Show AssignmentStatusList where show = genericShow
instance decodeAssignmentStatusList :: Decode AssignmentStatusList where decode = genericDecode options
instance encodeAssignmentStatusList :: Encode AssignmentStatusList where encode = genericEncode options



newtype AssociateQualificationWithWorkerRequest = AssociateQualificationWithWorkerRequest 
  { "QualificationTypeId" :: (EntityId)
  , "WorkerId" :: (CustomerId)
  , "IntegerValue" :: Maybe (Int)
  , "SendNotification" :: Maybe (Boolean)
  }
derive instance newtypeAssociateQualificationWithWorkerRequest :: Newtype AssociateQualificationWithWorkerRequest _
derive instance repGenericAssociateQualificationWithWorkerRequest :: Generic AssociateQualificationWithWorkerRequest _
instance showAssociateQualificationWithWorkerRequest :: Show AssociateQualificationWithWorkerRequest where show = genericShow
instance decodeAssociateQualificationWithWorkerRequest :: Decode AssociateQualificationWithWorkerRequest where decode = genericDecode options
instance encodeAssociateQualificationWithWorkerRequest :: Encode AssociateQualificationWithWorkerRequest where encode = genericEncode options

-- | Constructs AssociateQualificationWithWorkerRequest from required parameters
newAssociateQualificationWithWorkerRequest :: EntityId -> CustomerId -> AssociateQualificationWithWorkerRequest
newAssociateQualificationWithWorkerRequest _QualificationTypeId _WorkerId = AssociateQualificationWithWorkerRequest { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId, "IntegerValue": Nothing, "SendNotification": Nothing }

-- | Constructs AssociateQualificationWithWorkerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateQualificationWithWorkerRequest' :: EntityId -> CustomerId -> ( { "QualificationTypeId" :: (EntityId) , "WorkerId" :: (CustomerId) , "IntegerValue" :: Maybe (Int) , "SendNotification" :: Maybe (Boolean) } -> {"QualificationTypeId" :: (EntityId) , "WorkerId" :: (CustomerId) , "IntegerValue" :: Maybe (Int) , "SendNotification" :: Maybe (Boolean) } ) -> AssociateQualificationWithWorkerRequest
newAssociateQualificationWithWorkerRequest' _QualificationTypeId _WorkerId customize = (AssociateQualificationWithWorkerRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId, "IntegerValue": Nothing, "SendNotification": Nothing }



newtype AssociateQualificationWithWorkerResponse = AssociateQualificationWithWorkerResponse Types.NoArguments
derive instance newtypeAssociateQualificationWithWorkerResponse :: Newtype AssociateQualificationWithWorkerResponse _
derive instance repGenericAssociateQualificationWithWorkerResponse :: Generic AssociateQualificationWithWorkerResponse _
instance showAssociateQualificationWithWorkerResponse :: Show AssociateQualificationWithWorkerResponse where show = genericShow
instance decodeAssociateQualificationWithWorkerResponse :: Decode AssociateQualificationWithWorkerResponse where decode = genericDecode options
instance encodeAssociateQualificationWithWorkerResponse :: Encode AssociateQualificationWithWorkerResponse where encode = genericEncode options



-- | <p>An object representing a Bonus payment paid to a Worker.</p>
newtype BonusPayment = BonusPayment 
  { "WorkerId" :: Maybe (CustomerId)
  , "BonusAmount" :: Maybe (CurrencyAmount)
  , "AssignmentId" :: Maybe (EntityId)
  , "Reason" :: Maybe (String)
  , "GrantTime" :: Maybe (Types.Timestamp)
  }
derive instance newtypeBonusPayment :: Newtype BonusPayment _
derive instance repGenericBonusPayment :: Generic BonusPayment _
instance showBonusPayment :: Show BonusPayment where show = genericShow
instance decodeBonusPayment :: Decode BonusPayment where decode = genericDecode options
instance encodeBonusPayment :: Encode BonusPayment where encode = genericEncode options

-- | Constructs BonusPayment from required parameters
newBonusPayment :: BonusPayment
newBonusPayment  = BonusPayment { "AssignmentId": Nothing, "BonusAmount": Nothing, "GrantTime": Nothing, "Reason": Nothing, "WorkerId": Nothing }

-- | Constructs BonusPayment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBonusPayment' :: ( { "WorkerId" :: Maybe (CustomerId) , "BonusAmount" :: Maybe (CurrencyAmount) , "AssignmentId" :: Maybe (EntityId) , "Reason" :: Maybe (String) , "GrantTime" :: Maybe (Types.Timestamp) } -> {"WorkerId" :: Maybe (CustomerId) , "BonusAmount" :: Maybe (CurrencyAmount) , "AssignmentId" :: Maybe (EntityId) , "Reason" :: Maybe (String) , "GrantTime" :: Maybe (Types.Timestamp) } ) -> BonusPayment
newBonusPayment'  customize = (BonusPayment <<< customize) { "AssignmentId": Nothing, "BonusAmount": Nothing, "GrantTime": Nothing, "Reason": Nothing, "WorkerId": Nothing }



newtype BonusPaymentList = BonusPaymentList (Array BonusPayment)
derive instance newtypeBonusPaymentList :: Newtype BonusPaymentList _
derive instance repGenericBonusPaymentList :: Generic BonusPaymentList _
instance showBonusPaymentList :: Show BonusPaymentList where show = genericShow
instance decodeBonusPaymentList :: Decode BonusPaymentList where decode = genericDecode options
instance encodeBonusPaymentList :: Encode BonusPaymentList where encode = genericEncode options



newtype Comparator = Comparator String
derive instance newtypeComparator :: Newtype Comparator _
derive instance repGenericComparator :: Generic Comparator _
instance showComparator :: Show Comparator where show = genericShow
instance decodeComparator :: Decode Comparator where decode = genericDecode options
instance encodeComparator :: Encode Comparator where encode = genericEncode options



newtype CountryParameters = CountryParameters String
derive instance newtypeCountryParameters :: Newtype CountryParameters _
derive instance repGenericCountryParameters :: Generic CountryParameters _
instance showCountryParameters :: Show CountryParameters where show = genericShow
instance decodeCountryParameters :: Decode CountryParameters where decode = genericDecode options
instance encodeCountryParameters :: Encode CountryParameters where encode = genericEncode options



newtype CreateAdditionalAssignmentsForHITRequest = CreateAdditionalAssignmentsForHITRequest 
  { "HITId" :: (EntityId)
  , "NumberOfAdditionalAssignments" :: (Int)
  , "UniqueRequestToken" :: Maybe (IdempotencyToken)
  }
derive instance newtypeCreateAdditionalAssignmentsForHITRequest :: Newtype CreateAdditionalAssignmentsForHITRequest _
derive instance repGenericCreateAdditionalAssignmentsForHITRequest :: Generic CreateAdditionalAssignmentsForHITRequest _
instance showCreateAdditionalAssignmentsForHITRequest :: Show CreateAdditionalAssignmentsForHITRequest where show = genericShow
instance decodeCreateAdditionalAssignmentsForHITRequest :: Decode CreateAdditionalAssignmentsForHITRequest where decode = genericDecode options
instance encodeCreateAdditionalAssignmentsForHITRequest :: Encode CreateAdditionalAssignmentsForHITRequest where encode = genericEncode options

-- | Constructs CreateAdditionalAssignmentsForHITRequest from required parameters
newCreateAdditionalAssignmentsForHITRequest :: EntityId -> Int -> CreateAdditionalAssignmentsForHITRequest
newCreateAdditionalAssignmentsForHITRequest _HITId _NumberOfAdditionalAssignments = CreateAdditionalAssignmentsForHITRequest { "HITId": _HITId, "NumberOfAdditionalAssignments": _NumberOfAdditionalAssignments, "UniqueRequestToken": Nothing }

-- | Constructs CreateAdditionalAssignmentsForHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAdditionalAssignmentsForHITRequest' :: EntityId -> Int -> ( { "HITId" :: (EntityId) , "NumberOfAdditionalAssignments" :: (Int) , "UniqueRequestToken" :: Maybe (IdempotencyToken) } -> {"HITId" :: (EntityId) , "NumberOfAdditionalAssignments" :: (Int) , "UniqueRequestToken" :: Maybe (IdempotencyToken) } ) -> CreateAdditionalAssignmentsForHITRequest
newCreateAdditionalAssignmentsForHITRequest' _HITId _NumberOfAdditionalAssignments customize = (CreateAdditionalAssignmentsForHITRequest <<< customize) { "HITId": _HITId, "NumberOfAdditionalAssignments": _NumberOfAdditionalAssignments, "UniqueRequestToken": Nothing }



newtype CreateAdditionalAssignmentsForHITResponse = CreateAdditionalAssignmentsForHITResponse Types.NoArguments
derive instance newtypeCreateAdditionalAssignmentsForHITResponse :: Newtype CreateAdditionalAssignmentsForHITResponse _
derive instance repGenericCreateAdditionalAssignmentsForHITResponse :: Generic CreateAdditionalAssignmentsForHITResponse _
instance showCreateAdditionalAssignmentsForHITResponse :: Show CreateAdditionalAssignmentsForHITResponse where show = genericShow
instance decodeCreateAdditionalAssignmentsForHITResponse :: Decode CreateAdditionalAssignmentsForHITResponse where decode = genericDecode options
instance encodeCreateAdditionalAssignmentsForHITResponse :: Encode CreateAdditionalAssignmentsForHITResponse where encode = genericEncode options



newtype CreateHITRequest = CreateHITRequest 
  { "MaxAssignments" :: Maybe (Int)
  , "AutoApprovalDelayInSeconds" :: Maybe (Number)
  , "LifetimeInSeconds" :: (Number)
  , "AssignmentDurationInSeconds" :: (Number)
  , "Reward" :: (CurrencyAmount)
  , "Title" :: (String)
  , "Keywords" :: Maybe (String)
  , "Description" :: (String)
  , "Question" :: Maybe (String)
  , "RequesterAnnotation" :: Maybe (String)
  , "QualificationRequirements" :: Maybe (QualificationRequirementList)
  , "UniqueRequestToken" :: Maybe (IdempotencyToken)
  , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy)
  , "HITReviewPolicy" :: Maybe (ReviewPolicy)
  , "HITLayoutId" :: Maybe (EntityId)
  , "HITLayoutParameters" :: Maybe (HITLayoutParameterList)
  }
derive instance newtypeCreateHITRequest :: Newtype CreateHITRequest _
derive instance repGenericCreateHITRequest :: Generic CreateHITRequest _
instance showCreateHITRequest :: Show CreateHITRequest where show = genericShow
instance decodeCreateHITRequest :: Decode CreateHITRequest where decode = genericDecode options
instance encodeCreateHITRequest :: Encode CreateHITRequest where encode = genericEncode options

-- | Constructs CreateHITRequest from required parameters
newCreateHITRequest :: Number -> String -> Number -> CurrencyAmount -> String -> CreateHITRequest
newCreateHITRequest _AssignmentDurationInSeconds _Description _LifetimeInSeconds _Reward _Title = CreateHITRequest { "AssignmentDurationInSeconds": _AssignmentDurationInSeconds, "Description": _Description, "LifetimeInSeconds": _LifetimeInSeconds, "Reward": _Reward, "Title": _Title, "AssignmentReviewPolicy": Nothing, "AutoApprovalDelayInSeconds": Nothing, "HITLayoutId": Nothing, "HITLayoutParameters": Nothing, "HITReviewPolicy": Nothing, "Keywords": Nothing, "MaxAssignments": Nothing, "QualificationRequirements": Nothing, "Question": Nothing, "RequesterAnnotation": Nothing, "UniqueRequestToken": Nothing }

-- | Constructs CreateHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITRequest' :: Number -> String -> Number -> CurrencyAmount -> String -> ( { "MaxAssignments" :: Maybe (Int) , "AutoApprovalDelayInSeconds" :: Maybe (Number) , "LifetimeInSeconds" :: (Number) , "AssignmentDurationInSeconds" :: (Number) , "Reward" :: (CurrencyAmount) , "Title" :: (String) , "Keywords" :: Maybe (String) , "Description" :: (String) , "Question" :: Maybe (String) , "RequesterAnnotation" :: Maybe (String) , "QualificationRequirements" :: Maybe (QualificationRequirementList) , "UniqueRequestToken" :: Maybe (IdempotencyToken) , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy) , "HITReviewPolicy" :: Maybe (ReviewPolicy) , "HITLayoutId" :: Maybe (EntityId) , "HITLayoutParameters" :: Maybe (HITLayoutParameterList) } -> {"MaxAssignments" :: Maybe (Int) , "AutoApprovalDelayInSeconds" :: Maybe (Number) , "LifetimeInSeconds" :: (Number) , "AssignmentDurationInSeconds" :: (Number) , "Reward" :: (CurrencyAmount) , "Title" :: (String) , "Keywords" :: Maybe (String) , "Description" :: (String) , "Question" :: Maybe (String) , "RequesterAnnotation" :: Maybe (String) , "QualificationRequirements" :: Maybe (QualificationRequirementList) , "UniqueRequestToken" :: Maybe (IdempotencyToken) , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy) , "HITReviewPolicy" :: Maybe (ReviewPolicy) , "HITLayoutId" :: Maybe (EntityId) , "HITLayoutParameters" :: Maybe (HITLayoutParameterList) } ) -> CreateHITRequest
newCreateHITRequest' _AssignmentDurationInSeconds _Description _LifetimeInSeconds _Reward _Title customize = (CreateHITRequest <<< customize) { "AssignmentDurationInSeconds": _AssignmentDurationInSeconds, "Description": _Description, "LifetimeInSeconds": _LifetimeInSeconds, "Reward": _Reward, "Title": _Title, "AssignmentReviewPolicy": Nothing, "AutoApprovalDelayInSeconds": Nothing, "HITLayoutId": Nothing, "HITLayoutParameters": Nothing, "HITReviewPolicy": Nothing, "Keywords": Nothing, "MaxAssignments": Nothing, "QualificationRequirements": Nothing, "Question": Nothing, "RequesterAnnotation": Nothing, "UniqueRequestToken": Nothing }



newtype CreateHITResponse = CreateHITResponse 
  { "HIT" :: Maybe (HIT)
  }
derive instance newtypeCreateHITResponse :: Newtype CreateHITResponse _
derive instance repGenericCreateHITResponse :: Generic CreateHITResponse _
instance showCreateHITResponse :: Show CreateHITResponse where show = genericShow
instance decodeCreateHITResponse :: Decode CreateHITResponse where decode = genericDecode options
instance encodeCreateHITResponse :: Encode CreateHITResponse where encode = genericEncode options

-- | Constructs CreateHITResponse from required parameters
newCreateHITResponse :: CreateHITResponse
newCreateHITResponse  = CreateHITResponse { "HIT": Nothing }

-- | Constructs CreateHITResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITResponse' :: ( { "HIT" :: Maybe (HIT) } -> {"HIT" :: Maybe (HIT) } ) -> CreateHITResponse
newCreateHITResponse'  customize = (CreateHITResponse <<< customize) { "HIT": Nothing }



newtype CreateHITTypeRequest = CreateHITTypeRequest 
  { "AutoApprovalDelayInSeconds" :: Maybe (Number)
  , "AssignmentDurationInSeconds" :: (Number)
  , "Reward" :: (CurrencyAmount)
  , "Title" :: (String)
  , "Keywords" :: Maybe (String)
  , "Description" :: (String)
  , "QualificationRequirements" :: Maybe (QualificationRequirementList)
  }
derive instance newtypeCreateHITTypeRequest :: Newtype CreateHITTypeRequest _
derive instance repGenericCreateHITTypeRequest :: Generic CreateHITTypeRequest _
instance showCreateHITTypeRequest :: Show CreateHITTypeRequest where show = genericShow
instance decodeCreateHITTypeRequest :: Decode CreateHITTypeRequest where decode = genericDecode options
instance encodeCreateHITTypeRequest :: Encode CreateHITTypeRequest where encode = genericEncode options

-- | Constructs CreateHITTypeRequest from required parameters
newCreateHITTypeRequest :: Number -> String -> CurrencyAmount -> String -> CreateHITTypeRequest
newCreateHITTypeRequest _AssignmentDurationInSeconds _Description _Reward _Title = CreateHITTypeRequest { "AssignmentDurationInSeconds": _AssignmentDurationInSeconds, "Description": _Description, "Reward": _Reward, "Title": _Title, "AutoApprovalDelayInSeconds": Nothing, "Keywords": Nothing, "QualificationRequirements": Nothing }

-- | Constructs CreateHITTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITTypeRequest' :: Number -> String -> CurrencyAmount -> String -> ( { "AutoApprovalDelayInSeconds" :: Maybe (Number) , "AssignmentDurationInSeconds" :: (Number) , "Reward" :: (CurrencyAmount) , "Title" :: (String) , "Keywords" :: Maybe (String) , "Description" :: (String) , "QualificationRequirements" :: Maybe (QualificationRequirementList) } -> {"AutoApprovalDelayInSeconds" :: Maybe (Number) , "AssignmentDurationInSeconds" :: (Number) , "Reward" :: (CurrencyAmount) , "Title" :: (String) , "Keywords" :: Maybe (String) , "Description" :: (String) , "QualificationRequirements" :: Maybe (QualificationRequirementList) } ) -> CreateHITTypeRequest
newCreateHITTypeRequest' _AssignmentDurationInSeconds _Description _Reward _Title customize = (CreateHITTypeRequest <<< customize) { "AssignmentDurationInSeconds": _AssignmentDurationInSeconds, "Description": _Description, "Reward": _Reward, "Title": _Title, "AutoApprovalDelayInSeconds": Nothing, "Keywords": Nothing, "QualificationRequirements": Nothing }



newtype CreateHITTypeResponse = CreateHITTypeResponse 
  { "HITTypeId" :: Maybe (EntityId)
  }
derive instance newtypeCreateHITTypeResponse :: Newtype CreateHITTypeResponse _
derive instance repGenericCreateHITTypeResponse :: Generic CreateHITTypeResponse _
instance showCreateHITTypeResponse :: Show CreateHITTypeResponse where show = genericShow
instance decodeCreateHITTypeResponse :: Decode CreateHITTypeResponse where decode = genericDecode options
instance encodeCreateHITTypeResponse :: Encode CreateHITTypeResponse where encode = genericEncode options

-- | Constructs CreateHITTypeResponse from required parameters
newCreateHITTypeResponse :: CreateHITTypeResponse
newCreateHITTypeResponse  = CreateHITTypeResponse { "HITTypeId": Nothing }

-- | Constructs CreateHITTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITTypeResponse' :: ( { "HITTypeId" :: Maybe (EntityId) } -> {"HITTypeId" :: Maybe (EntityId) } ) -> CreateHITTypeResponse
newCreateHITTypeResponse'  customize = (CreateHITTypeResponse <<< customize) { "HITTypeId": Nothing }



newtype CreateHITWithHITTypeRequest = CreateHITWithHITTypeRequest 
  { "HITTypeId" :: (EntityId)
  , "MaxAssignments" :: Maybe (Int)
  , "LifetimeInSeconds" :: (Number)
  , "Question" :: Maybe (String)
  , "RequesterAnnotation" :: Maybe (String)
  , "UniqueRequestToken" :: Maybe (IdempotencyToken)
  , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy)
  , "HITReviewPolicy" :: Maybe (ReviewPolicy)
  , "HITLayoutId" :: Maybe (EntityId)
  , "HITLayoutParameters" :: Maybe (HITLayoutParameterList)
  }
derive instance newtypeCreateHITWithHITTypeRequest :: Newtype CreateHITWithHITTypeRequest _
derive instance repGenericCreateHITWithHITTypeRequest :: Generic CreateHITWithHITTypeRequest _
instance showCreateHITWithHITTypeRequest :: Show CreateHITWithHITTypeRequest where show = genericShow
instance decodeCreateHITWithHITTypeRequest :: Decode CreateHITWithHITTypeRequest where decode = genericDecode options
instance encodeCreateHITWithHITTypeRequest :: Encode CreateHITWithHITTypeRequest where encode = genericEncode options

-- | Constructs CreateHITWithHITTypeRequest from required parameters
newCreateHITWithHITTypeRequest :: EntityId -> Number -> CreateHITWithHITTypeRequest
newCreateHITWithHITTypeRequest _HITTypeId _LifetimeInSeconds = CreateHITWithHITTypeRequest { "HITTypeId": _HITTypeId, "LifetimeInSeconds": _LifetimeInSeconds, "AssignmentReviewPolicy": Nothing, "HITLayoutId": Nothing, "HITLayoutParameters": Nothing, "HITReviewPolicy": Nothing, "MaxAssignments": Nothing, "Question": Nothing, "RequesterAnnotation": Nothing, "UniqueRequestToken": Nothing }

-- | Constructs CreateHITWithHITTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITWithHITTypeRequest' :: EntityId -> Number -> ( { "HITTypeId" :: (EntityId) , "MaxAssignments" :: Maybe (Int) , "LifetimeInSeconds" :: (Number) , "Question" :: Maybe (String) , "RequesterAnnotation" :: Maybe (String) , "UniqueRequestToken" :: Maybe (IdempotencyToken) , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy) , "HITReviewPolicy" :: Maybe (ReviewPolicy) , "HITLayoutId" :: Maybe (EntityId) , "HITLayoutParameters" :: Maybe (HITLayoutParameterList) } -> {"HITTypeId" :: (EntityId) , "MaxAssignments" :: Maybe (Int) , "LifetimeInSeconds" :: (Number) , "Question" :: Maybe (String) , "RequesterAnnotation" :: Maybe (String) , "UniqueRequestToken" :: Maybe (IdempotencyToken) , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy) , "HITReviewPolicy" :: Maybe (ReviewPolicy) , "HITLayoutId" :: Maybe (EntityId) , "HITLayoutParameters" :: Maybe (HITLayoutParameterList) } ) -> CreateHITWithHITTypeRequest
newCreateHITWithHITTypeRequest' _HITTypeId _LifetimeInSeconds customize = (CreateHITWithHITTypeRequest <<< customize) { "HITTypeId": _HITTypeId, "LifetimeInSeconds": _LifetimeInSeconds, "AssignmentReviewPolicy": Nothing, "HITLayoutId": Nothing, "HITLayoutParameters": Nothing, "HITReviewPolicy": Nothing, "MaxAssignments": Nothing, "Question": Nothing, "RequesterAnnotation": Nothing, "UniqueRequestToken": Nothing }



newtype CreateHITWithHITTypeResponse = CreateHITWithHITTypeResponse 
  { "HIT" :: Maybe (HIT)
  }
derive instance newtypeCreateHITWithHITTypeResponse :: Newtype CreateHITWithHITTypeResponse _
derive instance repGenericCreateHITWithHITTypeResponse :: Generic CreateHITWithHITTypeResponse _
instance showCreateHITWithHITTypeResponse :: Show CreateHITWithHITTypeResponse where show = genericShow
instance decodeCreateHITWithHITTypeResponse :: Decode CreateHITWithHITTypeResponse where decode = genericDecode options
instance encodeCreateHITWithHITTypeResponse :: Encode CreateHITWithHITTypeResponse where encode = genericEncode options

-- | Constructs CreateHITWithHITTypeResponse from required parameters
newCreateHITWithHITTypeResponse :: CreateHITWithHITTypeResponse
newCreateHITWithHITTypeResponse  = CreateHITWithHITTypeResponse { "HIT": Nothing }

-- | Constructs CreateHITWithHITTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITWithHITTypeResponse' :: ( { "HIT" :: Maybe (HIT) } -> {"HIT" :: Maybe (HIT) } ) -> CreateHITWithHITTypeResponse
newCreateHITWithHITTypeResponse'  customize = (CreateHITWithHITTypeResponse <<< customize) { "HIT": Nothing }



newtype CreateQualificationTypeRequest = CreateQualificationTypeRequest 
  { "Name" :: (String)
  , "Keywords" :: Maybe (String)
  , "Description" :: (String)
  , "QualificationTypeStatus" :: (QualificationTypeStatus)
  , "RetryDelayInSeconds" :: Maybe (Number)
  , "Test" :: Maybe (String)
  , "AnswerKey" :: Maybe (String)
  , "TestDurationInSeconds" :: Maybe (Number)
  , "AutoGranted" :: Maybe (Boolean)
  , "AutoGrantedValue" :: Maybe (Int)
  }
derive instance newtypeCreateQualificationTypeRequest :: Newtype CreateQualificationTypeRequest _
derive instance repGenericCreateQualificationTypeRequest :: Generic CreateQualificationTypeRequest _
instance showCreateQualificationTypeRequest :: Show CreateQualificationTypeRequest where show = genericShow
instance decodeCreateQualificationTypeRequest :: Decode CreateQualificationTypeRequest where decode = genericDecode options
instance encodeCreateQualificationTypeRequest :: Encode CreateQualificationTypeRequest where encode = genericEncode options

-- | Constructs CreateQualificationTypeRequest from required parameters
newCreateQualificationTypeRequest :: String -> String -> QualificationTypeStatus -> CreateQualificationTypeRequest
newCreateQualificationTypeRequest _Description _Name _QualificationTypeStatus = CreateQualificationTypeRequest { "Description": _Description, "Name": _Name, "QualificationTypeStatus": _QualificationTypeStatus, "AnswerKey": Nothing, "AutoGranted": Nothing, "AutoGrantedValue": Nothing, "Keywords": Nothing, "RetryDelayInSeconds": Nothing, "Test": Nothing, "TestDurationInSeconds": Nothing }

-- | Constructs CreateQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQualificationTypeRequest' :: String -> String -> QualificationTypeStatus -> ( { "Name" :: (String) , "Keywords" :: Maybe (String) , "Description" :: (String) , "QualificationTypeStatus" :: (QualificationTypeStatus) , "RetryDelayInSeconds" :: Maybe (Number) , "Test" :: Maybe (String) , "AnswerKey" :: Maybe (String) , "TestDurationInSeconds" :: Maybe (Number) , "AutoGranted" :: Maybe (Boolean) , "AutoGrantedValue" :: Maybe (Int) } -> {"Name" :: (String) , "Keywords" :: Maybe (String) , "Description" :: (String) , "QualificationTypeStatus" :: (QualificationTypeStatus) , "RetryDelayInSeconds" :: Maybe (Number) , "Test" :: Maybe (String) , "AnswerKey" :: Maybe (String) , "TestDurationInSeconds" :: Maybe (Number) , "AutoGranted" :: Maybe (Boolean) , "AutoGrantedValue" :: Maybe (Int) } ) -> CreateQualificationTypeRequest
newCreateQualificationTypeRequest' _Description _Name _QualificationTypeStatus customize = (CreateQualificationTypeRequest <<< customize) { "Description": _Description, "Name": _Name, "QualificationTypeStatus": _QualificationTypeStatus, "AnswerKey": Nothing, "AutoGranted": Nothing, "AutoGrantedValue": Nothing, "Keywords": Nothing, "RetryDelayInSeconds": Nothing, "Test": Nothing, "TestDurationInSeconds": Nothing }



newtype CreateQualificationTypeResponse = CreateQualificationTypeResponse 
  { "QualificationType" :: Maybe (QualificationType)
  }
derive instance newtypeCreateQualificationTypeResponse :: Newtype CreateQualificationTypeResponse _
derive instance repGenericCreateQualificationTypeResponse :: Generic CreateQualificationTypeResponse _
instance showCreateQualificationTypeResponse :: Show CreateQualificationTypeResponse where show = genericShow
instance decodeCreateQualificationTypeResponse :: Decode CreateQualificationTypeResponse where decode = genericDecode options
instance encodeCreateQualificationTypeResponse :: Encode CreateQualificationTypeResponse where encode = genericEncode options

-- | Constructs CreateQualificationTypeResponse from required parameters
newCreateQualificationTypeResponse :: CreateQualificationTypeResponse
newCreateQualificationTypeResponse  = CreateQualificationTypeResponse { "QualificationType": Nothing }

-- | Constructs CreateQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQualificationTypeResponse' :: ( { "QualificationType" :: Maybe (QualificationType) } -> {"QualificationType" :: Maybe (QualificationType) } ) -> CreateQualificationTypeResponse
newCreateQualificationTypeResponse'  customize = (CreateQualificationTypeResponse <<< customize) { "QualificationType": Nothing }



newtype CreateWorkerBlockRequest = CreateWorkerBlockRequest 
  { "WorkerId" :: (CustomerId)
  , "Reason" :: (String)
  }
derive instance newtypeCreateWorkerBlockRequest :: Newtype CreateWorkerBlockRequest _
derive instance repGenericCreateWorkerBlockRequest :: Generic CreateWorkerBlockRequest _
instance showCreateWorkerBlockRequest :: Show CreateWorkerBlockRequest where show = genericShow
instance decodeCreateWorkerBlockRequest :: Decode CreateWorkerBlockRequest where decode = genericDecode options
instance encodeCreateWorkerBlockRequest :: Encode CreateWorkerBlockRequest where encode = genericEncode options

-- | Constructs CreateWorkerBlockRequest from required parameters
newCreateWorkerBlockRequest :: String -> CustomerId -> CreateWorkerBlockRequest
newCreateWorkerBlockRequest _Reason _WorkerId = CreateWorkerBlockRequest { "Reason": _Reason, "WorkerId": _WorkerId }

-- | Constructs CreateWorkerBlockRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateWorkerBlockRequest' :: String -> CustomerId -> ( { "WorkerId" :: (CustomerId) , "Reason" :: (String) } -> {"WorkerId" :: (CustomerId) , "Reason" :: (String) } ) -> CreateWorkerBlockRequest
newCreateWorkerBlockRequest' _Reason _WorkerId customize = (CreateWorkerBlockRequest <<< customize) { "Reason": _Reason, "WorkerId": _WorkerId }



newtype CreateWorkerBlockResponse = CreateWorkerBlockResponse Types.NoArguments
derive instance newtypeCreateWorkerBlockResponse :: Newtype CreateWorkerBlockResponse _
derive instance repGenericCreateWorkerBlockResponse :: Generic CreateWorkerBlockResponse _
instance showCreateWorkerBlockResponse :: Show CreateWorkerBlockResponse where show = genericShow
instance decodeCreateWorkerBlockResponse :: Decode CreateWorkerBlockResponse where decode = genericDecode options
instance encodeCreateWorkerBlockResponse :: Encode CreateWorkerBlockResponse where encode = genericEncode options



-- | <p>A string representing a currency amount.</p>
newtype CurrencyAmount = CurrencyAmount String
derive instance newtypeCurrencyAmount :: Newtype CurrencyAmount _
derive instance repGenericCurrencyAmount :: Generic CurrencyAmount _
instance showCurrencyAmount :: Show CurrencyAmount where show = genericShow
instance decodeCurrencyAmount :: Decode CurrencyAmount where decode = genericDecode options
instance encodeCurrencyAmount :: Encode CurrencyAmount where encode = genericEncode options



newtype CustomerId = CustomerId String
derive instance newtypeCustomerId :: Newtype CustomerId _
derive instance repGenericCustomerId :: Generic CustomerId _
instance showCustomerId :: Show CustomerId where show = genericShow
instance decodeCustomerId :: Decode CustomerId where decode = genericDecode options
instance encodeCustomerId :: Encode CustomerId where encode = genericEncode options



newtype CustomerIdList = CustomerIdList (Array CustomerId)
derive instance newtypeCustomerIdList :: Newtype CustomerIdList _
derive instance repGenericCustomerIdList :: Generic CustomerIdList _
instance showCustomerIdList :: Show CustomerIdList where show = genericShow
instance decodeCustomerIdList :: Decode CustomerIdList where decode = genericDecode options
instance encodeCustomerIdList :: Encode CustomerIdList where encode = genericEncode options



newtype DeleteHITRequest = DeleteHITRequest 
  { "HITId" :: (EntityId)
  }
derive instance newtypeDeleteHITRequest :: Newtype DeleteHITRequest _
derive instance repGenericDeleteHITRequest :: Generic DeleteHITRequest _
instance showDeleteHITRequest :: Show DeleteHITRequest where show = genericShow
instance decodeDeleteHITRequest :: Decode DeleteHITRequest where decode = genericDecode options
instance encodeDeleteHITRequest :: Encode DeleteHITRequest where encode = genericEncode options

-- | Constructs DeleteHITRequest from required parameters
newDeleteHITRequest :: EntityId -> DeleteHITRequest
newDeleteHITRequest _HITId = DeleteHITRequest { "HITId": _HITId }

-- | Constructs DeleteHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteHITRequest' :: EntityId -> ( { "HITId" :: (EntityId) } -> {"HITId" :: (EntityId) } ) -> DeleteHITRequest
newDeleteHITRequest' _HITId customize = (DeleteHITRequest <<< customize) { "HITId": _HITId }



newtype DeleteHITResponse = DeleteHITResponse Types.NoArguments
derive instance newtypeDeleteHITResponse :: Newtype DeleteHITResponse _
derive instance repGenericDeleteHITResponse :: Generic DeleteHITResponse _
instance showDeleteHITResponse :: Show DeleteHITResponse where show = genericShow
instance decodeDeleteHITResponse :: Decode DeleteHITResponse where decode = genericDecode options
instance encodeDeleteHITResponse :: Encode DeleteHITResponse where encode = genericEncode options



newtype DeleteQualificationTypeRequest = DeleteQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  }
derive instance newtypeDeleteQualificationTypeRequest :: Newtype DeleteQualificationTypeRequest _
derive instance repGenericDeleteQualificationTypeRequest :: Generic DeleteQualificationTypeRequest _
instance showDeleteQualificationTypeRequest :: Show DeleteQualificationTypeRequest where show = genericShow
instance decodeDeleteQualificationTypeRequest :: Decode DeleteQualificationTypeRequest where decode = genericDecode options
instance encodeDeleteQualificationTypeRequest :: Encode DeleteQualificationTypeRequest where encode = genericEncode options

-- | Constructs DeleteQualificationTypeRequest from required parameters
newDeleteQualificationTypeRequest :: EntityId -> DeleteQualificationTypeRequest
newDeleteQualificationTypeRequest _QualificationTypeId = DeleteQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId }

-- | Constructs DeleteQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) } -> {"QualificationTypeId" :: (EntityId) } ) -> DeleteQualificationTypeRequest
newDeleteQualificationTypeRequest' _QualificationTypeId customize = (DeleteQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId }



newtype DeleteQualificationTypeResponse = DeleteQualificationTypeResponse Types.NoArguments
derive instance newtypeDeleteQualificationTypeResponse :: Newtype DeleteQualificationTypeResponse _
derive instance repGenericDeleteQualificationTypeResponse :: Generic DeleteQualificationTypeResponse _
instance showDeleteQualificationTypeResponse :: Show DeleteQualificationTypeResponse where show = genericShow
instance decodeDeleteQualificationTypeResponse :: Decode DeleteQualificationTypeResponse where decode = genericDecode options
instance encodeDeleteQualificationTypeResponse :: Encode DeleteQualificationTypeResponse where encode = genericEncode options



newtype DeleteWorkerBlockRequest = DeleteWorkerBlockRequest 
  { "WorkerId" :: (CustomerId)
  , "Reason" :: Maybe (String)
  }
derive instance newtypeDeleteWorkerBlockRequest :: Newtype DeleteWorkerBlockRequest _
derive instance repGenericDeleteWorkerBlockRequest :: Generic DeleteWorkerBlockRequest _
instance showDeleteWorkerBlockRequest :: Show DeleteWorkerBlockRequest where show = genericShow
instance decodeDeleteWorkerBlockRequest :: Decode DeleteWorkerBlockRequest where decode = genericDecode options
instance encodeDeleteWorkerBlockRequest :: Encode DeleteWorkerBlockRequest where encode = genericEncode options

-- | Constructs DeleteWorkerBlockRequest from required parameters
newDeleteWorkerBlockRequest :: CustomerId -> DeleteWorkerBlockRequest
newDeleteWorkerBlockRequest _WorkerId = DeleteWorkerBlockRequest { "WorkerId": _WorkerId, "Reason": Nothing }

-- | Constructs DeleteWorkerBlockRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteWorkerBlockRequest' :: CustomerId -> ( { "WorkerId" :: (CustomerId) , "Reason" :: Maybe (String) } -> {"WorkerId" :: (CustomerId) , "Reason" :: Maybe (String) } ) -> DeleteWorkerBlockRequest
newDeleteWorkerBlockRequest' _WorkerId customize = (DeleteWorkerBlockRequest <<< customize) { "WorkerId": _WorkerId, "Reason": Nothing }



newtype DeleteWorkerBlockResponse = DeleteWorkerBlockResponse Types.NoArguments
derive instance newtypeDeleteWorkerBlockResponse :: Newtype DeleteWorkerBlockResponse _
derive instance repGenericDeleteWorkerBlockResponse :: Generic DeleteWorkerBlockResponse _
instance showDeleteWorkerBlockResponse :: Show DeleteWorkerBlockResponse where show = genericShow
instance decodeDeleteWorkerBlockResponse :: Decode DeleteWorkerBlockResponse where decode = genericDecode options
instance encodeDeleteWorkerBlockResponse :: Encode DeleteWorkerBlockResponse where encode = genericEncode options



newtype DisassociateQualificationFromWorkerRequest = DisassociateQualificationFromWorkerRequest 
  { "WorkerId" :: (CustomerId)
  , "QualificationTypeId" :: (EntityId)
  , "Reason" :: Maybe (String)
  }
derive instance newtypeDisassociateQualificationFromWorkerRequest :: Newtype DisassociateQualificationFromWorkerRequest _
derive instance repGenericDisassociateQualificationFromWorkerRequest :: Generic DisassociateQualificationFromWorkerRequest _
instance showDisassociateQualificationFromWorkerRequest :: Show DisassociateQualificationFromWorkerRequest where show = genericShow
instance decodeDisassociateQualificationFromWorkerRequest :: Decode DisassociateQualificationFromWorkerRequest where decode = genericDecode options
instance encodeDisassociateQualificationFromWorkerRequest :: Encode DisassociateQualificationFromWorkerRequest where encode = genericEncode options

-- | Constructs DisassociateQualificationFromWorkerRequest from required parameters
newDisassociateQualificationFromWorkerRequest :: EntityId -> CustomerId -> DisassociateQualificationFromWorkerRequest
newDisassociateQualificationFromWorkerRequest _QualificationTypeId _WorkerId = DisassociateQualificationFromWorkerRequest { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId, "Reason": Nothing }

-- | Constructs DisassociateQualificationFromWorkerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateQualificationFromWorkerRequest' :: EntityId -> CustomerId -> ( { "WorkerId" :: (CustomerId) , "QualificationTypeId" :: (EntityId) , "Reason" :: Maybe (String) } -> {"WorkerId" :: (CustomerId) , "QualificationTypeId" :: (EntityId) , "Reason" :: Maybe (String) } ) -> DisassociateQualificationFromWorkerRequest
newDisassociateQualificationFromWorkerRequest' _QualificationTypeId _WorkerId customize = (DisassociateQualificationFromWorkerRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId, "Reason": Nothing }



newtype DisassociateQualificationFromWorkerResponse = DisassociateQualificationFromWorkerResponse Types.NoArguments
derive instance newtypeDisassociateQualificationFromWorkerResponse :: Newtype DisassociateQualificationFromWorkerResponse _
derive instance repGenericDisassociateQualificationFromWorkerResponse :: Generic DisassociateQualificationFromWorkerResponse _
instance showDisassociateQualificationFromWorkerResponse :: Show DisassociateQualificationFromWorkerResponse where show = genericShow
instance decodeDisassociateQualificationFromWorkerResponse :: Decode DisassociateQualificationFromWorkerResponse where decode = genericDecode options
instance encodeDisassociateQualificationFromWorkerResponse :: Encode DisassociateQualificationFromWorkerResponse where encode = genericEncode options



newtype EntityId = EntityId String
derive instance newtypeEntityId :: Newtype EntityId _
derive instance repGenericEntityId :: Generic EntityId _
instance showEntityId :: Show EntityId where show = genericShow
instance decodeEntityId :: Decode EntityId where decode = genericDecode options
instance encodeEntityId :: Encode EntityId where encode = genericEncode options



newtype EventType = EventType String
derive instance newtypeEventType :: Newtype EventType _
derive instance repGenericEventType :: Generic EventType _
instance showEventType :: Show EventType where show = genericShow
instance decodeEventType :: Decode EventType where decode = genericDecode options
instance encodeEventType :: Encode EventType where encode = genericEncode options



newtype EventTypeList = EventTypeList (Array EventType)
derive instance newtypeEventTypeList :: Newtype EventTypeList _
derive instance repGenericEventTypeList :: Generic EventTypeList _
instance showEventTypeList :: Show EventTypeList where show = genericShow
instance decodeEventTypeList :: Decode EventTypeList where decode = genericDecode options
instance encodeEventTypeList :: Encode EventTypeList where encode = genericEncode options



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where decode = genericDecode options
instance encodeExceptionMessage :: Encode ExceptionMessage where encode = genericEncode options



newtype GetAccountBalanceRequest = GetAccountBalanceRequest Types.NoArguments
derive instance newtypeGetAccountBalanceRequest :: Newtype GetAccountBalanceRequest _
derive instance repGenericGetAccountBalanceRequest :: Generic GetAccountBalanceRequest _
instance showGetAccountBalanceRequest :: Show GetAccountBalanceRequest where show = genericShow
instance decodeGetAccountBalanceRequest :: Decode GetAccountBalanceRequest where decode = genericDecode options
instance encodeGetAccountBalanceRequest :: Encode GetAccountBalanceRequest where encode = genericEncode options



newtype GetAccountBalanceResponse = GetAccountBalanceResponse 
  { "AvailableBalance" :: Maybe (CurrencyAmount)
  , "OnHoldBalance" :: Maybe (CurrencyAmount)
  }
derive instance newtypeGetAccountBalanceResponse :: Newtype GetAccountBalanceResponse _
derive instance repGenericGetAccountBalanceResponse :: Generic GetAccountBalanceResponse _
instance showGetAccountBalanceResponse :: Show GetAccountBalanceResponse where show = genericShow
instance decodeGetAccountBalanceResponse :: Decode GetAccountBalanceResponse where decode = genericDecode options
instance encodeGetAccountBalanceResponse :: Encode GetAccountBalanceResponse where encode = genericEncode options

-- | Constructs GetAccountBalanceResponse from required parameters
newGetAccountBalanceResponse :: GetAccountBalanceResponse
newGetAccountBalanceResponse  = GetAccountBalanceResponse { "AvailableBalance": Nothing, "OnHoldBalance": Nothing }

-- | Constructs GetAccountBalanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountBalanceResponse' :: ( { "AvailableBalance" :: Maybe (CurrencyAmount) , "OnHoldBalance" :: Maybe (CurrencyAmount) } -> {"AvailableBalance" :: Maybe (CurrencyAmount) , "OnHoldBalance" :: Maybe (CurrencyAmount) } ) -> GetAccountBalanceResponse
newGetAccountBalanceResponse'  customize = (GetAccountBalanceResponse <<< customize) { "AvailableBalance": Nothing, "OnHoldBalance": Nothing }



newtype GetAssignmentRequest = GetAssignmentRequest 
  { "AssignmentId" :: (EntityId)
  }
derive instance newtypeGetAssignmentRequest :: Newtype GetAssignmentRequest _
derive instance repGenericGetAssignmentRequest :: Generic GetAssignmentRequest _
instance showGetAssignmentRequest :: Show GetAssignmentRequest where show = genericShow
instance decodeGetAssignmentRequest :: Decode GetAssignmentRequest where decode = genericDecode options
instance encodeGetAssignmentRequest :: Encode GetAssignmentRequest where encode = genericEncode options

-- | Constructs GetAssignmentRequest from required parameters
newGetAssignmentRequest :: EntityId -> GetAssignmentRequest
newGetAssignmentRequest _AssignmentId = GetAssignmentRequest { "AssignmentId": _AssignmentId }

-- | Constructs GetAssignmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAssignmentRequest' :: EntityId -> ( { "AssignmentId" :: (EntityId) } -> {"AssignmentId" :: (EntityId) } ) -> GetAssignmentRequest
newGetAssignmentRequest' _AssignmentId customize = (GetAssignmentRequest <<< customize) { "AssignmentId": _AssignmentId }



newtype GetAssignmentResponse = GetAssignmentResponse 
  { "Assignment" :: Maybe (Assignment)
  , "HIT" :: Maybe (HIT)
  }
derive instance newtypeGetAssignmentResponse :: Newtype GetAssignmentResponse _
derive instance repGenericGetAssignmentResponse :: Generic GetAssignmentResponse _
instance showGetAssignmentResponse :: Show GetAssignmentResponse where show = genericShow
instance decodeGetAssignmentResponse :: Decode GetAssignmentResponse where decode = genericDecode options
instance encodeGetAssignmentResponse :: Encode GetAssignmentResponse where encode = genericEncode options

-- | Constructs GetAssignmentResponse from required parameters
newGetAssignmentResponse :: GetAssignmentResponse
newGetAssignmentResponse  = GetAssignmentResponse { "Assignment": Nothing, "HIT": Nothing }

-- | Constructs GetAssignmentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAssignmentResponse' :: ( { "Assignment" :: Maybe (Assignment) , "HIT" :: Maybe (HIT) } -> {"Assignment" :: Maybe (Assignment) , "HIT" :: Maybe (HIT) } ) -> GetAssignmentResponse
newGetAssignmentResponse'  customize = (GetAssignmentResponse <<< customize) { "Assignment": Nothing, "HIT": Nothing }



newtype GetFileUploadURLRequest = GetFileUploadURLRequest 
  { "AssignmentId" :: (EntityId)
  , "QuestionIdentifier" :: (String)
  }
derive instance newtypeGetFileUploadURLRequest :: Newtype GetFileUploadURLRequest _
derive instance repGenericGetFileUploadURLRequest :: Generic GetFileUploadURLRequest _
instance showGetFileUploadURLRequest :: Show GetFileUploadURLRequest where show = genericShow
instance decodeGetFileUploadURLRequest :: Decode GetFileUploadURLRequest where decode = genericDecode options
instance encodeGetFileUploadURLRequest :: Encode GetFileUploadURLRequest where encode = genericEncode options

-- | Constructs GetFileUploadURLRequest from required parameters
newGetFileUploadURLRequest :: EntityId -> String -> GetFileUploadURLRequest
newGetFileUploadURLRequest _AssignmentId _QuestionIdentifier = GetFileUploadURLRequest { "AssignmentId": _AssignmentId, "QuestionIdentifier": _QuestionIdentifier }

-- | Constructs GetFileUploadURLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFileUploadURLRequest' :: EntityId -> String -> ( { "AssignmentId" :: (EntityId) , "QuestionIdentifier" :: (String) } -> {"AssignmentId" :: (EntityId) , "QuestionIdentifier" :: (String) } ) -> GetFileUploadURLRequest
newGetFileUploadURLRequest' _AssignmentId _QuestionIdentifier customize = (GetFileUploadURLRequest <<< customize) { "AssignmentId": _AssignmentId, "QuestionIdentifier": _QuestionIdentifier }



newtype GetFileUploadURLResponse = GetFileUploadURLResponse 
  { "FileUploadURL" :: Maybe (String)
  }
derive instance newtypeGetFileUploadURLResponse :: Newtype GetFileUploadURLResponse _
derive instance repGenericGetFileUploadURLResponse :: Generic GetFileUploadURLResponse _
instance showGetFileUploadURLResponse :: Show GetFileUploadURLResponse where show = genericShow
instance decodeGetFileUploadURLResponse :: Decode GetFileUploadURLResponse where decode = genericDecode options
instance encodeGetFileUploadURLResponse :: Encode GetFileUploadURLResponse where encode = genericEncode options

-- | Constructs GetFileUploadURLResponse from required parameters
newGetFileUploadURLResponse :: GetFileUploadURLResponse
newGetFileUploadURLResponse  = GetFileUploadURLResponse { "FileUploadURL": Nothing }

-- | Constructs GetFileUploadURLResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFileUploadURLResponse' :: ( { "FileUploadURL" :: Maybe (String) } -> {"FileUploadURL" :: Maybe (String) } ) -> GetFileUploadURLResponse
newGetFileUploadURLResponse'  customize = (GetFileUploadURLResponse <<< customize) { "FileUploadURL": Nothing }



newtype GetHITRequest = GetHITRequest 
  { "HITId" :: (EntityId)
  }
derive instance newtypeGetHITRequest :: Newtype GetHITRequest _
derive instance repGenericGetHITRequest :: Generic GetHITRequest _
instance showGetHITRequest :: Show GetHITRequest where show = genericShow
instance decodeGetHITRequest :: Decode GetHITRequest where decode = genericDecode options
instance encodeGetHITRequest :: Encode GetHITRequest where encode = genericEncode options

-- | Constructs GetHITRequest from required parameters
newGetHITRequest :: EntityId -> GetHITRequest
newGetHITRequest _HITId = GetHITRequest { "HITId": _HITId }

-- | Constructs GetHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHITRequest' :: EntityId -> ( { "HITId" :: (EntityId) } -> {"HITId" :: (EntityId) } ) -> GetHITRequest
newGetHITRequest' _HITId customize = (GetHITRequest <<< customize) { "HITId": _HITId }



newtype GetHITResponse = GetHITResponse 
  { "HIT" :: Maybe (HIT)
  }
derive instance newtypeGetHITResponse :: Newtype GetHITResponse _
derive instance repGenericGetHITResponse :: Generic GetHITResponse _
instance showGetHITResponse :: Show GetHITResponse where show = genericShow
instance decodeGetHITResponse :: Decode GetHITResponse where decode = genericDecode options
instance encodeGetHITResponse :: Encode GetHITResponse where encode = genericEncode options

-- | Constructs GetHITResponse from required parameters
newGetHITResponse :: GetHITResponse
newGetHITResponse  = GetHITResponse { "HIT": Nothing }

-- | Constructs GetHITResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHITResponse' :: ( { "HIT" :: Maybe (HIT) } -> {"HIT" :: Maybe (HIT) } ) -> GetHITResponse
newGetHITResponse'  customize = (GetHITResponse <<< customize) { "HIT": Nothing }



newtype GetQualificationScoreRequest = GetQualificationScoreRequest 
  { "QualificationTypeId" :: (EntityId)
  , "WorkerId" :: (CustomerId)
  }
derive instance newtypeGetQualificationScoreRequest :: Newtype GetQualificationScoreRequest _
derive instance repGenericGetQualificationScoreRequest :: Generic GetQualificationScoreRequest _
instance showGetQualificationScoreRequest :: Show GetQualificationScoreRequest where show = genericShow
instance decodeGetQualificationScoreRequest :: Decode GetQualificationScoreRequest where decode = genericDecode options
instance encodeGetQualificationScoreRequest :: Encode GetQualificationScoreRequest where encode = genericEncode options

-- | Constructs GetQualificationScoreRequest from required parameters
newGetQualificationScoreRequest :: EntityId -> CustomerId -> GetQualificationScoreRequest
newGetQualificationScoreRequest _QualificationTypeId _WorkerId = GetQualificationScoreRequest { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId }

-- | Constructs GetQualificationScoreRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQualificationScoreRequest' :: EntityId -> CustomerId -> ( { "QualificationTypeId" :: (EntityId) , "WorkerId" :: (CustomerId) } -> {"QualificationTypeId" :: (EntityId) , "WorkerId" :: (CustomerId) } ) -> GetQualificationScoreRequest
newGetQualificationScoreRequest' _QualificationTypeId _WorkerId customize = (GetQualificationScoreRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId }



newtype GetQualificationScoreResponse = GetQualificationScoreResponse 
  { "Qualification" :: Maybe (Qualification)
  }
derive instance newtypeGetQualificationScoreResponse :: Newtype GetQualificationScoreResponse _
derive instance repGenericGetQualificationScoreResponse :: Generic GetQualificationScoreResponse _
instance showGetQualificationScoreResponse :: Show GetQualificationScoreResponse where show = genericShow
instance decodeGetQualificationScoreResponse :: Decode GetQualificationScoreResponse where decode = genericDecode options
instance encodeGetQualificationScoreResponse :: Encode GetQualificationScoreResponse where encode = genericEncode options

-- | Constructs GetQualificationScoreResponse from required parameters
newGetQualificationScoreResponse :: GetQualificationScoreResponse
newGetQualificationScoreResponse  = GetQualificationScoreResponse { "Qualification": Nothing }

-- | Constructs GetQualificationScoreResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQualificationScoreResponse' :: ( { "Qualification" :: Maybe (Qualification) } -> {"Qualification" :: Maybe (Qualification) } ) -> GetQualificationScoreResponse
newGetQualificationScoreResponse'  customize = (GetQualificationScoreResponse <<< customize) { "Qualification": Nothing }



newtype GetQualificationTypeRequest = GetQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  }
derive instance newtypeGetQualificationTypeRequest :: Newtype GetQualificationTypeRequest _
derive instance repGenericGetQualificationTypeRequest :: Generic GetQualificationTypeRequest _
instance showGetQualificationTypeRequest :: Show GetQualificationTypeRequest where show = genericShow
instance decodeGetQualificationTypeRequest :: Decode GetQualificationTypeRequest where decode = genericDecode options
instance encodeGetQualificationTypeRequest :: Encode GetQualificationTypeRequest where encode = genericEncode options

-- | Constructs GetQualificationTypeRequest from required parameters
newGetQualificationTypeRequest :: EntityId -> GetQualificationTypeRequest
newGetQualificationTypeRequest _QualificationTypeId = GetQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId }

-- | Constructs GetQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) } -> {"QualificationTypeId" :: (EntityId) } ) -> GetQualificationTypeRequest
newGetQualificationTypeRequest' _QualificationTypeId customize = (GetQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId }



newtype GetQualificationTypeResponse = GetQualificationTypeResponse 
  { "QualificationType" :: Maybe (QualificationType)
  }
derive instance newtypeGetQualificationTypeResponse :: Newtype GetQualificationTypeResponse _
derive instance repGenericGetQualificationTypeResponse :: Generic GetQualificationTypeResponse _
instance showGetQualificationTypeResponse :: Show GetQualificationTypeResponse where show = genericShow
instance decodeGetQualificationTypeResponse :: Decode GetQualificationTypeResponse where decode = genericDecode options
instance encodeGetQualificationTypeResponse :: Encode GetQualificationTypeResponse where encode = genericEncode options

-- | Constructs GetQualificationTypeResponse from required parameters
newGetQualificationTypeResponse :: GetQualificationTypeResponse
newGetQualificationTypeResponse  = GetQualificationTypeResponse { "QualificationType": Nothing }

-- | Constructs GetQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQualificationTypeResponse' :: ( { "QualificationType" :: Maybe (QualificationType) } -> {"QualificationType" :: Maybe (QualificationType) } ) -> GetQualificationTypeResponse
newGetQualificationTypeResponse'  customize = (GetQualificationTypeResponse <<< customize) { "QualificationType": Nothing }



-- | <p> The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.</p>
newtype HIT = HIT 
  { "HITId" :: Maybe (EntityId)
  , "HITTypeId" :: Maybe (EntityId)
  , "HITGroupId" :: Maybe (EntityId)
  , "HITLayoutId" :: Maybe (EntityId)
  , "CreationTime" :: Maybe (Types.Timestamp)
  , "Title" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "Question" :: Maybe (String)
  , "Keywords" :: Maybe (String)
  , "HITStatus" :: Maybe (HITStatus)
  , "MaxAssignments" :: Maybe (Int)
  , "Reward" :: Maybe (CurrencyAmount)
  , "AutoApprovalDelayInSeconds" :: Maybe (Number)
  , "Expiration" :: Maybe (Types.Timestamp)
  , "AssignmentDurationInSeconds" :: Maybe (Number)
  , "RequesterAnnotation" :: Maybe (String)
  , "QualificationRequirements" :: Maybe (QualificationRequirementList)
  , "HITReviewStatus" :: Maybe (HITReviewStatus)
  , "NumberOfAssignmentsPending" :: Maybe (Int)
  , "NumberOfAssignmentsAvailable" :: Maybe (Int)
  , "NumberOfAssignmentsCompleted" :: Maybe (Int)
  }
derive instance newtypeHIT :: Newtype HIT _
derive instance repGenericHIT :: Generic HIT _
instance showHIT :: Show HIT where show = genericShow
instance decodeHIT :: Decode HIT where decode = genericDecode options
instance encodeHIT :: Encode HIT where encode = genericEncode options

-- | Constructs HIT from required parameters
newHIT :: HIT
newHIT  = HIT { "AssignmentDurationInSeconds": Nothing, "AutoApprovalDelayInSeconds": Nothing, "CreationTime": Nothing, "Description": Nothing, "Expiration": Nothing, "HITGroupId": Nothing, "HITId": Nothing, "HITLayoutId": Nothing, "HITReviewStatus": Nothing, "HITStatus": Nothing, "HITTypeId": Nothing, "Keywords": Nothing, "MaxAssignments": Nothing, "NumberOfAssignmentsAvailable": Nothing, "NumberOfAssignmentsCompleted": Nothing, "NumberOfAssignmentsPending": Nothing, "QualificationRequirements": Nothing, "Question": Nothing, "RequesterAnnotation": Nothing, "Reward": Nothing, "Title": Nothing }

-- | Constructs HIT's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHIT' :: ( { "HITId" :: Maybe (EntityId) , "HITTypeId" :: Maybe (EntityId) , "HITGroupId" :: Maybe (EntityId) , "HITLayoutId" :: Maybe (EntityId) , "CreationTime" :: Maybe (Types.Timestamp) , "Title" :: Maybe (String) , "Description" :: Maybe (String) , "Question" :: Maybe (String) , "Keywords" :: Maybe (String) , "HITStatus" :: Maybe (HITStatus) , "MaxAssignments" :: Maybe (Int) , "Reward" :: Maybe (CurrencyAmount) , "AutoApprovalDelayInSeconds" :: Maybe (Number) , "Expiration" :: Maybe (Types.Timestamp) , "AssignmentDurationInSeconds" :: Maybe (Number) , "RequesterAnnotation" :: Maybe (String) , "QualificationRequirements" :: Maybe (QualificationRequirementList) , "HITReviewStatus" :: Maybe (HITReviewStatus) , "NumberOfAssignmentsPending" :: Maybe (Int) , "NumberOfAssignmentsAvailable" :: Maybe (Int) , "NumberOfAssignmentsCompleted" :: Maybe (Int) } -> {"HITId" :: Maybe (EntityId) , "HITTypeId" :: Maybe (EntityId) , "HITGroupId" :: Maybe (EntityId) , "HITLayoutId" :: Maybe (EntityId) , "CreationTime" :: Maybe (Types.Timestamp) , "Title" :: Maybe (String) , "Description" :: Maybe (String) , "Question" :: Maybe (String) , "Keywords" :: Maybe (String) , "HITStatus" :: Maybe (HITStatus) , "MaxAssignments" :: Maybe (Int) , "Reward" :: Maybe (CurrencyAmount) , "AutoApprovalDelayInSeconds" :: Maybe (Number) , "Expiration" :: Maybe (Types.Timestamp) , "AssignmentDurationInSeconds" :: Maybe (Number) , "RequesterAnnotation" :: Maybe (String) , "QualificationRequirements" :: Maybe (QualificationRequirementList) , "HITReviewStatus" :: Maybe (HITReviewStatus) , "NumberOfAssignmentsPending" :: Maybe (Int) , "NumberOfAssignmentsAvailable" :: Maybe (Int) , "NumberOfAssignmentsCompleted" :: Maybe (Int) } ) -> HIT
newHIT'  customize = (HIT <<< customize) { "AssignmentDurationInSeconds": Nothing, "AutoApprovalDelayInSeconds": Nothing, "CreationTime": Nothing, "Description": Nothing, "Expiration": Nothing, "HITGroupId": Nothing, "HITId": Nothing, "HITLayoutId": Nothing, "HITReviewStatus": Nothing, "HITStatus": Nothing, "HITTypeId": Nothing, "Keywords": Nothing, "MaxAssignments": Nothing, "NumberOfAssignmentsAvailable": Nothing, "NumberOfAssignmentsCompleted": Nothing, "NumberOfAssignmentsPending": Nothing, "QualificationRequirements": Nothing, "Question": Nothing, "RequesterAnnotation": Nothing, "Reward": Nothing, "Title": Nothing }



-- | <p> The HITLayoutParameter data structure defines parameter values used with a HITLayout. A HITLayout is a reusable Amazon Mechanical Turk project template used to provide Human Intelligence Task (HIT) question data for CreateHIT. </p>
newtype HITLayoutParameter = HITLayoutParameter 
  { "Name" :: (String)
  , "Value" :: (String)
  }
derive instance newtypeHITLayoutParameter :: Newtype HITLayoutParameter _
derive instance repGenericHITLayoutParameter :: Generic HITLayoutParameter _
instance showHITLayoutParameter :: Show HITLayoutParameter where show = genericShow
instance decodeHITLayoutParameter :: Decode HITLayoutParameter where decode = genericDecode options
instance encodeHITLayoutParameter :: Encode HITLayoutParameter where encode = genericEncode options

-- | Constructs HITLayoutParameter from required parameters
newHITLayoutParameter :: String -> String -> HITLayoutParameter
newHITLayoutParameter _Name _Value = HITLayoutParameter { "Name": _Name, "Value": _Value }

-- | Constructs HITLayoutParameter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHITLayoutParameter' :: String -> String -> ( { "Name" :: (String) , "Value" :: (String) } -> {"Name" :: (String) , "Value" :: (String) } ) -> HITLayoutParameter
newHITLayoutParameter' _Name _Value customize = (HITLayoutParameter <<< customize) { "Name": _Name, "Value": _Value }



newtype HITLayoutParameterList = HITLayoutParameterList (Array HITLayoutParameter)
derive instance newtypeHITLayoutParameterList :: Newtype HITLayoutParameterList _
derive instance repGenericHITLayoutParameterList :: Generic HITLayoutParameterList _
instance showHITLayoutParameterList :: Show HITLayoutParameterList where show = genericShow
instance decodeHITLayoutParameterList :: Decode HITLayoutParameterList where decode = genericDecode options
instance encodeHITLayoutParameterList :: Encode HITLayoutParameterList where encode = genericEncode options



newtype HITList = HITList (Array HIT)
derive instance newtypeHITList :: Newtype HITList _
derive instance repGenericHITList :: Generic HITList _
instance showHITList :: Show HITList where show = genericShow
instance decodeHITList :: Decode HITList where decode = genericDecode options
instance encodeHITList :: Encode HITList where encode = genericEncode options



newtype HITReviewStatus = HITReviewStatus String
derive instance newtypeHITReviewStatus :: Newtype HITReviewStatus _
derive instance repGenericHITReviewStatus :: Generic HITReviewStatus _
instance showHITReviewStatus :: Show HITReviewStatus where show = genericShow
instance decodeHITReviewStatus :: Decode HITReviewStatus where decode = genericDecode options
instance encodeHITReviewStatus :: Encode HITReviewStatus where encode = genericEncode options



newtype HITStatus = HITStatus String
derive instance newtypeHITStatus :: Newtype HITStatus _
derive instance repGenericHITStatus :: Generic HITStatus _
instance showHITStatus :: Show HITStatus where show = genericShow
instance decodeHITStatus :: Decode HITStatus where decode = genericDecode options
instance encodeHITStatus :: Encode HITStatus where encode = genericEncode options



newtype IdempotencyToken = IdempotencyToken String
derive instance newtypeIdempotencyToken :: Newtype IdempotencyToken _
derive instance repGenericIdempotencyToken :: Generic IdempotencyToken _
instance showIdempotencyToken :: Show IdempotencyToken where show = genericShow
instance decodeIdempotencyToken :: Decode IdempotencyToken where decode = genericDecode options
instance encodeIdempotencyToken :: Encode IdempotencyToken where encode = genericEncode options



newtype IntegerList = IntegerList (Array Int)
derive instance newtypeIntegerList :: Newtype IntegerList _
derive instance repGenericIntegerList :: Generic IntegerList _
instance showIntegerList :: Show IntegerList where show = genericShow
instance decodeIntegerList :: Decode IntegerList where decode = genericDecode options
instance encodeIntegerList :: Encode IntegerList where encode = genericEncode options



newtype ListAssignmentsForHITRequest = ListAssignmentsForHITRequest 
  { "HITId" :: (EntityId)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  , "AssignmentStatuses" :: Maybe (AssignmentStatusList)
  }
derive instance newtypeListAssignmentsForHITRequest :: Newtype ListAssignmentsForHITRequest _
derive instance repGenericListAssignmentsForHITRequest :: Generic ListAssignmentsForHITRequest _
instance showListAssignmentsForHITRequest :: Show ListAssignmentsForHITRequest where show = genericShow
instance decodeListAssignmentsForHITRequest :: Decode ListAssignmentsForHITRequest where decode = genericDecode options
instance encodeListAssignmentsForHITRequest :: Encode ListAssignmentsForHITRequest where encode = genericEncode options

-- | Constructs ListAssignmentsForHITRequest from required parameters
newListAssignmentsForHITRequest :: EntityId -> ListAssignmentsForHITRequest
newListAssignmentsForHITRequest _HITId = ListAssignmentsForHITRequest { "HITId": _HITId, "AssignmentStatuses": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListAssignmentsForHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssignmentsForHITRequest' :: EntityId -> ( { "HITId" :: (EntityId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) , "AssignmentStatuses" :: Maybe (AssignmentStatusList) } -> {"HITId" :: (EntityId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) , "AssignmentStatuses" :: Maybe (AssignmentStatusList) } ) -> ListAssignmentsForHITRequest
newListAssignmentsForHITRequest' _HITId customize = (ListAssignmentsForHITRequest <<< customize) { "HITId": _HITId, "AssignmentStatuses": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListAssignmentsForHITResponse = ListAssignmentsForHITResponse 
  { "NextToken" :: Maybe (PaginationToken)
  , "NumResults" :: Maybe (Int)
  , "Assignments" :: Maybe (AssignmentList)
  }
derive instance newtypeListAssignmentsForHITResponse :: Newtype ListAssignmentsForHITResponse _
derive instance repGenericListAssignmentsForHITResponse :: Generic ListAssignmentsForHITResponse _
instance showListAssignmentsForHITResponse :: Show ListAssignmentsForHITResponse where show = genericShow
instance decodeListAssignmentsForHITResponse :: Decode ListAssignmentsForHITResponse where decode = genericDecode options
instance encodeListAssignmentsForHITResponse :: Encode ListAssignmentsForHITResponse where encode = genericEncode options

-- | Constructs ListAssignmentsForHITResponse from required parameters
newListAssignmentsForHITResponse :: ListAssignmentsForHITResponse
newListAssignmentsForHITResponse  = ListAssignmentsForHITResponse { "Assignments": Nothing, "NextToken": Nothing, "NumResults": Nothing }

-- | Constructs ListAssignmentsForHITResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssignmentsForHITResponse' :: ( { "NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "Assignments" :: Maybe (AssignmentList) } -> {"NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "Assignments" :: Maybe (AssignmentList) } ) -> ListAssignmentsForHITResponse
newListAssignmentsForHITResponse'  customize = (ListAssignmentsForHITResponse <<< customize) { "Assignments": Nothing, "NextToken": Nothing, "NumResults": Nothing }



newtype ListBonusPaymentsRequest = ListBonusPaymentsRequest 
  { "HITId" :: Maybe (EntityId)
  , "AssignmentId" :: Maybe (EntityId)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListBonusPaymentsRequest :: Newtype ListBonusPaymentsRequest _
derive instance repGenericListBonusPaymentsRequest :: Generic ListBonusPaymentsRequest _
instance showListBonusPaymentsRequest :: Show ListBonusPaymentsRequest where show = genericShow
instance decodeListBonusPaymentsRequest :: Decode ListBonusPaymentsRequest where decode = genericDecode options
instance encodeListBonusPaymentsRequest :: Encode ListBonusPaymentsRequest where encode = genericEncode options

-- | Constructs ListBonusPaymentsRequest from required parameters
newListBonusPaymentsRequest :: ListBonusPaymentsRequest
newListBonusPaymentsRequest  = ListBonusPaymentsRequest { "AssignmentId": Nothing, "HITId": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListBonusPaymentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBonusPaymentsRequest' :: ( { "HITId" :: Maybe (EntityId) , "AssignmentId" :: Maybe (EntityId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"HITId" :: Maybe (EntityId) , "AssignmentId" :: Maybe (EntityId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListBonusPaymentsRequest
newListBonusPaymentsRequest'  customize = (ListBonusPaymentsRequest <<< customize) { "AssignmentId": Nothing, "HITId": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListBonusPaymentsResponse = ListBonusPaymentsResponse 
  { "NumResults" :: Maybe (Int)
  , "NextToken" :: Maybe (PaginationToken)
  , "BonusPayments" :: Maybe (BonusPaymentList)
  }
derive instance newtypeListBonusPaymentsResponse :: Newtype ListBonusPaymentsResponse _
derive instance repGenericListBonusPaymentsResponse :: Generic ListBonusPaymentsResponse _
instance showListBonusPaymentsResponse :: Show ListBonusPaymentsResponse where show = genericShow
instance decodeListBonusPaymentsResponse :: Decode ListBonusPaymentsResponse where decode = genericDecode options
instance encodeListBonusPaymentsResponse :: Encode ListBonusPaymentsResponse where encode = genericEncode options

-- | Constructs ListBonusPaymentsResponse from required parameters
newListBonusPaymentsResponse :: ListBonusPaymentsResponse
newListBonusPaymentsResponse  = ListBonusPaymentsResponse { "BonusPayments": Nothing, "NextToken": Nothing, "NumResults": Nothing }

-- | Constructs ListBonusPaymentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBonusPaymentsResponse' :: ( { "NumResults" :: Maybe (Int) , "NextToken" :: Maybe (PaginationToken) , "BonusPayments" :: Maybe (BonusPaymentList) } -> {"NumResults" :: Maybe (Int) , "NextToken" :: Maybe (PaginationToken) , "BonusPayments" :: Maybe (BonusPaymentList) } ) -> ListBonusPaymentsResponse
newListBonusPaymentsResponse'  customize = (ListBonusPaymentsResponse <<< customize) { "BonusPayments": Nothing, "NextToken": Nothing, "NumResults": Nothing }



newtype ListHITsForQualificationTypeRequest = ListHITsForQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListHITsForQualificationTypeRequest :: Newtype ListHITsForQualificationTypeRequest _
derive instance repGenericListHITsForQualificationTypeRequest :: Generic ListHITsForQualificationTypeRequest _
instance showListHITsForQualificationTypeRequest :: Show ListHITsForQualificationTypeRequest where show = genericShow
instance decodeListHITsForQualificationTypeRequest :: Decode ListHITsForQualificationTypeRequest where decode = genericDecode options
instance encodeListHITsForQualificationTypeRequest :: Encode ListHITsForQualificationTypeRequest where encode = genericEncode options

-- | Constructs ListHITsForQualificationTypeRequest from required parameters
newListHITsForQualificationTypeRequest :: EntityId -> ListHITsForQualificationTypeRequest
newListHITsForQualificationTypeRequest _QualificationTypeId = ListHITsForQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListHITsForQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHITsForQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"QualificationTypeId" :: (EntityId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListHITsForQualificationTypeRequest
newListHITsForQualificationTypeRequest' _QualificationTypeId customize = (ListHITsForQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListHITsForQualificationTypeResponse = ListHITsForQualificationTypeResponse 
  { "NextToken" :: Maybe (PaginationToken)
  , "NumResults" :: Maybe (Int)
  , "HITs" :: Maybe (HITList)
  }
derive instance newtypeListHITsForQualificationTypeResponse :: Newtype ListHITsForQualificationTypeResponse _
derive instance repGenericListHITsForQualificationTypeResponse :: Generic ListHITsForQualificationTypeResponse _
instance showListHITsForQualificationTypeResponse :: Show ListHITsForQualificationTypeResponse where show = genericShow
instance decodeListHITsForQualificationTypeResponse :: Decode ListHITsForQualificationTypeResponse where decode = genericDecode options
instance encodeListHITsForQualificationTypeResponse :: Encode ListHITsForQualificationTypeResponse where encode = genericEncode options

-- | Constructs ListHITsForQualificationTypeResponse from required parameters
newListHITsForQualificationTypeResponse :: ListHITsForQualificationTypeResponse
newListHITsForQualificationTypeResponse  = ListHITsForQualificationTypeResponse { "HITs": Nothing, "NextToken": Nothing, "NumResults": Nothing }

-- | Constructs ListHITsForQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHITsForQualificationTypeResponse' :: ( { "NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "HITs" :: Maybe (HITList) } -> {"NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "HITs" :: Maybe (HITList) } ) -> ListHITsForQualificationTypeResponse
newListHITsForQualificationTypeResponse'  customize = (ListHITsForQualificationTypeResponse <<< customize) { "HITs": Nothing, "NextToken": Nothing, "NumResults": Nothing }



newtype ListHITsRequest = ListHITsRequest 
  { "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListHITsRequest :: Newtype ListHITsRequest _
derive instance repGenericListHITsRequest :: Generic ListHITsRequest _
instance showListHITsRequest :: Show ListHITsRequest where show = genericShow
instance decodeListHITsRequest :: Decode ListHITsRequest where decode = genericDecode options
instance encodeListHITsRequest :: Encode ListHITsRequest where encode = genericEncode options

-- | Constructs ListHITsRequest from required parameters
newListHITsRequest :: ListHITsRequest
newListHITsRequest  = ListHITsRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListHITsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHITsRequest' :: ( { "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListHITsRequest
newListHITsRequest'  customize = (ListHITsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListHITsResponse = ListHITsResponse 
  { "NextToken" :: Maybe (PaginationToken)
  , "NumResults" :: Maybe (Int)
  , "HITs" :: Maybe (HITList)
  }
derive instance newtypeListHITsResponse :: Newtype ListHITsResponse _
derive instance repGenericListHITsResponse :: Generic ListHITsResponse _
instance showListHITsResponse :: Show ListHITsResponse where show = genericShow
instance decodeListHITsResponse :: Decode ListHITsResponse where decode = genericDecode options
instance encodeListHITsResponse :: Encode ListHITsResponse where encode = genericEncode options

-- | Constructs ListHITsResponse from required parameters
newListHITsResponse :: ListHITsResponse
newListHITsResponse  = ListHITsResponse { "HITs": Nothing, "NextToken": Nothing, "NumResults": Nothing }

-- | Constructs ListHITsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHITsResponse' :: ( { "NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "HITs" :: Maybe (HITList) } -> {"NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "HITs" :: Maybe (HITList) } ) -> ListHITsResponse
newListHITsResponse'  customize = (ListHITsResponse <<< customize) { "HITs": Nothing, "NextToken": Nothing, "NumResults": Nothing }



newtype ListQualificationRequestsRequest = ListQualificationRequestsRequest 
  { "QualificationTypeId" :: Maybe (EntityId)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListQualificationRequestsRequest :: Newtype ListQualificationRequestsRequest _
derive instance repGenericListQualificationRequestsRequest :: Generic ListQualificationRequestsRequest _
instance showListQualificationRequestsRequest :: Show ListQualificationRequestsRequest where show = genericShow
instance decodeListQualificationRequestsRequest :: Decode ListQualificationRequestsRequest where decode = genericDecode options
instance encodeListQualificationRequestsRequest :: Encode ListQualificationRequestsRequest where encode = genericEncode options

-- | Constructs ListQualificationRequestsRequest from required parameters
newListQualificationRequestsRequest :: ListQualificationRequestsRequest
newListQualificationRequestsRequest  = ListQualificationRequestsRequest { "MaxResults": Nothing, "NextToken": Nothing, "QualificationTypeId": Nothing }

-- | Constructs ListQualificationRequestsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQualificationRequestsRequest' :: ( { "QualificationTypeId" :: Maybe (EntityId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"QualificationTypeId" :: Maybe (EntityId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListQualificationRequestsRequest
newListQualificationRequestsRequest'  customize = (ListQualificationRequestsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing, "QualificationTypeId": Nothing }



newtype ListQualificationRequestsResponse = ListQualificationRequestsResponse 
  { "NumResults" :: Maybe (Int)
  , "NextToken" :: Maybe (PaginationToken)
  , "QualificationRequests" :: Maybe (QualificationRequestList)
  }
derive instance newtypeListQualificationRequestsResponse :: Newtype ListQualificationRequestsResponse _
derive instance repGenericListQualificationRequestsResponse :: Generic ListQualificationRequestsResponse _
instance showListQualificationRequestsResponse :: Show ListQualificationRequestsResponse where show = genericShow
instance decodeListQualificationRequestsResponse :: Decode ListQualificationRequestsResponse where decode = genericDecode options
instance encodeListQualificationRequestsResponse :: Encode ListQualificationRequestsResponse where encode = genericEncode options

-- | Constructs ListQualificationRequestsResponse from required parameters
newListQualificationRequestsResponse :: ListQualificationRequestsResponse
newListQualificationRequestsResponse  = ListQualificationRequestsResponse { "NextToken": Nothing, "NumResults": Nothing, "QualificationRequests": Nothing }

-- | Constructs ListQualificationRequestsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQualificationRequestsResponse' :: ( { "NumResults" :: Maybe (Int) , "NextToken" :: Maybe (PaginationToken) , "QualificationRequests" :: Maybe (QualificationRequestList) } -> {"NumResults" :: Maybe (Int) , "NextToken" :: Maybe (PaginationToken) , "QualificationRequests" :: Maybe (QualificationRequestList) } ) -> ListQualificationRequestsResponse
newListQualificationRequestsResponse'  customize = (ListQualificationRequestsResponse <<< customize) { "NextToken": Nothing, "NumResults": Nothing, "QualificationRequests": Nothing }



newtype ListQualificationTypesRequest = ListQualificationTypesRequest 
  { "Query" :: Maybe (String)
  , "MustBeRequestable" :: (Boolean)
  , "MustBeOwnedByCaller" :: Maybe (Boolean)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListQualificationTypesRequest :: Newtype ListQualificationTypesRequest _
derive instance repGenericListQualificationTypesRequest :: Generic ListQualificationTypesRequest _
instance showListQualificationTypesRequest :: Show ListQualificationTypesRequest where show = genericShow
instance decodeListQualificationTypesRequest :: Decode ListQualificationTypesRequest where decode = genericDecode options
instance encodeListQualificationTypesRequest :: Encode ListQualificationTypesRequest where encode = genericEncode options

-- | Constructs ListQualificationTypesRequest from required parameters
newListQualificationTypesRequest :: Boolean -> ListQualificationTypesRequest
newListQualificationTypesRequest _MustBeRequestable = ListQualificationTypesRequest { "MustBeRequestable": _MustBeRequestable, "MaxResults": Nothing, "MustBeOwnedByCaller": Nothing, "NextToken": Nothing, "Query": Nothing }

-- | Constructs ListQualificationTypesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQualificationTypesRequest' :: Boolean -> ( { "Query" :: Maybe (String) , "MustBeRequestable" :: (Boolean) , "MustBeOwnedByCaller" :: Maybe (Boolean) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"Query" :: Maybe (String) , "MustBeRequestable" :: (Boolean) , "MustBeOwnedByCaller" :: Maybe (Boolean) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListQualificationTypesRequest
newListQualificationTypesRequest' _MustBeRequestable customize = (ListQualificationTypesRequest <<< customize) { "MustBeRequestable": _MustBeRequestable, "MaxResults": Nothing, "MustBeOwnedByCaller": Nothing, "NextToken": Nothing, "Query": Nothing }



newtype ListQualificationTypesResponse = ListQualificationTypesResponse 
  { "NumResults" :: Maybe (Int)
  , "NextToken" :: Maybe (PaginationToken)
  , "QualificationTypes" :: Maybe (QualificationTypeList)
  }
derive instance newtypeListQualificationTypesResponse :: Newtype ListQualificationTypesResponse _
derive instance repGenericListQualificationTypesResponse :: Generic ListQualificationTypesResponse _
instance showListQualificationTypesResponse :: Show ListQualificationTypesResponse where show = genericShow
instance decodeListQualificationTypesResponse :: Decode ListQualificationTypesResponse where decode = genericDecode options
instance encodeListQualificationTypesResponse :: Encode ListQualificationTypesResponse where encode = genericEncode options

-- | Constructs ListQualificationTypesResponse from required parameters
newListQualificationTypesResponse :: ListQualificationTypesResponse
newListQualificationTypesResponse  = ListQualificationTypesResponse { "NextToken": Nothing, "NumResults": Nothing, "QualificationTypes": Nothing }

-- | Constructs ListQualificationTypesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQualificationTypesResponse' :: ( { "NumResults" :: Maybe (Int) , "NextToken" :: Maybe (PaginationToken) , "QualificationTypes" :: Maybe (QualificationTypeList) } -> {"NumResults" :: Maybe (Int) , "NextToken" :: Maybe (PaginationToken) , "QualificationTypes" :: Maybe (QualificationTypeList) } ) -> ListQualificationTypesResponse
newListQualificationTypesResponse'  customize = (ListQualificationTypesResponse <<< customize) { "NextToken": Nothing, "NumResults": Nothing, "QualificationTypes": Nothing }



newtype ListReviewPolicyResultsForHITRequest = ListReviewPolicyResultsForHITRequest 
  { "HITId" :: (EntityId)
  , "PolicyLevels" :: Maybe (ReviewPolicyLevelList)
  , "RetrieveActions" :: Maybe (Boolean)
  , "RetrieveResults" :: Maybe (Boolean)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListReviewPolicyResultsForHITRequest :: Newtype ListReviewPolicyResultsForHITRequest _
derive instance repGenericListReviewPolicyResultsForHITRequest :: Generic ListReviewPolicyResultsForHITRequest _
instance showListReviewPolicyResultsForHITRequest :: Show ListReviewPolicyResultsForHITRequest where show = genericShow
instance decodeListReviewPolicyResultsForHITRequest :: Decode ListReviewPolicyResultsForHITRequest where decode = genericDecode options
instance encodeListReviewPolicyResultsForHITRequest :: Encode ListReviewPolicyResultsForHITRequest where encode = genericEncode options

-- | Constructs ListReviewPolicyResultsForHITRequest from required parameters
newListReviewPolicyResultsForHITRequest :: EntityId -> ListReviewPolicyResultsForHITRequest
newListReviewPolicyResultsForHITRequest _HITId = ListReviewPolicyResultsForHITRequest { "HITId": _HITId, "MaxResults": Nothing, "NextToken": Nothing, "PolicyLevels": Nothing, "RetrieveActions": Nothing, "RetrieveResults": Nothing }

-- | Constructs ListReviewPolicyResultsForHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReviewPolicyResultsForHITRequest' :: EntityId -> ( { "HITId" :: (EntityId) , "PolicyLevels" :: Maybe (ReviewPolicyLevelList) , "RetrieveActions" :: Maybe (Boolean) , "RetrieveResults" :: Maybe (Boolean) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"HITId" :: (EntityId) , "PolicyLevels" :: Maybe (ReviewPolicyLevelList) , "RetrieveActions" :: Maybe (Boolean) , "RetrieveResults" :: Maybe (Boolean) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListReviewPolicyResultsForHITRequest
newListReviewPolicyResultsForHITRequest' _HITId customize = (ListReviewPolicyResultsForHITRequest <<< customize) { "HITId": _HITId, "MaxResults": Nothing, "NextToken": Nothing, "PolicyLevels": Nothing, "RetrieveActions": Nothing, "RetrieveResults": Nothing }



newtype ListReviewPolicyResultsForHITResponse = ListReviewPolicyResultsForHITResponse 
  { "HITId" :: Maybe (EntityId)
  , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy)
  , "HITReviewPolicy" :: Maybe (ReviewPolicy)
  , "AssignmentReviewReport" :: Maybe (ReviewReport)
  , "HITReviewReport" :: Maybe (ReviewReport)
  , "NextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListReviewPolicyResultsForHITResponse :: Newtype ListReviewPolicyResultsForHITResponse _
derive instance repGenericListReviewPolicyResultsForHITResponse :: Generic ListReviewPolicyResultsForHITResponse _
instance showListReviewPolicyResultsForHITResponse :: Show ListReviewPolicyResultsForHITResponse where show = genericShow
instance decodeListReviewPolicyResultsForHITResponse :: Decode ListReviewPolicyResultsForHITResponse where decode = genericDecode options
instance encodeListReviewPolicyResultsForHITResponse :: Encode ListReviewPolicyResultsForHITResponse where encode = genericEncode options

-- | Constructs ListReviewPolicyResultsForHITResponse from required parameters
newListReviewPolicyResultsForHITResponse :: ListReviewPolicyResultsForHITResponse
newListReviewPolicyResultsForHITResponse  = ListReviewPolicyResultsForHITResponse { "AssignmentReviewPolicy": Nothing, "AssignmentReviewReport": Nothing, "HITId": Nothing, "HITReviewPolicy": Nothing, "HITReviewReport": Nothing, "NextToken": Nothing }

-- | Constructs ListReviewPolicyResultsForHITResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReviewPolicyResultsForHITResponse' :: ( { "HITId" :: Maybe (EntityId) , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy) , "HITReviewPolicy" :: Maybe (ReviewPolicy) , "AssignmentReviewReport" :: Maybe (ReviewReport) , "HITReviewReport" :: Maybe (ReviewReport) , "NextToken" :: Maybe (PaginationToken) } -> {"HITId" :: Maybe (EntityId) , "AssignmentReviewPolicy" :: Maybe (ReviewPolicy) , "HITReviewPolicy" :: Maybe (ReviewPolicy) , "AssignmentReviewReport" :: Maybe (ReviewReport) , "HITReviewReport" :: Maybe (ReviewReport) , "NextToken" :: Maybe (PaginationToken) } ) -> ListReviewPolicyResultsForHITResponse
newListReviewPolicyResultsForHITResponse'  customize = (ListReviewPolicyResultsForHITResponse <<< customize) { "AssignmentReviewPolicy": Nothing, "AssignmentReviewReport": Nothing, "HITId": Nothing, "HITReviewPolicy": Nothing, "HITReviewReport": Nothing, "NextToken": Nothing }



newtype ListReviewableHITsRequest = ListReviewableHITsRequest 
  { "HITTypeId" :: Maybe (EntityId)
  , "Status" :: Maybe (ReviewableHITStatus)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListReviewableHITsRequest :: Newtype ListReviewableHITsRequest _
derive instance repGenericListReviewableHITsRequest :: Generic ListReviewableHITsRequest _
instance showListReviewableHITsRequest :: Show ListReviewableHITsRequest where show = genericShow
instance decodeListReviewableHITsRequest :: Decode ListReviewableHITsRequest where decode = genericDecode options
instance encodeListReviewableHITsRequest :: Encode ListReviewableHITsRequest where encode = genericEncode options

-- | Constructs ListReviewableHITsRequest from required parameters
newListReviewableHITsRequest :: ListReviewableHITsRequest
newListReviewableHITsRequest  = ListReviewableHITsRequest { "HITTypeId": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "Status": Nothing }

-- | Constructs ListReviewableHITsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReviewableHITsRequest' :: ( { "HITTypeId" :: Maybe (EntityId) , "Status" :: Maybe (ReviewableHITStatus) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"HITTypeId" :: Maybe (EntityId) , "Status" :: Maybe (ReviewableHITStatus) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListReviewableHITsRequest
newListReviewableHITsRequest'  customize = (ListReviewableHITsRequest <<< customize) { "HITTypeId": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "Status": Nothing }



newtype ListReviewableHITsResponse = ListReviewableHITsResponse 
  { "NextToken" :: Maybe (PaginationToken)
  , "NumResults" :: Maybe (Int)
  , "HITs" :: Maybe (HITList)
  }
derive instance newtypeListReviewableHITsResponse :: Newtype ListReviewableHITsResponse _
derive instance repGenericListReviewableHITsResponse :: Generic ListReviewableHITsResponse _
instance showListReviewableHITsResponse :: Show ListReviewableHITsResponse where show = genericShow
instance decodeListReviewableHITsResponse :: Decode ListReviewableHITsResponse where decode = genericDecode options
instance encodeListReviewableHITsResponse :: Encode ListReviewableHITsResponse where encode = genericEncode options

-- | Constructs ListReviewableHITsResponse from required parameters
newListReviewableHITsResponse :: ListReviewableHITsResponse
newListReviewableHITsResponse  = ListReviewableHITsResponse { "HITs": Nothing, "NextToken": Nothing, "NumResults": Nothing }

-- | Constructs ListReviewableHITsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReviewableHITsResponse' :: ( { "NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "HITs" :: Maybe (HITList) } -> {"NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "HITs" :: Maybe (HITList) } ) -> ListReviewableHITsResponse
newListReviewableHITsResponse'  customize = (ListReviewableHITsResponse <<< customize) { "HITs": Nothing, "NextToken": Nothing, "NumResults": Nothing }



newtype ListWorkerBlocksRequest = ListWorkerBlocksRequest 
  { "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListWorkerBlocksRequest :: Newtype ListWorkerBlocksRequest _
derive instance repGenericListWorkerBlocksRequest :: Generic ListWorkerBlocksRequest _
instance showListWorkerBlocksRequest :: Show ListWorkerBlocksRequest where show = genericShow
instance decodeListWorkerBlocksRequest :: Decode ListWorkerBlocksRequest where decode = genericDecode options
instance encodeListWorkerBlocksRequest :: Encode ListWorkerBlocksRequest where encode = genericEncode options

-- | Constructs ListWorkerBlocksRequest from required parameters
newListWorkerBlocksRequest :: ListWorkerBlocksRequest
newListWorkerBlocksRequest  = ListWorkerBlocksRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListWorkerBlocksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkerBlocksRequest' :: ( { "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListWorkerBlocksRequest
newListWorkerBlocksRequest'  customize = (ListWorkerBlocksRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListWorkerBlocksResponse = ListWorkerBlocksResponse 
  { "NextToken" :: Maybe (PaginationToken)
  , "NumResults" :: Maybe (Int)
  , "WorkerBlocks" :: Maybe (WorkerBlockList)
  }
derive instance newtypeListWorkerBlocksResponse :: Newtype ListWorkerBlocksResponse _
derive instance repGenericListWorkerBlocksResponse :: Generic ListWorkerBlocksResponse _
instance showListWorkerBlocksResponse :: Show ListWorkerBlocksResponse where show = genericShow
instance decodeListWorkerBlocksResponse :: Decode ListWorkerBlocksResponse where decode = genericDecode options
instance encodeListWorkerBlocksResponse :: Encode ListWorkerBlocksResponse where encode = genericEncode options

-- | Constructs ListWorkerBlocksResponse from required parameters
newListWorkerBlocksResponse :: ListWorkerBlocksResponse
newListWorkerBlocksResponse  = ListWorkerBlocksResponse { "NextToken": Nothing, "NumResults": Nothing, "WorkerBlocks": Nothing }

-- | Constructs ListWorkerBlocksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkerBlocksResponse' :: ( { "NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "WorkerBlocks" :: Maybe (WorkerBlockList) } -> {"NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "WorkerBlocks" :: Maybe (WorkerBlockList) } ) -> ListWorkerBlocksResponse
newListWorkerBlocksResponse'  customize = (ListWorkerBlocksResponse <<< customize) { "NextToken": Nothing, "NumResults": Nothing, "WorkerBlocks": Nothing }



newtype ListWorkersWithQualificationTypeRequest = ListWorkersWithQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  , "Status" :: Maybe (QualificationStatus)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ResultSize)
  }
derive instance newtypeListWorkersWithQualificationTypeRequest :: Newtype ListWorkersWithQualificationTypeRequest _
derive instance repGenericListWorkersWithQualificationTypeRequest :: Generic ListWorkersWithQualificationTypeRequest _
instance showListWorkersWithQualificationTypeRequest :: Show ListWorkersWithQualificationTypeRequest where show = genericShow
instance decodeListWorkersWithQualificationTypeRequest :: Decode ListWorkersWithQualificationTypeRequest where decode = genericDecode options
instance encodeListWorkersWithQualificationTypeRequest :: Encode ListWorkersWithQualificationTypeRequest where encode = genericEncode options

-- | Constructs ListWorkersWithQualificationTypeRequest from required parameters
newListWorkersWithQualificationTypeRequest :: EntityId -> ListWorkersWithQualificationTypeRequest
newListWorkersWithQualificationTypeRequest _QualificationTypeId = ListWorkersWithQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId, "MaxResults": Nothing, "NextToken": Nothing, "Status": Nothing }

-- | Constructs ListWorkersWithQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkersWithQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) , "Status" :: Maybe (QualificationStatus) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } -> {"QualificationTypeId" :: (EntityId) , "Status" :: Maybe (QualificationStatus) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ResultSize) } ) -> ListWorkersWithQualificationTypeRequest
newListWorkersWithQualificationTypeRequest' _QualificationTypeId customize = (ListWorkersWithQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "MaxResults": Nothing, "NextToken": Nothing, "Status": Nothing }



newtype ListWorkersWithQualificationTypeResponse = ListWorkersWithQualificationTypeResponse 
  { "NextToken" :: Maybe (PaginationToken)
  , "NumResults" :: Maybe (Int)
  , "Qualifications" :: Maybe (QualificationList)
  }
derive instance newtypeListWorkersWithQualificationTypeResponse :: Newtype ListWorkersWithQualificationTypeResponse _
derive instance repGenericListWorkersWithQualificationTypeResponse :: Generic ListWorkersWithQualificationTypeResponse _
instance showListWorkersWithQualificationTypeResponse :: Show ListWorkersWithQualificationTypeResponse where show = genericShow
instance decodeListWorkersWithQualificationTypeResponse :: Decode ListWorkersWithQualificationTypeResponse where decode = genericDecode options
instance encodeListWorkersWithQualificationTypeResponse :: Encode ListWorkersWithQualificationTypeResponse where encode = genericEncode options

-- | Constructs ListWorkersWithQualificationTypeResponse from required parameters
newListWorkersWithQualificationTypeResponse :: ListWorkersWithQualificationTypeResponse
newListWorkersWithQualificationTypeResponse  = ListWorkersWithQualificationTypeResponse { "NextToken": Nothing, "NumResults": Nothing, "Qualifications": Nothing }

-- | Constructs ListWorkersWithQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkersWithQualificationTypeResponse' :: ( { "NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "Qualifications" :: Maybe (QualificationList) } -> {"NextToken" :: Maybe (PaginationToken) , "NumResults" :: Maybe (Int) , "Qualifications" :: Maybe (QualificationList) } ) -> ListWorkersWithQualificationTypeResponse
newListWorkersWithQualificationTypeResponse'  customize = (ListWorkersWithQualificationTypeResponse <<< customize) { "NextToken": Nothing, "NumResults": Nothing, "Qualifications": Nothing }



-- | <p>The Locale data structure represents a geographical region or location.</p>
newtype Locale = Locale 
  { "Country" :: (CountryParameters)
  , "Subdivision" :: Maybe (CountryParameters)
  }
derive instance newtypeLocale :: Newtype Locale _
derive instance repGenericLocale :: Generic Locale _
instance showLocale :: Show Locale where show = genericShow
instance decodeLocale :: Decode Locale where decode = genericDecode options
instance encodeLocale :: Encode Locale where encode = genericEncode options

-- | Constructs Locale from required parameters
newLocale :: CountryParameters -> Locale
newLocale _Country = Locale { "Country": _Country, "Subdivision": Nothing }

-- | Constructs Locale's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLocale' :: CountryParameters -> ( { "Country" :: (CountryParameters) , "Subdivision" :: Maybe (CountryParameters) } -> {"Country" :: (CountryParameters) , "Subdivision" :: Maybe (CountryParameters) } ) -> Locale
newLocale' _Country customize = (Locale <<< customize) { "Country": _Country, "Subdivision": Nothing }



newtype LocaleList = LocaleList (Array Locale)
derive instance newtypeLocaleList :: Newtype LocaleList _
derive instance repGenericLocaleList :: Generic LocaleList _
instance showLocaleList :: Show LocaleList where show = genericShow
instance decodeLocaleList :: Decode LocaleList where decode = genericDecode options
instance encodeLocaleList :: Encode LocaleList where encode = genericEncode options



-- | <p>The NotificationSpecification data structure describes a HIT event notification for a HIT type.</p>
newtype NotificationSpecification = NotificationSpecification 
  { "Destination" :: (String)
  , "Transport" :: (NotificationTransport)
  , "Version" :: (String)
  , "EventTypes" :: (EventTypeList)
  }
derive instance newtypeNotificationSpecification :: Newtype NotificationSpecification _
derive instance repGenericNotificationSpecification :: Generic NotificationSpecification _
instance showNotificationSpecification :: Show NotificationSpecification where show = genericShow
instance decodeNotificationSpecification :: Decode NotificationSpecification where decode = genericDecode options
instance encodeNotificationSpecification :: Encode NotificationSpecification where encode = genericEncode options

-- | Constructs NotificationSpecification from required parameters
newNotificationSpecification :: String -> EventTypeList -> NotificationTransport -> String -> NotificationSpecification
newNotificationSpecification _Destination _EventTypes _Transport _Version = NotificationSpecification { "Destination": _Destination, "EventTypes": _EventTypes, "Transport": _Transport, "Version": _Version }

-- | Constructs NotificationSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotificationSpecification' :: String -> EventTypeList -> NotificationTransport -> String -> ( { "Destination" :: (String) , "Transport" :: (NotificationTransport) , "Version" :: (String) , "EventTypes" :: (EventTypeList) } -> {"Destination" :: (String) , "Transport" :: (NotificationTransport) , "Version" :: (String) , "EventTypes" :: (EventTypeList) } ) -> NotificationSpecification
newNotificationSpecification' _Destination _EventTypes _Transport _Version customize = (NotificationSpecification <<< customize) { "Destination": _Destination, "EventTypes": _EventTypes, "Transport": _Transport, "Version": _Version }



newtype NotificationTransport = NotificationTransport String
derive instance newtypeNotificationTransport :: Newtype NotificationTransport _
derive instance repGenericNotificationTransport :: Generic NotificationTransport _
instance showNotificationTransport :: Show NotificationTransport where show = genericShow
instance decodeNotificationTransport :: Decode NotificationTransport where decode = genericDecode options
instance encodeNotificationTransport :: Encode NotificationTransport where encode = genericEncode options



newtype NotifyWorkersFailureCode = NotifyWorkersFailureCode String
derive instance newtypeNotifyWorkersFailureCode :: Newtype NotifyWorkersFailureCode _
derive instance repGenericNotifyWorkersFailureCode :: Generic NotifyWorkersFailureCode _
instance showNotifyWorkersFailureCode :: Show NotifyWorkersFailureCode where show = genericShow
instance decodeNotifyWorkersFailureCode :: Decode NotifyWorkersFailureCode where decode = genericDecode options
instance encodeNotifyWorkersFailureCode :: Encode NotifyWorkersFailureCode where encode = genericEncode options



-- | <p> When MTurk encounters an issue with notifying the Workers you specified, it returns back this object with failure details. </p>
newtype NotifyWorkersFailureStatus = NotifyWorkersFailureStatus 
  { "NotifyWorkersFailureCode" :: Maybe (NotifyWorkersFailureCode)
  , "NotifyWorkersFailureMessage" :: Maybe (String)
  , "WorkerId" :: Maybe (CustomerId)
  }
derive instance newtypeNotifyWorkersFailureStatus :: Newtype NotifyWorkersFailureStatus _
derive instance repGenericNotifyWorkersFailureStatus :: Generic NotifyWorkersFailureStatus _
instance showNotifyWorkersFailureStatus :: Show NotifyWorkersFailureStatus where show = genericShow
instance decodeNotifyWorkersFailureStatus :: Decode NotifyWorkersFailureStatus where decode = genericDecode options
instance encodeNotifyWorkersFailureStatus :: Encode NotifyWorkersFailureStatus where encode = genericEncode options

-- | Constructs NotifyWorkersFailureStatus from required parameters
newNotifyWorkersFailureStatus :: NotifyWorkersFailureStatus
newNotifyWorkersFailureStatus  = NotifyWorkersFailureStatus { "NotifyWorkersFailureCode": Nothing, "NotifyWorkersFailureMessage": Nothing, "WorkerId": Nothing }

-- | Constructs NotifyWorkersFailureStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyWorkersFailureStatus' :: ( { "NotifyWorkersFailureCode" :: Maybe (NotifyWorkersFailureCode) , "NotifyWorkersFailureMessage" :: Maybe (String) , "WorkerId" :: Maybe (CustomerId) } -> {"NotifyWorkersFailureCode" :: Maybe (NotifyWorkersFailureCode) , "NotifyWorkersFailureMessage" :: Maybe (String) , "WorkerId" :: Maybe (CustomerId) } ) -> NotifyWorkersFailureStatus
newNotifyWorkersFailureStatus'  customize = (NotifyWorkersFailureStatus <<< customize) { "NotifyWorkersFailureCode": Nothing, "NotifyWorkersFailureMessage": Nothing, "WorkerId": Nothing }



newtype NotifyWorkersFailureStatusList = NotifyWorkersFailureStatusList (Array NotifyWorkersFailureStatus)
derive instance newtypeNotifyWorkersFailureStatusList :: Newtype NotifyWorkersFailureStatusList _
derive instance repGenericNotifyWorkersFailureStatusList :: Generic NotifyWorkersFailureStatusList _
instance showNotifyWorkersFailureStatusList :: Show NotifyWorkersFailureStatusList where show = genericShow
instance decodeNotifyWorkersFailureStatusList :: Decode NotifyWorkersFailureStatusList where decode = genericDecode options
instance encodeNotifyWorkersFailureStatusList :: Encode NotifyWorkersFailureStatusList where encode = genericEncode options



newtype NotifyWorkersRequest = NotifyWorkersRequest 
  { "Subject" :: (String)
  , "MessageText" :: (String)
  , "WorkerIds" :: (CustomerIdList)
  }
derive instance newtypeNotifyWorkersRequest :: Newtype NotifyWorkersRequest _
derive instance repGenericNotifyWorkersRequest :: Generic NotifyWorkersRequest _
instance showNotifyWorkersRequest :: Show NotifyWorkersRequest where show = genericShow
instance decodeNotifyWorkersRequest :: Decode NotifyWorkersRequest where decode = genericDecode options
instance encodeNotifyWorkersRequest :: Encode NotifyWorkersRequest where encode = genericEncode options

-- | Constructs NotifyWorkersRequest from required parameters
newNotifyWorkersRequest :: String -> String -> CustomerIdList -> NotifyWorkersRequest
newNotifyWorkersRequest _MessageText _Subject _WorkerIds = NotifyWorkersRequest { "MessageText": _MessageText, "Subject": _Subject, "WorkerIds": _WorkerIds }

-- | Constructs NotifyWorkersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyWorkersRequest' :: String -> String -> CustomerIdList -> ( { "Subject" :: (String) , "MessageText" :: (String) , "WorkerIds" :: (CustomerIdList) } -> {"Subject" :: (String) , "MessageText" :: (String) , "WorkerIds" :: (CustomerIdList) } ) -> NotifyWorkersRequest
newNotifyWorkersRequest' _MessageText _Subject _WorkerIds customize = (NotifyWorkersRequest <<< customize) { "MessageText": _MessageText, "Subject": _Subject, "WorkerIds": _WorkerIds }



newtype NotifyWorkersResponse = NotifyWorkersResponse 
  { "NotifyWorkersFailureStatuses" :: Maybe (NotifyWorkersFailureStatusList)
  }
derive instance newtypeNotifyWorkersResponse :: Newtype NotifyWorkersResponse _
derive instance repGenericNotifyWorkersResponse :: Generic NotifyWorkersResponse _
instance showNotifyWorkersResponse :: Show NotifyWorkersResponse where show = genericShow
instance decodeNotifyWorkersResponse :: Decode NotifyWorkersResponse where decode = genericDecode options
instance encodeNotifyWorkersResponse :: Encode NotifyWorkersResponse where encode = genericEncode options

-- | Constructs NotifyWorkersResponse from required parameters
newNotifyWorkersResponse :: NotifyWorkersResponse
newNotifyWorkersResponse  = NotifyWorkersResponse { "NotifyWorkersFailureStatuses": Nothing }

-- | Constructs NotifyWorkersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyWorkersResponse' :: ( { "NotifyWorkersFailureStatuses" :: Maybe (NotifyWorkersFailureStatusList) } -> {"NotifyWorkersFailureStatuses" :: Maybe (NotifyWorkersFailureStatusList) } ) -> NotifyWorkersResponse
newNotifyWorkersResponse'  customize = (NotifyWorkersResponse <<< customize) { "NotifyWorkersFailureStatuses": Nothing }



-- | <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk returns a pagination token in the response. You can use this pagination token to retrieve the next set of results. </p>
newtype PaginationToken = PaginationToken String
derive instance newtypePaginationToken :: Newtype PaginationToken _
derive instance repGenericPaginationToken :: Generic PaginationToken _
instance showPaginationToken :: Show PaginationToken where show = genericShow
instance decodePaginationToken :: Decode PaginationToken where decode = genericDecode options
instance encodePaginationToken :: Encode PaginationToken where encode = genericEncode options



-- | <p> This data structure is the data type for the AnswerKey parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>
newtype ParameterMapEntry = ParameterMapEntry 
  { "Key" :: Maybe (String)
  , "Values" :: Maybe (StringList)
  }
derive instance newtypeParameterMapEntry :: Newtype ParameterMapEntry _
derive instance repGenericParameterMapEntry :: Generic ParameterMapEntry _
instance showParameterMapEntry :: Show ParameterMapEntry where show = genericShow
instance decodeParameterMapEntry :: Decode ParameterMapEntry where decode = genericDecode options
instance encodeParameterMapEntry :: Encode ParameterMapEntry where encode = genericEncode options

-- | Constructs ParameterMapEntry from required parameters
newParameterMapEntry :: ParameterMapEntry
newParameterMapEntry  = ParameterMapEntry { "Key": Nothing, "Values": Nothing }

-- | Constructs ParameterMapEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterMapEntry' :: ( { "Key" :: Maybe (String) , "Values" :: Maybe (StringList) } -> {"Key" :: Maybe (String) , "Values" :: Maybe (StringList) } ) -> ParameterMapEntry
newParameterMapEntry'  customize = (ParameterMapEntry <<< customize) { "Key": Nothing, "Values": Nothing }



newtype ParameterMapEntryList = ParameterMapEntryList (Array ParameterMapEntry)
derive instance newtypeParameterMapEntryList :: Newtype ParameterMapEntryList _
derive instance repGenericParameterMapEntryList :: Generic ParameterMapEntryList _
instance showParameterMapEntryList :: Show ParameterMapEntryList where show = genericShow
instance decodeParameterMapEntryList :: Decode ParameterMapEntryList where decode = genericDecode options
instance encodeParameterMapEntryList :: Encode ParameterMapEntryList where encode = genericEncode options



-- | <p> Name of the parameter from the Review policy. </p>
newtype PolicyParameter = PolicyParameter 
  { "Key" :: Maybe (String)
  , "Values" :: Maybe (StringList)
  , "MapEntries" :: Maybe (ParameterMapEntryList)
  }
derive instance newtypePolicyParameter :: Newtype PolicyParameter _
derive instance repGenericPolicyParameter :: Generic PolicyParameter _
instance showPolicyParameter :: Show PolicyParameter where show = genericShow
instance decodePolicyParameter :: Decode PolicyParameter where decode = genericDecode options
instance encodePolicyParameter :: Encode PolicyParameter where encode = genericEncode options

-- | Constructs PolicyParameter from required parameters
newPolicyParameter :: PolicyParameter
newPolicyParameter  = PolicyParameter { "Key": Nothing, "MapEntries": Nothing, "Values": Nothing }

-- | Constructs PolicyParameter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyParameter' :: ( { "Key" :: Maybe (String) , "Values" :: Maybe (StringList) , "MapEntries" :: Maybe (ParameterMapEntryList) } -> {"Key" :: Maybe (String) , "Values" :: Maybe (StringList) , "MapEntries" :: Maybe (ParameterMapEntryList) } ) -> PolicyParameter
newPolicyParameter'  customize = (PolicyParameter <<< customize) { "Key": Nothing, "MapEntries": Nothing, "Values": Nothing }



newtype PolicyParameterList = PolicyParameterList (Array PolicyParameter)
derive instance newtypePolicyParameterList :: Newtype PolicyParameterList _
derive instance repGenericPolicyParameterList :: Generic PolicyParameterList _
instance showPolicyParameterList :: Show PolicyParameterList where show = genericShow
instance decodePolicyParameterList :: Decode PolicyParameterList where decode = genericDecode options
instance encodePolicyParameterList :: Encode PolicyParameterList where encode = genericEncode options



-- | <p>The Qualification data structure represents a Qualification assigned to a user, including the Qualification type and the value (score).</p>
newtype Qualification = Qualification 
  { "QualificationTypeId" :: Maybe (EntityId)
  , "WorkerId" :: Maybe (CustomerId)
  , "GrantTime" :: Maybe (Types.Timestamp)
  , "IntegerValue" :: Maybe (Int)
  , "LocaleValue" :: Maybe (Locale)
  , "Status" :: Maybe (QualificationStatus)
  }
derive instance newtypeQualification :: Newtype Qualification _
derive instance repGenericQualification :: Generic Qualification _
instance showQualification :: Show Qualification where show = genericShow
instance decodeQualification :: Decode Qualification where decode = genericDecode options
instance encodeQualification :: Encode Qualification where encode = genericEncode options

-- | Constructs Qualification from required parameters
newQualification :: Qualification
newQualification  = Qualification { "GrantTime": Nothing, "IntegerValue": Nothing, "LocaleValue": Nothing, "QualificationTypeId": Nothing, "Status": Nothing, "WorkerId": Nothing }

-- | Constructs Qualification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQualification' :: ( { "QualificationTypeId" :: Maybe (EntityId) , "WorkerId" :: Maybe (CustomerId) , "GrantTime" :: Maybe (Types.Timestamp) , "IntegerValue" :: Maybe (Int) , "LocaleValue" :: Maybe (Locale) , "Status" :: Maybe (QualificationStatus) } -> {"QualificationTypeId" :: Maybe (EntityId) , "WorkerId" :: Maybe (CustomerId) , "GrantTime" :: Maybe (Types.Timestamp) , "IntegerValue" :: Maybe (Int) , "LocaleValue" :: Maybe (Locale) , "Status" :: Maybe (QualificationStatus) } ) -> Qualification
newQualification'  customize = (Qualification <<< customize) { "GrantTime": Nothing, "IntegerValue": Nothing, "LocaleValue": Nothing, "QualificationTypeId": Nothing, "Status": Nothing, "WorkerId": Nothing }



newtype QualificationList = QualificationList (Array Qualification)
derive instance newtypeQualificationList :: Newtype QualificationList _
derive instance repGenericQualificationList :: Generic QualificationList _
instance showQualificationList :: Show QualificationList where show = genericShow
instance decodeQualificationList :: Decode QualificationList where decode = genericDecode options
instance encodeQualificationList :: Encode QualificationList where encode = genericEncode options



-- | <p> The QualificationRequest data structure represents a request a Worker has made for a Qualification. </p>
newtype QualificationRequest = QualificationRequest 
  { "QualificationRequestId" :: Maybe (String)
  , "QualificationTypeId" :: Maybe (EntityId)
  , "WorkerId" :: Maybe (CustomerId)
  , "Test" :: Maybe (String)
  , "Answer" :: Maybe (String)
  , "SubmitTime" :: Maybe (Types.Timestamp)
  }
derive instance newtypeQualificationRequest :: Newtype QualificationRequest _
derive instance repGenericQualificationRequest :: Generic QualificationRequest _
instance showQualificationRequest :: Show QualificationRequest where show = genericShow
instance decodeQualificationRequest :: Decode QualificationRequest where decode = genericDecode options
instance encodeQualificationRequest :: Encode QualificationRequest where encode = genericEncode options

-- | Constructs QualificationRequest from required parameters
newQualificationRequest :: QualificationRequest
newQualificationRequest  = QualificationRequest { "Answer": Nothing, "QualificationRequestId": Nothing, "QualificationTypeId": Nothing, "SubmitTime": Nothing, "Test": Nothing, "WorkerId": Nothing }

-- | Constructs QualificationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQualificationRequest' :: ( { "QualificationRequestId" :: Maybe (String) , "QualificationTypeId" :: Maybe (EntityId) , "WorkerId" :: Maybe (CustomerId) , "Test" :: Maybe (String) , "Answer" :: Maybe (String) , "SubmitTime" :: Maybe (Types.Timestamp) } -> {"QualificationRequestId" :: Maybe (String) , "QualificationTypeId" :: Maybe (EntityId) , "WorkerId" :: Maybe (CustomerId) , "Test" :: Maybe (String) , "Answer" :: Maybe (String) , "SubmitTime" :: Maybe (Types.Timestamp) } ) -> QualificationRequest
newQualificationRequest'  customize = (QualificationRequest <<< customize) { "Answer": Nothing, "QualificationRequestId": Nothing, "QualificationTypeId": Nothing, "SubmitTime": Nothing, "Test": Nothing, "WorkerId": Nothing }



newtype QualificationRequestList = QualificationRequestList (Array QualificationRequest)
derive instance newtypeQualificationRequestList :: Newtype QualificationRequestList _
derive instance repGenericQualificationRequestList :: Generic QualificationRequestList _
instance showQualificationRequestList :: Show QualificationRequestList where show = genericShow
instance decodeQualificationRequestList :: Decode QualificationRequestList where decode = genericDecode options
instance encodeQualificationRequestList :: Encode QualificationRequestList where encode = genericEncode options



-- | <p> The QualificationRequirement data structure describes a Qualification that a Worker must have before the Worker is allowed to accept a HIT. A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT. </p>
newtype QualificationRequirement = QualificationRequirement 
  { "QualificationTypeId" :: (String)
  , "Comparator" :: (Comparator)
  , "IntegerValues" :: Maybe (IntegerList)
  , "LocaleValues" :: Maybe (LocaleList)
  , "RequiredToPreview" :: Maybe (Boolean)
  }
derive instance newtypeQualificationRequirement :: Newtype QualificationRequirement _
derive instance repGenericQualificationRequirement :: Generic QualificationRequirement _
instance showQualificationRequirement :: Show QualificationRequirement where show = genericShow
instance decodeQualificationRequirement :: Decode QualificationRequirement where decode = genericDecode options
instance encodeQualificationRequirement :: Encode QualificationRequirement where encode = genericEncode options

-- | Constructs QualificationRequirement from required parameters
newQualificationRequirement :: Comparator -> String -> QualificationRequirement
newQualificationRequirement _Comparator _QualificationTypeId = QualificationRequirement { "Comparator": _Comparator, "QualificationTypeId": _QualificationTypeId, "IntegerValues": Nothing, "LocaleValues": Nothing, "RequiredToPreview": Nothing }

-- | Constructs QualificationRequirement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQualificationRequirement' :: Comparator -> String -> ( { "QualificationTypeId" :: (String) , "Comparator" :: (Comparator) , "IntegerValues" :: Maybe (IntegerList) , "LocaleValues" :: Maybe (LocaleList) , "RequiredToPreview" :: Maybe (Boolean) } -> {"QualificationTypeId" :: (String) , "Comparator" :: (Comparator) , "IntegerValues" :: Maybe (IntegerList) , "LocaleValues" :: Maybe (LocaleList) , "RequiredToPreview" :: Maybe (Boolean) } ) -> QualificationRequirement
newQualificationRequirement' _Comparator _QualificationTypeId customize = (QualificationRequirement <<< customize) { "Comparator": _Comparator, "QualificationTypeId": _QualificationTypeId, "IntegerValues": Nothing, "LocaleValues": Nothing, "RequiredToPreview": Nothing }



newtype QualificationRequirementList = QualificationRequirementList (Array QualificationRequirement)
derive instance newtypeQualificationRequirementList :: Newtype QualificationRequirementList _
derive instance repGenericQualificationRequirementList :: Generic QualificationRequirementList _
instance showQualificationRequirementList :: Show QualificationRequirementList where show = genericShow
instance decodeQualificationRequirementList :: Decode QualificationRequirementList where decode = genericDecode options
instance encodeQualificationRequirementList :: Encode QualificationRequirementList where encode = genericEncode options



newtype QualificationStatus = QualificationStatus String
derive instance newtypeQualificationStatus :: Newtype QualificationStatus _
derive instance repGenericQualificationStatus :: Generic QualificationStatus _
instance showQualificationStatus :: Show QualificationStatus where show = genericShow
instance decodeQualificationStatus :: Decode QualificationStatus where decode = genericDecode options
instance encodeQualificationStatus :: Encode QualificationStatus where encode = genericEncode options



-- | <p> The QualificationType data structure represents a Qualification type, a description of a property of a Worker that must match the requirements of a HIT for the Worker to be able to accept the HIT. The type also describes how a Worker can obtain a Qualification of that type, such as through a Qualification test. </p>
newtype QualificationType = QualificationType 
  { "QualificationTypeId" :: Maybe (EntityId)
  , "CreationTime" :: Maybe (Types.Timestamp)
  , "Name" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "Keywords" :: Maybe (String)
  , "QualificationTypeStatus" :: Maybe (QualificationTypeStatus)
  , "Test" :: Maybe (String)
  , "TestDurationInSeconds" :: Maybe (Number)
  , "AnswerKey" :: Maybe (String)
  , "RetryDelayInSeconds" :: Maybe (Number)
  , "IsRequestable" :: Maybe (Boolean)
  , "AutoGranted" :: Maybe (Boolean)
  , "AutoGrantedValue" :: Maybe (Int)
  }
derive instance newtypeQualificationType :: Newtype QualificationType _
derive instance repGenericQualificationType :: Generic QualificationType _
instance showQualificationType :: Show QualificationType where show = genericShow
instance decodeQualificationType :: Decode QualificationType where decode = genericDecode options
instance encodeQualificationType :: Encode QualificationType where encode = genericEncode options

-- | Constructs QualificationType from required parameters
newQualificationType :: QualificationType
newQualificationType  = QualificationType { "AnswerKey": Nothing, "AutoGranted": Nothing, "AutoGrantedValue": Nothing, "CreationTime": Nothing, "Description": Nothing, "IsRequestable": Nothing, "Keywords": Nothing, "Name": Nothing, "QualificationTypeId": Nothing, "QualificationTypeStatus": Nothing, "RetryDelayInSeconds": Nothing, "Test": Nothing, "TestDurationInSeconds": Nothing }

-- | Constructs QualificationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQualificationType' :: ( { "QualificationTypeId" :: Maybe (EntityId) , "CreationTime" :: Maybe (Types.Timestamp) , "Name" :: Maybe (String) , "Description" :: Maybe (String) , "Keywords" :: Maybe (String) , "QualificationTypeStatus" :: Maybe (QualificationTypeStatus) , "Test" :: Maybe (String) , "TestDurationInSeconds" :: Maybe (Number) , "AnswerKey" :: Maybe (String) , "RetryDelayInSeconds" :: Maybe (Number) , "IsRequestable" :: Maybe (Boolean) , "AutoGranted" :: Maybe (Boolean) , "AutoGrantedValue" :: Maybe (Int) } -> {"QualificationTypeId" :: Maybe (EntityId) , "CreationTime" :: Maybe (Types.Timestamp) , "Name" :: Maybe (String) , "Description" :: Maybe (String) , "Keywords" :: Maybe (String) , "QualificationTypeStatus" :: Maybe (QualificationTypeStatus) , "Test" :: Maybe (String) , "TestDurationInSeconds" :: Maybe (Number) , "AnswerKey" :: Maybe (String) , "RetryDelayInSeconds" :: Maybe (Number) , "IsRequestable" :: Maybe (Boolean) , "AutoGranted" :: Maybe (Boolean) , "AutoGrantedValue" :: Maybe (Int) } ) -> QualificationType
newQualificationType'  customize = (QualificationType <<< customize) { "AnswerKey": Nothing, "AutoGranted": Nothing, "AutoGrantedValue": Nothing, "CreationTime": Nothing, "Description": Nothing, "IsRequestable": Nothing, "Keywords": Nothing, "Name": Nothing, "QualificationTypeId": Nothing, "QualificationTypeStatus": Nothing, "RetryDelayInSeconds": Nothing, "Test": Nothing, "TestDurationInSeconds": Nothing }



newtype QualificationTypeList = QualificationTypeList (Array QualificationType)
derive instance newtypeQualificationTypeList :: Newtype QualificationTypeList _
derive instance repGenericQualificationTypeList :: Generic QualificationTypeList _
instance showQualificationTypeList :: Show QualificationTypeList where show = genericShow
instance decodeQualificationTypeList :: Decode QualificationTypeList where decode = genericDecode options
instance encodeQualificationTypeList :: Encode QualificationTypeList where encode = genericEncode options



newtype QualificationTypeStatus = QualificationTypeStatus String
derive instance newtypeQualificationTypeStatus :: Newtype QualificationTypeStatus _
derive instance repGenericQualificationTypeStatus :: Generic QualificationTypeStatus _
instance showQualificationTypeStatus :: Show QualificationTypeStatus where show = genericShow
instance decodeQualificationTypeStatus :: Decode QualificationTypeStatus where decode = genericDecode options
instance encodeQualificationTypeStatus :: Encode QualificationTypeStatus where encode = genericEncode options



newtype RejectAssignmentRequest = RejectAssignmentRequest 
  { "AssignmentId" :: (EntityId)
  , "RequesterFeedback" :: (String)
  }
derive instance newtypeRejectAssignmentRequest :: Newtype RejectAssignmentRequest _
derive instance repGenericRejectAssignmentRequest :: Generic RejectAssignmentRequest _
instance showRejectAssignmentRequest :: Show RejectAssignmentRequest where show = genericShow
instance decodeRejectAssignmentRequest :: Decode RejectAssignmentRequest where decode = genericDecode options
instance encodeRejectAssignmentRequest :: Encode RejectAssignmentRequest where encode = genericEncode options

-- | Constructs RejectAssignmentRequest from required parameters
newRejectAssignmentRequest :: EntityId -> String -> RejectAssignmentRequest
newRejectAssignmentRequest _AssignmentId _RequesterFeedback = RejectAssignmentRequest { "AssignmentId": _AssignmentId, "RequesterFeedback": _RequesterFeedback }

-- | Constructs RejectAssignmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRejectAssignmentRequest' :: EntityId -> String -> ( { "AssignmentId" :: (EntityId) , "RequesterFeedback" :: (String) } -> {"AssignmentId" :: (EntityId) , "RequesterFeedback" :: (String) } ) -> RejectAssignmentRequest
newRejectAssignmentRequest' _AssignmentId _RequesterFeedback customize = (RejectAssignmentRequest <<< customize) { "AssignmentId": _AssignmentId, "RequesterFeedback": _RequesterFeedback }



newtype RejectAssignmentResponse = RejectAssignmentResponse Types.NoArguments
derive instance newtypeRejectAssignmentResponse :: Newtype RejectAssignmentResponse _
derive instance repGenericRejectAssignmentResponse :: Generic RejectAssignmentResponse _
instance showRejectAssignmentResponse :: Show RejectAssignmentResponse where show = genericShow
instance decodeRejectAssignmentResponse :: Decode RejectAssignmentResponse where decode = genericDecode options
instance encodeRejectAssignmentResponse :: Encode RejectAssignmentResponse where encode = genericEncode options



newtype RejectQualificationRequestRequest = RejectQualificationRequestRequest 
  { "QualificationRequestId" :: (String)
  , "Reason" :: Maybe (String)
  }
derive instance newtypeRejectQualificationRequestRequest :: Newtype RejectQualificationRequestRequest _
derive instance repGenericRejectQualificationRequestRequest :: Generic RejectQualificationRequestRequest _
instance showRejectQualificationRequestRequest :: Show RejectQualificationRequestRequest where show = genericShow
instance decodeRejectQualificationRequestRequest :: Decode RejectQualificationRequestRequest where decode = genericDecode options
instance encodeRejectQualificationRequestRequest :: Encode RejectQualificationRequestRequest where encode = genericEncode options

-- | Constructs RejectQualificationRequestRequest from required parameters
newRejectQualificationRequestRequest :: String -> RejectQualificationRequestRequest
newRejectQualificationRequestRequest _QualificationRequestId = RejectQualificationRequestRequest { "QualificationRequestId": _QualificationRequestId, "Reason": Nothing }

-- | Constructs RejectQualificationRequestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRejectQualificationRequestRequest' :: String -> ( { "QualificationRequestId" :: (String) , "Reason" :: Maybe (String) } -> {"QualificationRequestId" :: (String) , "Reason" :: Maybe (String) } ) -> RejectQualificationRequestRequest
newRejectQualificationRequestRequest' _QualificationRequestId customize = (RejectQualificationRequestRequest <<< customize) { "QualificationRequestId": _QualificationRequestId, "Reason": Nothing }



newtype RejectQualificationRequestResponse = RejectQualificationRequestResponse Types.NoArguments
derive instance newtypeRejectQualificationRequestResponse :: Newtype RejectQualificationRequestResponse _
derive instance repGenericRejectQualificationRequestResponse :: Generic RejectQualificationRequestResponse _
instance showRejectQualificationRequestResponse :: Show RejectQualificationRequestResponse where show = genericShow
instance decodeRejectQualificationRequestResponse :: Decode RejectQualificationRequestResponse where decode = genericDecode options
instance encodeRejectQualificationRequestResponse :: Encode RejectQualificationRequestResponse where encode = genericEncode options



-- | <p>Your request is invalid.</p>
newtype RequestError = RequestError 
  { "Message" :: Maybe (ExceptionMessage)
  , "TurkErrorCode" :: Maybe (TurkErrorCode)
  }
derive instance newtypeRequestError :: Newtype RequestError _
derive instance repGenericRequestError :: Generic RequestError _
instance showRequestError :: Show RequestError where show = genericShow
instance decodeRequestError :: Decode RequestError where decode = genericDecode options
instance encodeRequestError :: Encode RequestError where encode = genericEncode options

-- | Constructs RequestError from required parameters
newRequestError :: RequestError
newRequestError  = RequestError { "Message": Nothing, "TurkErrorCode": Nothing }

-- | Constructs RequestError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestError' :: ( { "Message" :: Maybe (ExceptionMessage) , "TurkErrorCode" :: Maybe (TurkErrorCode) } -> {"Message" :: Maybe (ExceptionMessage) , "TurkErrorCode" :: Maybe (TurkErrorCode) } ) -> RequestError
newRequestError'  customize = (RequestError <<< customize) { "Message": Nothing, "TurkErrorCode": Nothing }



newtype ResultSize = ResultSize Int
derive instance newtypeResultSize :: Newtype ResultSize _
derive instance repGenericResultSize :: Generic ResultSize _
instance showResultSize :: Show ResultSize where show = genericShow
instance decodeResultSize :: Decode ResultSize where decode = genericDecode options
instance encodeResultSize :: Encode ResultSize where encode = genericEncode options



-- | <p> Both the AssignmentReviewReport and the HITReviewReport elements contains the ReviewActionDetail data structure. This structure is returned multiple times for each action specified in the Review Policy. </p>
newtype ReviewActionDetail = ReviewActionDetail 
  { "ActionId" :: Maybe (EntityId)
  , "ActionName" :: Maybe (String)
  , "TargetId" :: Maybe (EntityId)
  , "TargetType" :: Maybe (String)
  , "Status" :: Maybe (ReviewActionStatus)
  , "CompleteTime" :: Maybe (Types.Timestamp)
  , "Result" :: Maybe (String)
  , "ErrorCode" :: Maybe (String)
  }
derive instance newtypeReviewActionDetail :: Newtype ReviewActionDetail _
derive instance repGenericReviewActionDetail :: Generic ReviewActionDetail _
instance showReviewActionDetail :: Show ReviewActionDetail where show = genericShow
instance decodeReviewActionDetail :: Decode ReviewActionDetail where decode = genericDecode options
instance encodeReviewActionDetail :: Encode ReviewActionDetail where encode = genericEncode options

-- | Constructs ReviewActionDetail from required parameters
newReviewActionDetail :: ReviewActionDetail
newReviewActionDetail  = ReviewActionDetail { "ActionId": Nothing, "ActionName": Nothing, "CompleteTime": Nothing, "ErrorCode": Nothing, "Result": Nothing, "Status": Nothing, "TargetId": Nothing, "TargetType": Nothing }

-- | Constructs ReviewActionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReviewActionDetail' :: ( { "ActionId" :: Maybe (EntityId) , "ActionName" :: Maybe (String) , "TargetId" :: Maybe (EntityId) , "TargetType" :: Maybe (String) , "Status" :: Maybe (ReviewActionStatus) , "CompleteTime" :: Maybe (Types.Timestamp) , "Result" :: Maybe (String) , "ErrorCode" :: Maybe (String) } -> {"ActionId" :: Maybe (EntityId) , "ActionName" :: Maybe (String) , "TargetId" :: Maybe (EntityId) , "TargetType" :: Maybe (String) , "Status" :: Maybe (ReviewActionStatus) , "CompleteTime" :: Maybe (Types.Timestamp) , "Result" :: Maybe (String) , "ErrorCode" :: Maybe (String) } ) -> ReviewActionDetail
newReviewActionDetail'  customize = (ReviewActionDetail <<< customize) { "ActionId": Nothing, "ActionName": Nothing, "CompleteTime": Nothing, "ErrorCode": Nothing, "Result": Nothing, "Status": Nothing, "TargetId": Nothing, "TargetType": Nothing }



newtype ReviewActionDetailList = ReviewActionDetailList (Array ReviewActionDetail)
derive instance newtypeReviewActionDetailList :: Newtype ReviewActionDetailList _
derive instance repGenericReviewActionDetailList :: Generic ReviewActionDetailList _
instance showReviewActionDetailList :: Show ReviewActionDetailList where show = genericShow
instance decodeReviewActionDetailList :: Decode ReviewActionDetailList where decode = genericDecode options
instance encodeReviewActionDetailList :: Encode ReviewActionDetailList where encode = genericEncode options



newtype ReviewActionStatus = ReviewActionStatus String
derive instance newtypeReviewActionStatus :: Newtype ReviewActionStatus _
derive instance repGenericReviewActionStatus :: Generic ReviewActionStatus _
instance showReviewActionStatus :: Show ReviewActionStatus where show = genericShow
instance decodeReviewActionStatus :: Decode ReviewActionStatus where decode = genericDecode options
instance encodeReviewActionStatus :: Encode ReviewActionStatus where encode = genericEncode options



-- | <p> HIT Review Policy data structures represent HIT review policies, which you specify when you create a HIT. </p>
newtype ReviewPolicy = ReviewPolicy 
  { "PolicyName" :: (String)
  , "Parameters" :: Maybe (PolicyParameterList)
  }
derive instance newtypeReviewPolicy :: Newtype ReviewPolicy _
derive instance repGenericReviewPolicy :: Generic ReviewPolicy _
instance showReviewPolicy :: Show ReviewPolicy where show = genericShow
instance decodeReviewPolicy :: Decode ReviewPolicy where decode = genericDecode options
instance encodeReviewPolicy :: Encode ReviewPolicy where encode = genericEncode options

-- | Constructs ReviewPolicy from required parameters
newReviewPolicy :: String -> ReviewPolicy
newReviewPolicy _PolicyName = ReviewPolicy { "PolicyName": _PolicyName, "Parameters": Nothing }

-- | Constructs ReviewPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReviewPolicy' :: String -> ( { "PolicyName" :: (String) , "Parameters" :: Maybe (PolicyParameterList) } -> {"PolicyName" :: (String) , "Parameters" :: Maybe (PolicyParameterList) } ) -> ReviewPolicy
newReviewPolicy' _PolicyName customize = (ReviewPolicy <<< customize) { "PolicyName": _PolicyName, "Parameters": Nothing }



newtype ReviewPolicyLevel = ReviewPolicyLevel String
derive instance newtypeReviewPolicyLevel :: Newtype ReviewPolicyLevel _
derive instance repGenericReviewPolicyLevel :: Generic ReviewPolicyLevel _
instance showReviewPolicyLevel :: Show ReviewPolicyLevel where show = genericShow
instance decodeReviewPolicyLevel :: Decode ReviewPolicyLevel where decode = genericDecode options
instance encodeReviewPolicyLevel :: Encode ReviewPolicyLevel where encode = genericEncode options



newtype ReviewPolicyLevelList = ReviewPolicyLevelList (Array ReviewPolicyLevel)
derive instance newtypeReviewPolicyLevelList :: Newtype ReviewPolicyLevelList _
derive instance repGenericReviewPolicyLevelList :: Generic ReviewPolicyLevelList _
instance showReviewPolicyLevelList :: Show ReviewPolicyLevelList where show = genericShow
instance decodeReviewPolicyLevelList :: Decode ReviewPolicyLevelList where decode = genericDecode options
instance encodeReviewPolicyLevelList :: Encode ReviewPolicyLevelList where encode = genericEncode options



-- | <p> Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>
newtype ReviewReport = ReviewReport 
  { "ReviewResults" :: Maybe (ReviewResultDetailList)
  , "ReviewActions" :: Maybe (ReviewActionDetailList)
  }
derive instance newtypeReviewReport :: Newtype ReviewReport _
derive instance repGenericReviewReport :: Generic ReviewReport _
instance showReviewReport :: Show ReviewReport where show = genericShow
instance decodeReviewReport :: Decode ReviewReport where decode = genericDecode options
instance encodeReviewReport :: Encode ReviewReport where encode = genericEncode options

-- | Constructs ReviewReport from required parameters
newReviewReport :: ReviewReport
newReviewReport  = ReviewReport { "ReviewActions": Nothing, "ReviewResults": Nothing }

-- | Constructs ReviewReport's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReviewReport' :: ( { "ReviewResults" :: Maybe (ReviewResultDetailList) , "ReviewActions" :: Maybe (ReviewActionDetailList) } -> {"ReviewResults" :: Maybe (ReviewResultDetailList) , "ReviewActions" :: Maybe (ReviewActionDetailList) } ) -> ReviewReport
newReviewReport'  customize = (ReviewReport <<< customize) { "ReviewActions": Nothing, "ReviewResults": Nothing }



-- | <p> This data structure is returned multiple times for each result specified in the Review Policy. </p>
newtype ReviewResultDetail = ReviewResultDetail 
  { "ActionId" :: Maybe (EntityId)
  , "SubjectId" :: Maybe (EntityId)
  , "SubjectType" :: Maybe (String)
  , "QuestionId" :: Maybe (EntityId)
  , "Key" :: Maybe (String)
  , "Value" :: Maybe (String)
  }
derive instance newtypeReviewResultDetail :: Newtype ReviewResultDetail _
derive instance repGenericReviewResultDetail :: Generic ReviewResultDetail _
instance showReviewResultDetail :: Show ReviewResultDetail where show = genericShow
instance decodeReviewResultDetail :: Decode ReviewResultDetail where decode = genericDecode options
instance encodeReviewResultDetail :: Encode ReviewResultDetail where encode = genericEncode options

-- | Constructs ReviewResultDetail from required parameters
newReviewResultDetail :: ReviewResultDetail
newReviewResultDetail  = ReviewResultDetail { "ActionId": Nothing, "Key": Nothing, "QuestionId": Nothing, "SubjectId": Nothing, "SubjectType": Nothing, "Value": Nothing }

-- | Constructs ReviewResultDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReviewResultDetail' :: ( { "ActionId" :: Maybe (EntityId) , "SubjectId" :: Maybe (EntityId) , "SubjectType" :: Maybe (String) , "QuestionId" :: Maybe (EntityId) , "Key" :: Maybe (String) , "Value" :: Maybe (String) } -> {"ActionId" :: Maybe (EntityId) , "SubjectId" :: Maybe (EntityId) , "SubjectType" :: Maybe (String) , "QuestionId" :: Maybe (EntityId) , "Key" :: Maybe (String) , "Value" :: Maybe (String) } ) -> ReviewResultDetail
newReviewResultDetail'  customize = (ReviewResultDetail <<< customize) { "ActionId": Nothing, "Key": Nothing, "QuestionId": Nothing, "SubjectId": Nothing, "SubjectType": Nothing, "Value": Nothing }



newtype ReviewResultDetailList = ReviewResultDetailList (Array ReviewResultDetail)
derive instance newtypeReviewResultDetailList :: Newtype ReviewResultDetailList _
derive instance repGenericReviewResultDetailList :: Generic ReviewResultDetailList _
instance showReviewResultDetailList :: Show ReviewResultDetailList where show = genericShow
instance decodeReviewResultDetailList :: Decode ReviewResultDetailList where decode = genericDecode options
instance encodeReviewResultDetailList :: Encode ReviewResultDetailList where encode = genericEncode options



newtype ReviewableHITStatus = ReviewableHITStatus String
derive instance newtypeReviewableHITStatus :: Newtype ReviewableHITStatus _
derive instance repGenericReviewableHITStatus :: Generic ReviewableHITStatus _
instance showReviewableHITStatus :: Show ReviewableHITStatus where show = genericShow
instance decodeReviewableHITStatus :: Decode ReviewableHITStatus where decode = genericDecode options
instance encodeReviewableHITStatus :: Encode ReviewableHITStatus where encode = genericEncode options



newtype SendBonusRequest = SendBonusRequest 
  { "WorkerId" :: (CustomerId)
  , "BonusAmount" :: (CurrencyAmount)
  , "AssignmentId" :: (EntityId)
  , "Reason" :: (String)
  , "UniqueRequestToken" :: Maybe (IdempotencyToken)
  }
derive instance newtypeSendBonusRequest :: Newtype SendBonusRequest _
derive instance repGenericSendBonusRequest :: Generic SendBonusRequest _
instance showSendBonusRequest :: Show SendBonusRequest where show = genericShow
instance decodeSendBonusRequest :: Decode SendBonusRequest where decode = genericDecode options
instance encodeSendBonusRequest :: Encode SendBonusRequest where encode = genericEncode options

-- | Constructs SendBonusRequest from required parameters
newSendBonusRequest :: EntityId -> CurrencyAmount -> String -> CustomerId -> SendBonusRequest
newSendBonusRequest _AssignmentId _BonusAmount _Reason _WorkerId = SendBonusRequest { "AssignmentId": _AssignmentId, "BonusAmount": _BonusAmount, "Reason": _Reason, "WorkerId": _WorkerId, "UniqueRequestToken": Nothing }

-- | Constructs SendBonusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendBonusRequest' :: EntityId -> CurrencyAmount -> String -> CustomerId -> ( { "WorkerId" :: (CustomerId) , "BonusAmount" :: (CurrencyAmount) , "AssignmentId" :: (EntityId) , "Reason" :: (String) , "UniqueRequestToken" :: Maybe (IdempotencyToken) } -> {"WorkerId" :: (CustomerId) , "BonusAmount" :: (CurrencyAmount) , "AssignmentId" :: (EntityId) , "Reason" :: (String) , "UniqueRequestToken" :: Maybe (IdempotencyToken) } ) -> SendBonusRequest
newSendBonusRequest' _AssignmentId _BonusAmount _Reason _WorkerId customize = (SendBonusRequest <<< customize) { "AssignmentId": _AssignmentId, "BonusAmount": _BonusAmount, "Reason": _Reason, "WorkerId": _WorkerId, "UniqueRequestToken": Nothing }



newtype SendBonusResponse = SendBonusResponse Types.NoArguments
derive instance newtypeSendBonusResponse :: Newtype SendBonusResponse _
derive instance repGenericSendBonusResponse :: Generic SendBonusResponse _
instance showSendBonusResponse :: Show SendBonusResponse where show = genericShow
instance decodeSendBonusResponse :: Decode SendBonusResponse where decode = genericDecode options
instance encodeSendBonusResponse :: Encode SendBonusResponse where encode = genericEncode options



newtype SendTestEventNotificationRequest = SendTestEventNotificationRequest 
  { "Notification" :: (NotificationSpecification)
  , "TestEventType" :: (EventType)
  }
derive instance newtypeSendTestEventNotificationRequest :: Newtype SendTestEventNotificationRequest _
derive instance repGenericSendTestEventNotificationRequest :: Generic SendTestEventNotificationRequest _
instance showSendTestEventNotificationRequest :: Show SendTestEventNotificationRequest where show = genericShow
instance decodeSendTestEventNotificationRequest :: Decode SendTestEventNotificationRequest where decode = genericDecode options
instance encodeSendTestEventNotificationRequest :: Encode SendTestEventNotificationRequest where encode = genericEncode options

-- | Constructs SendTestEventNotificationRequest from required parameters
newSendTestEventNotificationRequest :: NotificationSpecification -> EventType -> SendTestEventNotificationRequest
newSendTestEventNotificationRequest _Notification _TestEventType = SendTestEventNotificationRequest { "Notification": _Notification, "TestEventType": _TestEventType }

-- | Constructs SendTestEventNotificationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendTestEventNotificationRequest' :: NotificationSpecification -> EventType -> ( { "Notification" :: (NotificationSpecification) , "TestEventType" :: (EventType) } -> {"Notification" :: (NotificationSpecification) , "TestEventType" :: (EventType) } ) -> SendTestEventNotificationRequest
newSendTestEventNotificationRequest' _Notification _TestEventType customize = (SendTestEventNotificationRequest <<< customize) { "Notification": _Notification, "TestEventType": _TestEventType }



newtype SendTestEventNotificationResponse = SendTestEventNotificationResponse Types.NoArguments
derive instance newtypeSendTestEventNotificationResponse :: Newtype SendTestEventNotificationResponse _
derive instance repGenericSendTestEventNotificationResponse :: Generic SendTestEventNotificationResponse _
instance showSendTestEventNotificationResponse :: Show SendTestEventNotificationResponse where show = genericShow
instance decodeSendTestEventNotificationResponse :: Decode SendTestEventNotificationResponse where decode = genericDecode options
instance encodeSendTestEventNotificationResponse :: Encode SendTestEventNotificationResponse where encode = genericEncode options



-- | <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
newtype ServiceFault = ServiceFault 
  { "Message" :: Maybe (ExceptionMessage)
  , "TurkErrorCode" :: Maybe (TurkErrorCode)
  }
derive instance newtypeServiceFault :: Newtype ServiceFault _
derive instance repGenericServiceFault :: Generic ServiceFault _
instance showServiceFault :: Show ServiceFault where show = genericShow
instance decodeServiceFault :: Decode ServiceFault where decode = genericDecode options
instance encodeServiceFault :: Encode ServiceFault where encode = genericEncode options

-- | Constructs ServiceFault from required parameters
newServiceFault :: ServiceFault
newServiceFault  = ServiceFault { "Message": Nothing, "TurkErrorCode": Nothing }

-- | Constructs ServiceFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceFault' :: ( { "Message" :: Maybe (ExceptionMessage) , "TurkErrorCode" :: Maybe (TurkErrorCode) } -> {"Message" :: Maybe (ExceptionMessage) , "TurkErrorCode" :: Maybe (TurkErrorCode) } ) -> ServiceFault
newServiceFault'  customize = (ServiceFault <<< customize) { "Message": Nothing, "TurkErrorCode": Nothing }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype TurkErrorCode = TurkErrorCode String
derive instance newtypeTurkErrorCode :: Newtype TurkErrorCode _
derive instance repGenericTurkErrorCode :: Generic TurkErrorCode _
instance showTurkErrorCode :: Show TurkErrorCode where show = genericShow
instance decodeTurkErrorCode :: Decode TurkErrorCode where decode = genericDecode options
instance encodeTurkErrorCode :: Encode TurkErrorCode where encode = genericEncode options



newtype UpdateExpirationForHITRequest = UpdateExpirationForHITRequest 
  { "HITId" :: (EntityId)
  , "ExpireAt" :: (Types.Timestamp)
  }
derive instance newtypeUpdateExpirationForHITRequest :: Newtype UpdateExpirationForHITRequest _
derive instance repGenericUpdateExpirationForHITRequest :: Generic UpdateExpirationForHITRequest _
instance showUpdateExpirationForHITRequest :: Show UpdateExpirationForHITRequest where show = genericShow
instance decodeUpdateExpirationForHITRequest :: Decode UpdateExpirationForHITRequest where decode = genericDecode options
instance encodeUpdateExpirationForHITRequest :: Encode UpdateExpirationForHITRequest where encode = genericEncode options

-- | Constructs UpdateExpirationForHITRequest from required parameters
newUpdateExpirationForHITRequest :: Types.Timestamp -> EntityId -> UpdateExpirationForHITRequest
newUpdateExpirationForHITRequest _ExpireAt _HITId = UpdateExpirationForHITRequest { "ExpireAt": _ExpireAt, "HITId": _HITId }

-- | Constructs UpdateExpirationForHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateExpirationForHITRequest' :: Types.Timestamp -> EntityId -> ( { "HITId" :: (EntityId) , "ExpireAt" :: (Types.Timestamp) } -> {"HITId" :: (EntityId) , "ExpireAt" :: (Types.Timestamp) } ) -> UpdateExpirationForHITRequest
newUpdateExpirationForHITRequest' _ExpireAt _HITId customize = (UpdateExpirationForHITRequest <<< customize) { "ExpireAt": _ExpireAt, "HITId": _HITId }



newtype UpdateExpirationForHITResponse = UpdateExpirationForHITResponse Types.NoArguments
derive instance newtypeUpdateExpirationForHITResponse :: Newtype UpdateExpirationForHITResponse _
derive instance repGenericUpdateExpirationForHITResponse :: Generic UpdateExpirationForHITResponse _
instance showUpdateExpirationForHITResponse :: Show UpdateExpirationForHITResponse where show = genericShow
instance decodeUpdateExpirationForHITResponse :: Decode UpdateExpirationForHITResponse where decode = genericDecode options
instance encodeUpdateExpirationForHITResponse :: Encode UpdateExpirationForHITResponse where encode = genericEncode options



newtype UpdateHITReviewStatusRequest = UpdateHITReviewStatusRequest 
  { "HITId" :: (EntityId)
  , "Revert" :: Maybe (Boolean)
  }
derive instance newtypeUpdateHITReviewStatusRequest :: Newtype UpdateHITReviewStatusRequest _
derive instance repGenericUpdateHITReviewStatusRequest :: Generic UpdateHITReviewStatusRequest _
instance showUpdateHITReviewStatusRequest :: Show UpdateHITReviewStatusRequest where show = genericShow
instance decodeUpdateHITReviewStatusRequest :: Decode UpdateHITReviewStatusRequest where decode = genericDecode options
instance encodeUpdateHITReviewStatusRequest :: Encode UpdateHITReviewStatusRequest where encode = genericEncode options

-- | Constructs UpdateHITReviewStatusRequest from required parameters
newUpdateHITReviewStatusRequest :: EntityId -> UpdateHITReviewStatusRequest
newUpdateHITReviewStatusRequest _HITId = UpdateHITReviewStatusRequest { "HITId": _HITId, "Revert": Nothing }

-- | Constructs UpdateHITReviewStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateHITReviewStatusRequest' :: EntityId -> ( { "HITId" :: (EntityId) , "Revert" :: Maybe (Boolean) } -> {"HITId" :: (EntityId) , "Revert" :: Maybe (Boolean) } ) -> UpdateHITReviewStatusRequest
newUpdateHITReviewStatusRequest' _HITId customize = (UpdateHITReviewStatusRequest <<< customize) { "HITId": _HITId, "Revert": Nothing }



newtype UpdateHITReviewStatusResponse = UpdateHITReviewStatusResponse Types.NoArguments
derive instance newtypeUpdateHITReviewStatusResponse :: Newtype UpdateHITReviewStatusResponse _
derive instance repGenericUpdateHITReviewStatusResponse :: Generic UpdateHITReviewStatusResponse _
instance showUpdateHITReviewStatusResponse :: Show UpdateHITReviewStatusResponse where show = genericShow
instance decodeUpdateHITReviewStatusResponse :: Decode UpdateHITReviewStatusResponse where decode = genericDecode options
instance encodeUpdateHITReviewStatusResponse :: Encode UpdateHITReviewStatusResponse where encode = genericEncode options



newtype UpdateHITTypeOfHITRequest = UpdateHITTypeOfHITRequest 
  { "HITId" :: (EntityId)
  , "HITTypeId" :: (EntityId)
  }
derive instance newtypeUpdateHITTypeOfHITRequest :: Newtype UpdateHITTypeOfHITRequest _
derive instance repGenericUpdateHITTypeOfHITRequest :: Generic UpdateHITTypeOfHITRequest _
instance showUpdateHITTypeOfHITRequest :: Show UpdateHITTypeOfHITRequest where show = genericShow
instance decodeUpdateHITTypeOfHITRequest :: Decode UpdateHITTypeOfHITRequest where decode = genericDecode options
instance encodeUpdateHITTypeOfHITRequest :: Encode UpdateHITTypeOfHITRequest where encode = genericEncode options

-- | Constructs UpdateHITTypeOfHITRequest from required parameters
newUpdateHITTypeOfHITRequest :: EntityId -> EntityId -> UpdateHITTypeOfHITRequest
newUpdateHITTypeOfHITRequest _HITId _HITTypeId = UpdateHITTypeOfHITRequest { "HITId": _HITId, "HITTypeId": _HITTypeId }

-- | Constructs UpdateHITTypeOfHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateHITTypeOfHITRequest' :: EntityId -> EntityId -> ( { "HITId" :: (EntityId) , "HITTypeId" :: (EntityId) } -> {"HITId" :: (EntityId) , "HITTypeId" :: (EntityId) } ) -> UpdateHITTypeOfHITRequest
newUpdateHITTypeOfHITRequest' _HITId _HITTypeId customize = (UpdateHITTypeOfHITRequest <<< customize) { "HITId": _HITId, "HITTypeId": _HITTypeId }



newtype UpdateHITTypeOfHITResponse = UpdateHITTypeOfHITResponse Types.NoArguments
derive instance newtypeUpdateHITTypeOfHITResponse :: Newtype UpdateHITTypeOfHITResponse _
derive instance repGenericUpdateHITTypeOfHITResponse :: Generic UpdateHITTypeOfHITResponse _
instance showUpdateHITTypeOfHITResponse :: Show UpdateHITTypeOfHITResponse where show = genericShow
instance decodeUpdateHITTypeOfHITResponse :: Decode UpdateHITTypeOfHITResponse where decode = genericDecode options
instance encodeUpdateHITTypeOfHITResponse :: Encode UpdateHITTypeOfHITResponse where encode = genericEncode options



newtype UpdateNotificationSettingsRequest = UpdateNotificationSettingsRequest 
  { "HITTypeId" :: (EntityId)
  , "Notification" :: Maybe (NotificationSpecification)
  , "Active" :: Maybe (Boolean)
  }
derive instance newtypeUpdateNotificationSettingsRequest :: Newtype UpdateNotificationSettingsRequest _
derive instance repGenericUpdateNotificationSettingsRequest :: Generic UpdateNotificationSettingsRequest _
instance showUpdateNotificationSettingsRequest :: Show UpdateNotificationSettingsRequest where show = genericShow
instance decodeUpdateNotificationSettingsRequest :: Decode UpdateNotificationSettingsRequest where decode = genericDecode options
instance encodeUpdateNotificationSettingsRequest :: Encode UpdateNotificationSettingsRequest where encode = genericEncode options

-- | Constructs UpdateNotificationSettingsRequest from required parameters
newUpdateNotificationSettingsRequest :: EntityId -> UpdateNotificationSettingsRequest
newUpdateNotificationSettingsRequest _HITTypeId = UpdateNotificationSettingsRequest { "HITTypeId": _HITTypeId, "Active": Nothing, "Notification": Nothing }

-- | Constructs UpdateNotificationSettingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateNotificationSettingsRequest' :: EntityId -> ( { "HITTypeId" :: (EntityId) , "Notification" :: Maybe (NotificationSpecification) , "Active" :: Maybe (Boolean) } -> {"HITTypeId" :: (EntityId) , "Notification" :: Maybe (NotificationSpecification) , "Active" :: Maybe (Boolean) } ) -> UpdateNotificationSettingsRequest
newUpdateNotificationSettingsRequest' _HITTypeId customize = (UpdateNotificationSettingsRequest <<< customize) { "HITTypeId": _HITTypeId, "Active": Nothing, "Notification": Nothing }



newtype UpdateNotificationSettingsResponse = UpdateNotificationSettingsResponse Types.NoArguments
derive instance newtypeUpdateNotificationSettingsResponse :: Newtype UpdateNotificationSettingsResponse _
derive instance repGenericUpdateNotificationSettingsResponse :: Generic UpdateNotificationSettingsResponse _
instance showUpdateNotificationSettingsResponse :: Show UpdateNotificationSettingsResponse where show = genericShow
instance decodeUpdateNotificationSettingsResponse :: Decode UpdateNotificationSettingsResponse where decode = genericDecode options
instance encodeUpdateNotificationSettingsResponse :: Encode UpdateNotificationSettingsResponse where encode = genericEncode options



newtype UpdateQualificationTypeRequest = UpdateQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  , "Description" :: Maybe (String)
  , "QualificationTypeStatus" :: Maybe (QualificationTypeStatus)
  , "Test" :: Maybe (String)
  , "AnswerKey" :: Maybe (String)
  , "TestDurationInSeconds" :: Maybe (Number)
  , "RetryDelayInSeconds" :: Maybe (Number)
  , "AutoGranted" :: Maybe (Boolean)
  , "AutoGrantedValue" :: Maybe (Int)
  }
derive instance newtypeUpdateQualificationTypeRequest :: Newtype UpdateQualificationTypeRequest _
derive instance repGenericUpdateQualificationTypeRequest :: Generic UpdateQualificationTypeRequest _
instance showUpdateQualificationTypeRequest :: Show UpdateQualificationTypeRequest where show = genericShow
instance decodeUpdateQualificationTypeRequest :: Decode UpdateQualificationTypeRequest where decode = genericDecode options
instance encodeUpdateQualificationTypeRequest :: Encode UpdateQualificationTypeRequest where encode = genericEncode options

-- | Constructs UpdateQualificationTypeRequest from required parameters
newUpdateQualificationTypeRequest :: EntityId -> UpdateQualificationTypeRequest
newUpdateQualificationTypeRequest _QualificationTypeId = UpdateQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId, "AnswerKey": Nothing, "AutoGranted": Nothing, "AutoGrantedValue": Nothing, "Description": Nothing, "QualificationTypeStatus": Nothing, "RetryDelayInSeconds": Nothing, "Test": Nothing, "TestDurationInSeconds": Nothing }

-- | Constructs UpdateQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) , "Description" :: Maybe (String) , "QualificationTypeStatus" :: Maybe (QualificationTypeStatus) , "Test" :: Maybe (String) , "AnswerKey" :: Maybe (String) , "TestDurationInSeconds" :: Maybe (Number) , "RetryDelayInSeconds" :: Maybe (Number) , "AutoGranted" :: Maybe (Boolean) , "AutoGrantedValue" :: Maybe (Int) } -> {"QualificationTypeId" :: (EntityId) , "Description" :: Maybe (String) , "QualificationTypeStatus" :: Maybe (QualificationTypeStatus) , "Test" :: Maybe (String) , "AnswerKey" :: Maybe (String) , "TestDurationInSeconds" :: Maybe (Number) , "RetryDelayInSeconds" :: Maybe (Number) , "AutoGranted" :: Maybe (Boolean) , "AutoGrantedValue" :: Maybe (Int) } ) -> UpdateQualificationTypeRequest
newUpdateQualificationTypeRequest' _QualificationTypeId customize = (UpdateQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "AnswerKey": Nothing, "AutoGranted": Nothing, "AutoGrantedValue": Nothing, "Description": Nothing, "QualificationTypeStatus": Nothing, "RetryDelayInSeconds": Nothing, "Test": Nothing, "TestDurationInSeconds": Nothing }



newtype UpdateQualificationTypeResponse = UpdateQualificationTypeResponse 
  { "QualificationType" :: Maybe (QualificationType)
  }
derive instance newtypeUpdateQualificationTypeResponse :: Newtype UpdateQualificationTypeResponse _
derive instance repGenericUpdateQualificationTypeResponse :: Generic UpdateQualificationTypeResponse _
instance showUpdateQualificationTypeResponse :: Show UpdateQualificationTypeResponse where show = genericShow
instance decodeUpdateQualificationTypeResponse :: Decode UpdateQualificationTypeResponse where decode = genericDecode options
instance encodeUpdateQualificationTypeResponse :: Encode UpdateQualificationTypeResponse where encode = genericEncode options

-- | Constructs UpdateQualificationTypeResponse from required parameters
newUpdateQualificationTypeResponse :: UpdateQualificationTypeResponse
newUpdateQualificationTypeResponse  = UpdateQualificationTypeResponse { "QualificationType": Nothing }

-- | Constructs UpdateQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateQualificationTypeResponse' :: ( { "QualificationType" :: Maybe (QualificationType) } -> {"QualificationType" :: Maybe (QualificationType) } ) -> UpdateQualificationTypeResponse
newUpdateQualificationTypeResponse'  customize = (UpdateQualificationTypeResponse <<< customize) { "QualificationType": Nothing }



-- | <p> The WorkerBlock data structure represents a Worker who has been blocked. It has two elements: the WorkerId and the Reason for the block. </p>
newtype WorkerBlock = WorkerBlock 
  { "WorkerId" :: Maybe (CustomerId)
  , "Reason" :: Maybe (String)
  }
derive instance newtypeWorkerBlock :: Newtype WorkerBlock _
derive instance repGenericWorkerBlock :: Generic WorkerBlock _
instance showWorkerBlock :: Show WorkerBlock where show = genericShow
instance decodeWorkerBlock :: Decode WorkerBlock where decode = genericDecode options
instance encodeWorkerBlock :: Encode WorkerBlock where encode = genericEncode options

-- | Constructs WorkerBlock from required parameters
newWorkerBlock :: WorkerBlock
newWorkerBlock  = WorkerBlock { "Reason": Nothing, "WorkerId": Nothing }

-- | Constructs WorkerBlock's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkerBlock' :: ( { "WorkerId" :: Maybe (CustomerId) , "Reason" :: Maybe (String) } -> {"WorkerId" :: Maybe (CustomerId) , "Reason" :: Maybe (String) } ) -> WorkerBlock
newWorkerBlock'  customize = (WorkerBlock <<< customize) { "Reason": Nothing, "WorkerId": Nothing }



newtype WorkerBlockList = WorkerBlockList (Array WorkerBlock)
derive instance newtypeWorkerBlockList :: Newtype WorkerBlockList _
derive instance repGenericWorkerBlockList :: Generic WorkerBlockList _
instance showWorkerBlockList :: Show WorkerBlockList where show = genericShow
instance decodeWorkerBlockList :: Decode WorkerBlockList where decode = genericDecode options
instance encodeWorkerBlockList :: Encode WorkerBlockList where encode = genericEncode options

