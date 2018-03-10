

-- | <fullname>Amazon Mechanical Turk API Reference</fullname>
module AWS.MTurk where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "MTurk" :: String


-- | <p> The <code>AcceptQualificationRequest</code> operation approves a Worker's request for a Qualification. </p> <p> Only the owner of the Qualification type can grant a Qualification request for that type. </p> <p> A successful request for the <code>AcceptQualificationRequest</code> operation returns with no errors and an empty body. </p>
acceptQualificationRequest :: forall eff. AcceptQualificationRequestRequest -> Aff (exception :: EXCEPTION | eff) AcceptQualificationRequestResponse
acceptQualificationRequest = Request.request serviceName "acceptQualificationRequest" 


-- | <p> The <code>ApproveAssignment</code> operation approves the results of a completed assignment. </p> <p> Approving an assignment initiates two payments from the Requester's Amazon.com account </p> <ul> <li> <p> The Worker who submitted the results is paid the reward specified in the HIT. </p> </li> <li> <p> Amazon Mechanical Turk fees are debited. </p> </li> </ul> <p> If the Requester's account does not have adequate funds for these payments, the call to ApproveAssignment returns an exception, and the approval is not processed. You can include an optional feedback message with the approval, which the Worker can see in the Status section of the web site. </p> <p> You can also call this operation for assignments that were previous rejected and approve them by explicitly overriding the previous rejection. This only works on rejected assignments that were submitted within the previous 30 days and only if the assignment's related HIT has not been deleted. </p>
approveAssignment :: forall eff. ApproveAssignmentRequest -> Aff (exception :: EXCEPTION | eff) ApproveAssignmentResponse
approveAssignment = Request.request serviceName "approveAssignment" 


-- | <p> The <code>AssociateQualificationWithWorker</code> operation gives a Worker a Qualification. <code>AssociateQualificationWithWorker</code> does not require that the Worker submit a Qualification request. It gives the Qualification directly to the Worker. </p> <p> You can only assign a Qualification of a Qualification type that you created (using the <code>CreateQualificationType</code> operation). </p> <note> <p> Note: <code>AssociateQualificationWithWorker</code> does not affect any pending Qualification requests for the Qualification by the Worker. If you assign a Qualification to a Worker, then later grant a Qualification request made by the Worker, the granting of the request may modify the Qualification score. To resolve a pending Qualification request without affecting the Qualification the Worker already has, reject the request with the <code>RejectQualificationRequest</code> operation. </p> </note>
associateQualificationWithWorker :: forall eff. AssociateQualificationWithWorkerRequest -> Aff (exception :: EXCEPTION | eff) AssociateQualificationWithWorkerResponse
associateQualificationWithWorker = Request.request serviceName "associateQualificationWithWorker" 


-- | <p> The <code>CreateAdditionalAssignmentsForHIT</code> operation increases the maximum number of assignments of an existing HIT. </p> <p> To extend the maximum number of assignments, specify the number of additional assignments.</p> <note> <ul> <li> <p>HITs created with fewer than 10 assignments cannot be extended to have 10 or more assignments. Attempting to add assignments in a way that brings the total number of assignments for a HIT from fewer than 10 assignments to 10 or more assignments will result in an <code>AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease</code> exception.</p> </li> <li> <p>HITs that were created before July 22, 2015 cannot be extended. Attempting to extend HITs that were created before July 22, 2015 will result in an <code>AWS.MechanicalTurk.HITTooOldForExtension</code> exception. </p> </li> </ul> </note>
createAdditionalAssignmentsForHIT :: forall eff. CreateAdditionalAssignmentsForHITRequest -> Aff (exception :: EXCEPTION | eff) CreateAdditionalAssignmentsForHITResponse
createAdditionalAssignmentsForHIT = Request.request serviceName "createAdditionalAssignmentsForHIT" 


-- | <p>The <code>CreateHIT</code> operation creates a new Human Intelligence Task (HIT). The new HIT is made available for Workers to find and accept on the Amazon Mechanical Turk website. </p> <p> This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to <code>CreateHIT</code>, a new HIT is created for you, with a new <code>HITTypeID</code>. The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.</p> <p> An alternative way to create HITs is to first generate a HITTypeID using the <code>CreateHITType</code> operation and then call the <code>CreateHITWithHITType</code> operation. This is the recommended best practice for Requesters who are creating large numbers of HITs. </p> <p>CreateHIT also supports several ways to provide question data: by providing a value for the <code>Question</code> parameter that fully specifies the contents of the HIT, or by providing a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>. </p> <note> <p> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>.</p> </note>
createHIT :: forall eff. CreateHITRequest -> Aff (exception :: EXCEPTION | eff) CreateHITResponse
createHIT = Request.request serviceName "createHIT" 


-- | <p> The <code>CreateHITType</code> operation creates a new HIT type. This operation allows you to define a standard set of HIT properties to use when creating HITs. If you register a HIT type with values that match an existing HIT type, the HIT type ID of the existing type will be returned. </p>
createHITType :: forall eff. CreateHITTypeRequest -> Aff (exception :: EXCEPTION | eff) CreateHITTypeResponse
createHITType = Request.request serviceName "createHITType" 


-- | <p> The <code>CreateHITWithHITType</code> operation creates a new Human Intelligence Task (HIT) using an existing HITTypeID generated by the <code>CreateHITType</code> operation. </p> <p> This is an alternative way to create HITs from the <code>CreateHIT</code> operation. This is the recommended best practice for Requesters who are creating large numbers of HITs. </p> <p>CreateHITWithHITType also supports several ways to provide question data: by providing a value for the <code>Question</code> parameter that fully specifies the contents of the HIT, or by providing a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>. </p> <note> <p> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>. </p> </note>
createHITWithHITType :: forall eff. CreateHITWithHITTypeRequest -> Aff (exception :: EXCEPTION | eff) CreateHITWithHITTypeResponse
createHITWithHITType = Request.request serviceName "createHITWithHITType" 


-- | <p> The <code>CreateQualificationType</code> operation creates a new Qualification type, which is represented by a <code>QualificationType</code> data structure. </p>
createQualificationType :: forall eff. CreateQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) CreateQualificationTypeResponse
createQualificationType = Request.request serviceName "createQualificationType" 


-- | <p>The <code>CreateWorkerBlock</code> operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.</p>
createWorkerBlock :: forall eff. CreateWorkerBlockRequest -> Aff (exception :: EXCEPTION | eff) CreateWorkerBlockResponse
createWorkerBlock = Request.request serviceName "createWorkerBlock" 


-- | <p> The <code>DeleteHIT</code> operation is used to delete HIT that is no longer needed. Only the Requester who created the HIT can delete it. </p> <p> You can only dispose of HITs that are in the <code>Reviewable</code> state, with all of their submitted assignments already either approved or rejected. If you call the DeleteHIT operation on a HIT that is not in the <code>Reviewable</code> state (for example, that has not expired, or still has active assignments), or on a HIT that is Reviewable but without all of its submitted assignments already approved or rejected, the service will return an error. </p> <note> <ul> <li> <p> HITs are automatically disposed of after 120 days. </p> </li> <li> <p> After you dispose of a HIT, you can no longer approve the HIT's rejected assignments. </p> </li> <li> <p> Disposed HITs are not returned in results for the ListHITs operation. </p> </li> <li> <p> Disposing HITs can improve the performance of operations such as ListReviewableHITs and ListHITs. </p> </li> </ul> </note>
deleteHIT :: forall eff. DeleteHITRequest -> Aff (exception :: EXCEPTION | eff) DeleteHITResponse
deleteHIT = Request.request serviceName "deleteHIT" 


-- | <p> The <code>DeleteQualificationType</code> deletes a Qualification type and deletes any HIT types that are associated with the Qualification type. </p> <p>This operation does not revoke Qualifications already assigned to Workers because the Qualifications might be needed for active HITs. If there are any pending requests for the Qualification type, Amazon Mechanical Turk rejects those requests. After you delete a Qualification type, you can no longer use it to create HITs or HIT types.</p> <note> <p>DeleteQualificationType must wait for all the HITs that use the deleted Qualification type to be deleted before completing. It may take up to 48 hours before DeleteQualificationType completes and the unique name of the Qualification type is available for reuse with CreateQualificationType.</p> </note>
deleteQualificationType :: forall eff. DeleteQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) DeleteQualificationTypeResponse
deleteQualificationType = Request.request serviceName "deleteQualificationType" 


-- | <p>The <code>DeleteWorkerBlock</code> operation allows you to reinstate a blocked Worker to work on your HITs. This operation reverses the effects of the CreateWorkerBlock operation. You need the Worker ID to use this operation. If the Worker ID is missing or invalid, this operation fails and returns the message “WorkerId is invalid.” If the specified Worker is not blocked, this operation returns successfully.</p>
deleteWorkerBlock :: forall eff. DeleteWorkerBlockRequest -> Aff (exception :: EXCEPTION | eff) DeleteWorkerBlockResponse
deleteWorkerBlock = Request.request serviceName "deleteWorkerBlock" 


-- | <p> The <code>DisassociateQualificationFromWorker</code> revokes a previously granted Qualification from a user. </p> <p> You can provide a text message explaining why the Qualification was revoked. The user who had the Qualification can see this message. </p>
disassociateQualificationFromWorker :: forall eff. DisassociateQualificationFromWorkerRequest -> Aff (exception :: EXCEPTION | eff) DisassociateQualificationFromWorkerResponse
disassociateQualificationFromWorker = Request.request serviceName "disassociateQualificationFromWorker" 


-- | <p>The <code>GetAccountBalance</code> operation retrieves the amount of money in your Amazon Mechanical Turk account.</p>
getAccountBalance :: forall eff. GetAccountBalanceRequest -> Aff (exception :: EXCEPTION | eff) GetAccountBalanceResponse
getAccountBalance = Request.request serviceName "getAccountBalance" 


-- | <p> The <code>GetAssignment</code> operation retrieves the details of the specified Assignment. </p>
getAssignment :: forall eff. GetAssignmentRequest -> Aff (exception :: EXCEPTION | eff) GetAssignmentResponse
getAssignment = Request.request serviceName "getAssignment" 


-- | <p> The <code>GetFileUploadURL</code> operation generates and returns a temporary URL. You use the temporary URL to retrieve a file uploaded by a Worker as an answer to a FileUploadAnswer question for a HIT. The temporary URL is generated the instant the GetFileUploadURL operation is called, and is valid for 60 seconds. You can get a temporary file upload URL any time until the HIT is disposed. After the HIT is disposed, any uploaded files are deleted, and cannot be retrieved. Pending Deprecation on December 12, 2017. The Answer Specification structure will no longer support the <code>FileUploadAnswer</code> element to be used for the QuestionForm data structure. Instead, we recommend that Requesters who want to create HITs asking Workers to upload files to use Amazon S3. </p>
getFileUploadURL :: forall eff. GetFileUploadURLRequest -> Aff (exception :: EXCEPTION | eff) GetFileUploadURLResponse
getFileUploadURL = Request.request serviceName "getFileUploadURL" 


-- | <p> The <code>GetHIT</code> operation retrieves the details of the specified HIT. </p>
getHIT :: forall eff. GetHITRequest -> Aff (exception :: EXCEPTION | eff) GetHITResponse
getHIT = Request.request serviceName "getHIT" 


-- | <p> The <code>GetQualificationScore</code> operation returns the value of a Worker's Qualification for a given Qualification type. </p> <p> To get a Worker's Qualification, you must know the Worker's ID. The Worker's ID is included in the assignment data returned by the <code>ListAssignmentsForHIT</code> operation. </p> <p>Only the owner of a Qualification type can query the value of a Worker's Qualification of that type.</p>
getQualificationScore :: forall eff. GetQualificationScoreRequest -> Aff (exception :: EXCEPTION | eff) GetQualificationScoreResponse
getQualificationScore = Request.request serviceName "getQualificationScore" 


-- | <p> The <code>GetQualificationType</code>operation retrieves information about a Qualification type using its ID. </p>
getQualificationType :: forall eff. GetQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) GetQualificationTypeResponse
getQualificationType = Request.request serviceName "getQualificationType" 


-- | <p> The <code>ListAssignmentsForHIT</code> operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT. </p> <p> You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation. </p> <p> Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set. </p> <p> Only the Requester who created the HIT can retrieve the assignments for that HIT. </p> <p> Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination. </p>
listAssignmentsForHIT :: forall eff. ListAssignmentsForHITRequest -> Aff (exception :: EXCEPTION | eff) ListAssignmentsForHITResponse
listAssignmentsForHIT = Request.request serviceName "listAssignmentsForHIT" 


-- | <p> The <code>ListBonusPayments</code> operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment. </p>
listBonusPayments :: forall eff. ListBonusPaymentsRequest -> Aff (exception :: EXCEPTION | eff) ListBonusPaymentsResponse
listBonusPayments = Request.request serviceName "listBonusPayments" 


-- | <p> The <code>ListHITs</code> operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted. </p>
listHITs :: forall eff. ListHITsRequest -> Aff (exception :: EXCEPTION | eff) ListHITsResponse
listHITs = Request.request serviceName "listHITs" 


-- | <p> The <code>ListHITsForQualificationType</code> operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the <code>DeleteHIT</code> operation or that have been auto-deleted. </p>
listHITsForQualificationType :: forall eff. ListHITsForQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) ListHITsForQualificationTypeResponse
listHITsForQualificationType = Request.request serviceName "listHITsForQualificationType" 


-- | <p> The <code>ListQualificationRequests</code> operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation. </p>
listQualificationRequests :: forall eff. ListQualificationRequestsRequest -> Aff (exception :: EXCEPTION | eff) ListQualificationRequestsResponse
listQualificationRequests = Request.request serviceName "listQualificationRequests" 


-- | <p> The <code>ListQualificationRequests</code> operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation. </p>
listQualificationTypes :: forall eff. ListQualificationTypesRequest -> Aff (exception :: EXCEPTION | eff) ListQualificationTypesResponse
listQualificationTypes = Request.request serviceName "listQualificationTypes" 


-- | <p> The <code>ListReviewPolicyResultsForHIT</code> operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results. </p>
listReviewPolicyResultsForHIT :: forall eff. ListReviewPolicyResultsForHITRequest -> Aff (exception :: EXCEPTION | eff) ListReviewPolicyResultsForHITResponse
listReviewPolicyResultsForHIT = Request.request serviceName "listReviewPolicyResultsForHIT" 


-- | <p> The <code>ListReviewableHITs</code> operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation. </p>
listReviewableHITs :: forall eff. ListReviewableHITsRequest -> Aff (exception :: EXCEPTION | eff) ListReviewableHITsResponse
listReviewableHITs = Request.request serviceName "listReviewableHITs" 


-- | <p>The <code>ListWorkersBlocks</code> operation retrieves a list of Workers who are blocked from working on your HITs.</p>
listWorkerBlocks :: forall eff. ListWorkerBlocksRequest -> Aff (exception :: EXCEPTION | eff) ListWorkerBlocksResponse
listWorkerBlocks = Request.request serviceName "listWorkerBlocks" 


-- | <p> The <code>ListWorkersWithQualificationType</code> operation returns all of the Workers that have been associated with a given Qualification type. </p>
listWorkersWithQualificationType :: forall eff. ListWorkersWithQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) ListWorkersWithQualificationTypeResponse
listWorkersWithQualificationType = Request.request serviceName "listWorkersWithQualificationType" 


-- | <p> The <code>NotifyWorkers</code> operation sends an email to one or more Workers that you specify with the Worker ID. You can specify up to 100 Worker IDs to send the same message with a single call to the NotifyWorkers operation. The NotifyWorkers operation will send a notification email to a Worker only if you have previously approved or rejected work from the Worker. </p>
notifyWorkers :: forall eff. NotifyWorkersRequest -> Aff (exception :: EXCEPTION | eff) NotifyWorkersResponse
notifyWorkers = Request.request serviceName "notifyWorkers" 


-- | <p> The <code>RejectAssignment</code> operation rejects the results of a completed assignment. </p> <p> You can include an optional feedback message with the rejection, which the Worker can see in the Status section of the web site. When you include a feedback message with the rejection, it helps the Worker understand why the assignment was rejected, and can improve the quality of the results the Worker submits in the future. </p> <p> Only the Requester who created the HIT can reject an assignment for the HIT. </p>
rejectAssignment :: forall eff. RejectAssignmentRequest -> Aff (exception :: EXCEPTION | eff) RejectAssignmentResponse
rejectAssignment = Request.request serviceName "rejectAssignment" 


-- | <p> The <code>RejectQualificationRequest</code> operation rejects a user's request for a Qualification. </p> <p> You can provide a text message explaining why the request was rejected. The Worker who made the request can see this message.</p>
rejectQualificationRequest :: forall eff. RejectQualificationRequestRequest -> Aff (exception :: EXCEPTION | eff) RejectQualificationRequestResponse
rejectQualificationRequest = Request.request serviceName "rejectQualificationRequest" 


-- | <p> The <code>SendBonus</code> operation issues a payment of money from your account to a Worker. This payment happens separately from the reward you pay to the Worker when you approve the Worker's assignment. The SendBonus operation requires the Worker's ID and the assignment ID as parameters to initiate payment of the bonus. You must include a message that explains the reason for the bonus payment, as the Worker may not be expecting the payment. Amazon Mechanical Turk collects a fee for bonus payments, similar to the HIT listing fee. This operation fails if your account does not have enough funds to pay for both the bonus and the fees. </p>
sendBonus :: forall eff. SendBonusRequest -> Aff (exception :: EXCEPTION | eff) SendBonusResponse
sendBonus = Request.request serviceName "sendBonus" 


-- | <p> The <code>SendTestEventNotification</code> operation causes Amazon Mechanical Turk to send a notification message as if a HIT event occurred, according to the provided notification specification. This allows you to test notifications without setting up notifications for a real HIT type and trying to trigger them using the website. When you call this operation, the service attempts to send the test notification immediately. </p>
sendTestEventNotification :: forall eff. SendTestEventNotificationRequest -> Aff (exception :: EXCEPTION | eff) SendTestEventNotificationResponse
sendTestEventNotification = Request.request serviceName "sendTestEventNotification" 


-- | <p> The <code>UpdateExpirationForHIT</code> operation allows you update the expiration time of a HIT. If you update it to a time in the past, the HIT will be immediately expired. </p>
updateExpirationForHIT :: forall eff. UpdateExpirationForHITRequest -> Aff (exception :: EXCEPTION | eff) UpdateExpirationForHITResponse
updateExpirationForHIT = Request.request serviceName "updateExpirationForHIT" 


-- | <p> The <code>UpdateHITReviewStatus</code> operation updates the status of a HIT. If the status is Reviewable, this operation can update the status to Reviewing, or it can revert a Reviewing HIT back to the Reviewable status. </p>
updateHITReviewStatus :: forall eff. UpdateHITReviewStatusRequest -> Aff (exception :: EXCEPTION | eff) UpdateHITReviewStatusResponse
updateHITReviewStatus = Request.request serviceName "updateHITReviewStatus" 


-- | <p> The <code>UpdateHITTypeOfHIT</code> operation allows you to change the HITType properties of a HIT. This operation disassociates the HIT from its old HITType properties and associates it with the new HITType properties. The HIT takes on the properties of the new HITType in place of the old ones. </p>
updateHITTypeOfHIT :: forall eff. UpdateHITTypeOfHITRequest -> Aff (exception :: EXCEPTION | eff) UpdateHITTypeOfHITResponse
updateHITTypeOfHIT = Request.request serviceName "updateHITTypeOfHIT" 


-- | <p> The <code>UpdateNotificationSettings</code> operation creates, updates, disables or re-enables notifications for a HIT type. If you call the UpdateNotificationSettings operation for a HIT type that already has a notification specification, the operation replaces the old specification with a new one. You can call the UpdateNotificationSettings operation to enable or disable notifications for the HIT type, without having to modify the notification specification itself by providing updates to the Active status without specifying a new notification specification. To change the Active status of a HIT type's notifications, the HIT type must already have a notification specification, or one must be provided in the same call to <code>UpdateNotificationSettings</code>. </p>
updateNotificationSettings :: forall eff. UpdateNotificationSettingsRequest -> Aff (exception :: EXCEPTION | eff) UpdateNotificationSettingsResponse
updateNotificationSettings = Request.request serviceName "updateNotificationSettings" 


-- | <p> The <code>UpdateQualificationType</code> operation modifies the attributes of an existing Qualification type, which is represented by a QualificationType data structure. Only the owner of a Qualification type can modify its attributes. </p> <p> Most attributes of a Qualification type can be changed after the type has been created. However, the Name and Keywords fields cannot be modified. The RetryDelayInSeconds parameter can be modified or added to change the delay or to enable retries, but RetryDelayInSeconds cannot be used to disable retries. </p> <p> You can use this operation to update the test for a Qualification type. The test is updated based on the values specified for the Test, TestDurationInSeconds and AnswerKey parameters. All three parameters specify the updated test. If you are updating the test for a type, you must specify the Test and TestDurationInSeconds parameters. The AnswerKey parameter is optional; omitting it specifies that the updated test does not have an answer key. </p> <p> If you omit the Test parameter, the test for the Qualification type is unchanged. There is no way to remove a test from a Qualification type that has one. If the type already has a test, you cannot update it to be AutoGranted. If the Qualification type does not have a test and one is provided by an update, the type will henceforth have a test. </p> <p> If you want to update the test duration or answer key for an existing test without changing the questions, you must specify a Test parameter with the original questions, along with the updated values. </p> <p> If you provide an updated Test but no AnswerKey, the new test will not have an answer key. Requests for such Qualifications must be granted manually. </p> <p> You can also update the AutoGranted and AutoGrantedValue attributes of the Qualification type.</p>
updateQualificationType :: forall eff. UpdateQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) UpdateQualificationTypeResponse
updateQualificationType = Request.request serviceName "updateQualificationType" 


newtype AcceptQualificationRequestRequest = AcceptQualificationRequestRequest 
  { "QualificationRequestId" :: (String)
  , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeAcceptQualificationRequestRequest :: Newtype AcceptQualificationRequestRequest _
derive instance repGenericAcceptQualificationRequestRequest :: Generic AcceptQualificationRequestRequest _
instance showAcceptQualificationRequestRequest :: Show AcceptQualificationRequestRequest where
  show = genericShow
instance decodeAcceptQualificationRequestRequest :: Decode AcceptQualificationRequestRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAcceptQualificationRequestRequest :: Encode AcceptQualificationRequestRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AcceptQualificationRequestRequest from required parameters
newAcceptQualificationRequestRequest :: String -> AcceptQualificationRequestRequest
newAcceptQualificationRequestRequest _QualificationRequestId = AcceptQualificationRequestRequest { "QualificationRequestId": _QualificationRequestId, "IntegerValue": (NullOrUndefined Nothing) }

-- | Constructs AcceptQualificationRequestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptQualificationRequestRequest' :: String -> ( { "QualificationRequestId" :: (String) , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int) } -> {"QualificationRequestId" :: (String) , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int) } ) -> AcceptQualificationRequestRequest
newAcceptQualificationRequestRequest' _QualificationRequestId customize = (AcceptQualificationRequestRequest <<< customize) { "QualificationRequestId": _QualificationRequestId, "IntegerValue": (NullOrUndefined Nothing) }



newtype AcceptQualificationRequestResponse = AcceptQualificationRequestResponse Types.NoArguments
derive instance newtypeAcceptQualificationRequestResponse :: Newtype AcceptQualificationRequestResponse _
derive instance repGenericAcceptQualificationRequestResponse :: Generic AcceptQualificationRequestResponse _
instance showAcceptQualificationRequestResponse :: Show AcceptQualificationRequestResponse where
  show = genericShow
instance decodeAcceptQualificationRequestResponse :: Decode AcceptQualificationRequestResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAcceptQualificationRequestResponse :: Encode AcceptQualificationRequestResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ApproveAssignmentRequest = ApproveAssignmentRequest 
  { "AssignmentId" :: (EntityId)
  , "RequesterFeedback" :: NullOrUndefined.NullOrUndefined (String)
  , "OverrideRejection" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeApproveAssignmentRequest :: Newtype ApproveAssignmentRequest _
derive instance repGenericApproveAssignmentRequest :: Generic ApproveAssignmentRequest _
instance showApproveAssignmentRequest :: Show ApproveAssignmentRequest where
  show = genericShow
instance decodeApproveAssignmentRequest :: Decode ApproveAssignmentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApproveAssignmentRequest :: Encode ApproveAssignmentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ApproveAssignmentRequest from required parameters
newApproveAssignmentRequest :: EntityId -> ApproveAssignmentRequest
newApproveAssignmentRequest _AssignmentId = ApproveAssignmentRequest { "AssignmentId": _AssignmentId, "OverrideRejection": (NullOrUndefined Nothing), "RequesterFeedback": (NullOrUndefined Nothing) }

-- | Constructs ApproveAssignmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApproveAssignmentRequest' :: EntityId -> ( { "AssignmentId" :: (EntityId) , "RequesterFeedback" :: NullOrUndefined.NullOrUndefined (String) , "OverrideRejection" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"AssignmentId" :: (EntityId) , "RequesterFeedback" :: NullOrUndefined.NullOrUndefined (String) , "OverrideRejection" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> ApproveAssignmentRequest
newApproveAssignmentRequest' _AssignmentId customize = (ApproveAssignmentRequest <<< customize) { "AssignmentId": _AssignmentId, "OverrideRejection": (NullOrUndefined Nothing), "RequesterFeedback": (NullOrUndefined Nothing) }



newtype ApproveAssignmentResponse = ApproveAssignmentResponse Types.NoArguments
derive instance newtypeApproveAssignmentResponse :: Newtype ApproveAssignmentResponse _
derive instance repGenericApproveAssignmentResponse :: Generic ApproveAssignmentResponse _
instance showApproveAssignmentResponse :: Show ApproveAssignmentResponse where
  show = genericShow
instance decodeApproveAssignmentResponse :: Decode ApproveAssignmentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApproveAssignmentResponse :: Encode ApproveAssignmentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The Assignment data structure represents a single assignment of a HIT to a Worker. The assignment tracks the Worker's efforts to complete the HIT, and contains the results for later retrieval. </p>
newtype Assignment = Assignment 
  { "AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId)
  , "HITId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "AssignmentStatus" :: NullOrUndefined.NullOrUndefined (AssignmentStatus)
  , "AutoApprovalTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "AcceptTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "ApprovalTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "RejectionTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Deadline" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Answer" :: NullOrUndefined.NullOrUndefined (String)
  , "RequesterFeedback" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeAssignment :: Newtype Assignment _
derive instance repGenericAssignment :: Generic Assignment _
instance showAssignment :: Show Assignment where
  show = genericShow
instance decodeAssignment :: Decode Assignment where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssignment :: Encode Assignment where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Assignment from required parameters
newAssignment :: Assignment
newAssignment  = Assignment { "AcceptTime": (NullOrUndefined Nothing), "Answer": (NullOrUndefined Nothing), "ApprovalTime": (NullOrUndefined Nothing), "AssignmentId": (NullOrUndefined Nothing), "AssignmentStatus": (NullOrUndefined Nothing), "AutoApprovalTime": (NullOrUndefined Nothing), "Deadline": (NullOrUndefined Nothing), "HITId": (NullOrUndefined Nothing), "RejectionTime": (NullOrUndefined Nothing), "RequesterFeedback": (NullOrUndefined Nothing), "SubmitTime": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }

-- | Constructs Assignment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssignment' :: ( { "AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId) , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "HITId" :: NullOrUndefined.NullOrUndefined (EntityId) , "AssignmentStatus" :: NullOrUndefined.NullOrUndefined (AssignmentStatus) , "AutoApprovalTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "AcceptTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ApprovalTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "RejectionTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Deadline" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Answer" :: NullOrUndefined.NullOrUndefined (String) , "RequesterFeedback" :: NullOrUndefined.NullOrUndefined (String) } -> {"AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId) , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "HITId" :: NullOrUndefined.NullOrUndefined (EntityId) , "AssignmentStatus" :: NullOrUndefined.NullOrUndefined (AssignmentStatus) , "AutoApprovalTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "AcceptTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ApprovalTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "RejectionTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Deadline" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Answer" :: NullOrUndefined.NullOrUndefined (String) , "RequesterFeedback" :: NullOrUndefined.NullOrUndefined (String) } ) -> Assignment
newAssignment'  customize = (Assignment <<< customize) { "AcceptTime": (NullOrUndefined Nothing), "Answer": (NullOrUndefined Nothing), "ApprovalTime": (NullOrUndefined Nothing), "AssignmentId": (NullOrUndefined Nothing), "AssignmentStatus": (NullOrUndefined Nothing), "AutoApprovalTime": (NullOrUndefined Nothing), "Deadline": (NullOrUndefined Nothing), "HITId": (NullOrUndefined Nothing), "RejectionTime": (NullOrUndefined Nothing), "RequesterFeedback": (NullOrUndefined Nothing), "SubmitTime": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }



newtype AssignmentList = AssignmentList (Array Assignment)
derive instance newtypeAssignmentList :: Newtype AssignmentList _
derive instance repGenericAssignmentList :: Generic AssignmentList _
instance showAssignmentList :: Show AssignmentList where
  show = genericShow
instance decodeAssignmentList :: Decode AssignmentList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssignmentList :: Encode AssignmentList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AssignmentStatus = AssignmentStatus String
derive instance newtypeAssignmentStatus :: Newtype AssignmentStatus _
derive instance repGenericAssignmentStatus :: Generic AssignmentStatus _
instance showAssignmentStatus :: Show AssignmentStatus where
  show = genericShow
instance decodeAssignmentStatus :: Decode AssignmentStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssignmentStatus :: Encode AssignmentStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AssignmentStatusList = AssignmentStatusList (Array AssignmentStatus)
derive instance newtypeAssignmentStatusList :: Newtype AssignmentStatusList _
derive instance repGenericAssignmentStatusList :: Generic AssignmentStatusList _
instance showAssignmentStatusList :: Show AssignmentStatusList where
  show = genericShow
instance decodeAssignmentStatusList :: Decode AssignmentStatusList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssignmentStatusList :: Encode AssignmentStatusList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AssociateQualificationWithWorkerRequest = AssociateQualificationWithWorkerRequest 
  { "QualificationTypeId" :: (EntityId)
  , "WorkerId" :: (CustomerId)
  , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int)
  , "SendNotification" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeAssociateQualificationWithWorkerRequest :: Newtype AssociateQualificationWithWorkerRequest _
derive instance repGenericAssociateQualificationWithWorkerRequest :: Generic AssociateQualificationWithWorkerRequest _
instance showAssociateQualificationWithWorkerRequest :: Show AssociateQualificationWithWorkerRequest where
  show = genericShow
instance decodeAssociateQualificationWithWorkerRequest :: Decode AssociateQualificationWithWorkerRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssociateQualificationWithWorkerRequest :: Encode AssociateQualificationWithWorkerRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AssociateQualificationWithWorkerRequest from required parameters
newAssociateQualificationWithWorkerRequest :: EntityId -> CustomerId -> AssociateQualificationWithWorkerRequest
newAssociateQualificationWithWorkerRequest _QualificationTypeId _WorkerId = AssociateQualificationWithWorkerRequest { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId, "IntegerValue": (NullOrUndefined Nothing), "SendNotification": (NullOrUndefined Nothing) }

-- | Constructs AssociateQualificationWithWorkerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateQualificationWithWorkerRequest' :: EntityId -> CustomerId -> ( { "QualificationTypeId" :: (EntityId) , "WorkerId" :: (CustomerId) , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int) , "SendNotification" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"QualificationTypeId" :: (EntityId) , "WorkerId" :: (CustomerId) , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int) , "SendNotification" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> AssociateQualificationWithWorkerRequest
newAssociateQualificationWithWorkerRequest' _QualificationTypeId _WorkerId customize = (AssociateQualificationWithWorkerRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId, "IntegerValue": (NullOrUndefined Nothing), "SendNotification": (NullOrUndefined Nothing) }



newtype AssociateQualificationWithWorkerResponse = AssociateQualificationWithWorkerResponse Types.NoArguments
derive instance newtypeAssociateQualificationWithWorkerResponse :: Newtype AssociateQualificationWithWorkerResponse _
derive instance repGenericAssociateQualificationWithWorkerResponse :: Generic AssociateQualificationWithWorkerResponse _
instance showAssociateQualificationWithWorkerResponse :: Show AssociateQualificationWithWorkerResponse where
  show = genericShow
instance decodeAssociateQualificationWithWorkerResponse :: Decode AssociateQualificationWithWorkerResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssociateQualificationWithWorkerResponse :: Encode AssociateQualificationWithWorkerResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing a Bonus payment paid to a Worker.</p>
newtype BonusPayment = BonusPayment 
  { "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId)
  , "BonusAmount" :: NullOrUndefined.NullOrUndefined (CurrencyAmount)
  , "AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "Reason" :: NullOrUndefined.NullOrUndefined (String)
  , "GrantTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeBonusPayment :: Newtype BonusPayment _
derive instance repGenericBonusPayment :: Generic BonusPayment _
instance showBonusPayment :: Show BonusPayment where
  show = genericShow
instance decodeBonusPayment :: Decode BonusPayment where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBonusPayment :: Encode BonusPayment where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BonusPayment from required parameters
newBonusPayment :: BonusPayment
newBonusPayment  = BonusPayment { "AssignmentId": (NullOrUndefined Nothing), "BonusAmount": (NullOrUndefined Nothing), "GrantTime": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }

-- | Constructs BonusPayment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBonusPayment' :: ( { "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "BonusAmount" :: NullOrUndefined.NullOrUndefined (CurrencyAmount) , "AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId) , "Reason" :: NullOrUndefined.NullOrUndefined (String) , "GrantTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "BonusAmount" :: NullOrUndefined.NullOrUndefined (CurrencyAmount) , "AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId) , "Reason" :: NullOrUndefined.NullOrUndefined (String) , "GrantTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> BonusPayment
newBonusPayment'  customize = (BonusPayment <<< customize) { "AssignmentId": (NullOrUndefined Nothing), "BonusAmount": (NullOrUndefined Nothing), "GrantTime": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }



newtype BonusPaymentList = BonusPaymentList (Array BonusPayment)
derive instance newtypeBonusPaymentList :: Newtype BonusPaymentList _
derive instance repGenericBonusPaymentList :: Generic BonusPaymentList _
instance showBonusPaymentList :: Show BonusPaymentList where
  show = genericShow
instance decodeBonusPaymentList :: Decode BonusPaymentList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBonusPaymentList :: Encode BonusPaymentList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Comparator = Comparator String
derive instance newtypeComparator :: Newtype Comparator _
derive instance repGenericComparator :: Generic Comparator _
instance showComparator :: Show Comparator where
  show = genericShow
instance decodeComparator :: Decode Comparator where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComparator :: Encode Comparator where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CountryParameters = CountryParameters String
derive instance newtypeCountryParameters :: Newtype CountryParameters _
derive instance repGenericCountryParameters :: Generic CountryParameters _
instance showCountryParameters :: Show CountryParameters where
  show = genericShow
instance decodeCountryParameters :: Decode CountryParameters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCountryParameters :: Encode CountryParameters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAdditionalAssignmentsForHITRequest = CreateAdditionalAssignmentsForHITRequest 
  { "HITId" :: (EntityId)
  , "NumberOfAdditionalAssignments" :: (Int)
  , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken)
  }
derive instance newtypeCreateAdditionalAssignmentsForHITRequest :: Newtype CreateAdditionalAssignmentsForHITRequest _
derive instance repGenericCreateAdditionalAssignmentsForHITRequest :: Generic CreateAdditionalAssignmentsForHITRequest _
instance showCreateAdditionalAssignmentsForHITRequest :: Show CreateAdditionalAssignmentsForHITRequest where
  show = genericShow
instance decodeCreateAdditionalAssignmentsForHITRequest :: Decode CreateAdditionalAssignmentsForHITRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAdditionalAssignmentsForHITRequest :: Encode CreateAdditionalAssignmentsForHITRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAdditionalAssignmentsForHITRequest from required parameters
newCreateAdditionalAssignmentsForHITRequest :: EntityId -> Int -> CreateAdditionalAssignmentsForHITRequest
newCreateAdditionalAssignmentsForHITRequest _HITId _NumberOfAdditionalAssignments = CreateAdditionalAssignmentsForHITRequest { "HITId": _HITId, "NumberOfAdditionalAssignments": _NumberOfAdditionalAssignments, "UniqueRequestToken": (NullOrUndefined Nothing) }

-- | Constructs CreateAdditionalAssignmentsForHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAdditionalAssignmentsForHITRequest' :: EntityId -> Int -> ( { "HITId" :: (EntityId) , "NumberOfAdditionalAssignments" :: (Int) , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) } -> {"HITId" :: (EntityId) , "NumberOfAdditionalAssignments" :: (Int) , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) } ) -> CreateAdditionalAssignmentsForHITRequest
newCreateAdditionalAssignmentsForHITRequest' _HITId _NumberOfAdditionalAssignments customize = (CreateAdditionalAssignmentsForHITRequest <<< customize) { "HITId": _HITId, "NumberOfAdditionalAssignments": _NumberOfAdditionalAssignments, "UniqueRequestToken": (NullOrUndefined Nothing) }



newtype CreateAdditionalAssignmentsForHITResponse = CreateAdditionalAssignmentsForHITResponse Types.NoArguments
derive instance newtypeCreateAdditionalAssignmentsForHITResponse :: Newtype CreateAdditionalAssignmentsForHITResponse _
derive instance repGenericCreateAdditionalAssignmentsForHITResponse :: Generic CreateAdditionalAssignmentsForHITResponse _
instance showCreateAdditionalAssignmentsForHITResponse :: Show CreateAdditionalAssignmentsForHITResponse where
  show = genericShow
instance decodeCreateAdditionalAssignmentsForHITResponse :: Decode CreateAdditionalAssignmentsForHITResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAdditionalAssignmentsForHITResponse :: Encode CreateAdditionalAssignmentsForHITResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateHITRequest = CreateHITRequest 
  { "MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int)
  , "AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "LifetimeInSeconds" :: (Number)
  , "AssignmentDurationInSeconds" :: (Number)
  , "Reward" :: (CurrencyAmount)
  , "Title" :: (String)
  , "Keywords" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: (String)
  , "Question" :: NullOrUndefined.NullOrUndefined (String)
  , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String)
  , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList)
  , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken)
  , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy)
  , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy)
  , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "HITLayoutParameters" :: NullOrUndefined.NullOrUndefined (HITLayoutParameterList)
  }
derive instance newtypeCreateHITRequest :: Newtype CreateHITRequest _
derive instance repGenericCreateHITRequest :: Generic CreateHITRequest _
instance showCreateHITRequest :: Show CreateHITRequest where
  show = genericShow
instance decodeCreateHITRequest :: Decode CreateHITRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateHITRequest :: Encode CreateHITRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateHITRequest from required parameters
newCreateHITRequest :: Number -> String -> Number -> CurrencyAmount -> String -> CreateHITRequest
newCreateHITRequest _AssignmentDurationInSeconds _Description _LifetimeInSeconds _Reward _Title = CreateHITRequest { "AssignmentDurationInSeconds": _AssignmentDurationInSeconds, "Description": _Description, "LifetimeInSeconds": _LifetimeInSeconds, "Reward": _Reward, "Title": _Title, "AssignmentReviewPolicy": (NullOrUndefined Nothing), "AutoApprovalDelayInSeconds": (NullOrUndefined Nothing), "HITLayoutId": (NullOrUndefined Nothing), "HITLayoutParameters": (NullOrUndefined Nothing), "HITReviewPolicy": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "MaxAssignments": (NullOrUndefined Nothing), "QualificationRequirements": (NullOrUndefined Nothing), "Question": (NullOrUndefined Nothing), "RequesterAnnotation": (NullOrUndefined Nothing), "UniqueRequestToken": (NullOrUndefined Nothing) }

-- | Constructs CreateHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITRequest' :: Number -> String -> Number -> CurrencyAmount -> String -> ( { "MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int) , "AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "LifetimeInSeconds" :: (Number) , "AssignmentDurationInSeconds" :: (Number) , "Reward" :: (CurrencyAmount) , "Title" :: (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "Question" :: NullOrUndefined.NullOrUndefined (String) , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String) , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList) , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITLayoutParameters" :: NullOrUndefined.NullOrUndefined (HITLayoutParameterList) } -> {"MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int) , "AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "LifetimeInSeconds" :: (Number) , "AssignmentDurationInSeconds" :: (Number) , "Reward" :: (CurrencyAmount) , "Title" :: (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "Question" :: NullOrUndefined.NullOrUndefined (String) , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String) , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList) , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITLayoutParameters" :: NullOrUndefined.NullOrUndefined (HITLayoutParameterList) } ) -> CreateHITRequest
newCreateHITRequest' _AssignmentDurationInSeconds _Description _LifetimeInSeconds _Reward _Title customize = (CreateHITRequest <<< customize) { "AssignmentDurationInSeconds": _AssignmentDurationInSeconds, "Description": _Description, "LifetimeInSeconds": _LifetimeInSeconds, "Reward": _Reward, "Title": _Title, "AssignmentReviewPolicy": (NullOrUndefined Nothing), "AutoApprovalDelayInSeconds": (NullOrUndefined Nothing), "HITLayoutId": (NullOrUndefined Nothing), "HITLayoutParameters": (NullOrUndefined Nothing), "HITReviewPolicy": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "MaxAssignments": (NullOrUndefined Nothing), "QualificationRequirements": (NullOrUndefined Nothing), "Question": (NullOrUndefined Nothing), "RequesterAnnotation": (NullOrUndefined Nothing), "UniqueRequestToken": (NullOrUndefined Nothing) }



newtype CreateHITResponse = CreateHITResponse 
  { "HIT" :: NullOrUndefined.NullOrUndefined (HIT)
  }
derive instance newtypeCreateHITResponse :: Newtype CreateHITResponse _
derive instance repGenericCreateHITResponse :: Generic CreateHITResponse _
instance showCreateHITResponse :: Show CreateHITResponse where
  show = genericShow
instance decodeCreateHITResponse :: Decode CreateHITResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateHITResponse :: Encode CreateHITResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateHITResponse from required parameters
newCreateHITResponse :: CreateHITResponse
newCreateHITResponse  = CreateHITResponse { "HIT": (NullOrUndefined Nothing) }

-- | Constructs CreateHITResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITResponse' :: ( { "HIT" :: NullOrUndefined.NullOrUndefined (HIT) } -> {"HIT" :: NullOrUndefined.NullOrUndefined (HIT) } ) -> CreateHITResponse
newCreateHITResponse'  customize = (CreateHITResponse <<< customize) { "HIT": (NullOrUndefined Nothing) }



newtype CreateHITTypeRequest = CreateHITTypeRequest 
  { "AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "AssignmentDurationInSeconds" :: (Number)
  , "Reward" :: (CurrencyAmount)
  , "Title" :: (String)
  , "Keywords" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: (String)
  , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList)
  }
derive instance newtypeCreateHITTypeRequest :: Newtype CreateHITTypeRequest _
derive instance repGenericCreateHITTypeRequest :: Generic CreateHITTypeRequest _
instance showCreateHITTypeRequest :: Show CreateHITTypeRequest where
  show = genericShow
instance decodeCreateHITTypeRequest :: Decode CreateHITTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateHITTypeRequest :: Encode CreateHITTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateHITTypeRequest from required parameters
newCreateHITTypeRequest :: Number -> String -> CurrencyAmount -> String -> CreateHITTypeRequest
newCreateHITTypeRequest _AssignmentDurationInSeconds _Description _Reward _Title = CreateHITTypeRequest { "AssignmentDurationInSeconds": _AssignmentDurationInSeconds, "Description": _Description, "Reward": _Reward, "Title": _Title, "AutoApprovalDelayInSeconds": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "QualificationRequirements": (NullOrUndefined Nothing) }

-- | Constructs CreateHITTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITTypeRequest' :: Number -> String -> CurrencyAmount -> String -> ( { "AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "AssignmentDurationInSeconds" :: (Number) , "Reward" :: (CurrencyAmount) , "Title" :: (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList) } -> {"AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "AssignmentDurationInSeconds" :: (Number) , "Reward" :: (CurrencyAmount) , "Title" :: (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList) } ) -> CreateHITTypeRequest
newCreateHITTypeRequest' _AssignmentDurationInSeconds _Description _Reward _Title customize = (CreateHITTypeRequest <<< customize) { "AssignmentDurationInSeconds": _AssignmentDurationInSeconds, "Description": _Description, "Reward": _Reward, "Title": _Title, "AutoApprovalDelayInSeconds": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "QualificationRequirements": (NullOrUndefined Nothing) }



newtype CreateHITTypeResponse = CreateHITTypeResponse 
  { "HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId)
  }
derive instance newtypeCreateHITTypeResponse :: Newtype CreateHITTypeResponse _
derive instance repGenericCreateHITTypeResponse :: Generic CreateHITTypeResponse _
instance showCreateHITTypeResponse :: Show CreateHITTypeResponse where
  show = genericShow
instance decodeCreateHITTypeResponse :: Decode CreateHITTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateHITTypeResponse :: Encode CreateHITTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateHITTypeResponse from required parameters
newCreateHITTypeResponse :: CreateHITTypeResponse
newCreateHITTypeResponse  = CreateHITTypeResponse { "HITTypeId": (NullOrUndefined Nothing) }

-- | Constructs CreateHITTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITTypeResponse' :: ( { "HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) } -> {"HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) } ) -> CreateHITTypeResponse
newCreateHITTypeResponse'  customize = (CreateHITTypeResponse <<< customize) { "HITTypeId": (NullOrUndefined Nothing) }



newtype CreateHITWithHITTypeRequest = CreateHITWithHITTypeRequest 
  { "HITTypeId" :: (EntityId)
  , "MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int)
  , "LifetimeInSeconds" :: (Number)
  , "Question" :: NullOrUndefined.NullOrUndefined (String)
  , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String)
  , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken)
  , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy)
  , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy)
  , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "HITLayoutParameters" :: NullOrUndefined.NullOrUndefined (HITLayoutParameterList)
  }
derive instance newtypeCreateHITWithHITTypeRequest :: Newtype CreateHITWithHITTypeRequest _
derive instance repGenericCreateHITWithHITTypeRequest :: Generic CreateHITWithHITTypeRequest _
instance showCreateHITWithHITTypeRequest :: Show CreateHITWithHITTypeRequest where
  show = genericShow
instance decodeCreateHITWithHITTypeRequest :: Decode CreateHITWithHITTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateHITWithHITTypeRequest :: Encode CreateHITWithHITTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateHITWithHITTypeRequest from required parameters
newCreateHITWithHITTypeRequest :: EntityId -> Number -> CreateHITWithHITTypeRequest
newCreateHITWithHITTypeRequest _HITTypeId _LifetimeInSeconds = CreateHITWithHITTypeRequest { "HITTypeId": _HITTypeId, "LifetimeInSeconds": _LifetimeInSeconds, "AssignmentReviewPolicy": (NullOrUndefined Nothing), "HITLayoutId": (NullOrUndefined Nothing), "HITLayoutParameters": (NullOrUndefined Nothing), "HITReviewPolicy": (NullOrUndefined Nothing), "MaxAssignments": (NullOrUndefined Nothing), "Question": (NullOrUndefined Nothing), "RequesterAnnotation": (NullOrUndefined Nothing), "UniqueRequestToken": (NullOrUndefined Nothing) }

-- | Constructs CreateHITWithHITTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITWithHITTypeRequest' :: EntityId -> Number -> ( { "HITTypeId" :: (EntityId) , "MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int) , "LifetimeInSeconds" :: (Number) , "Question" :: NullOrUndefined.NullOrUndefined (String) , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String) , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITLayoutParameters" :: NullOrUndefined.NullOrUndefined (HITLayoutParameterList) } -> {"HITTypeId" :: (EntityId) , "MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int) , "LifetimeInSeconds" :: (Number) , "Question" :: NullOrUndefined.NullOrUndefined (String) , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String) , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITLayoutParameters" :: NullOrUndefined.NullOrUndefined (HITLayoutParameterList) } ) -> CreateHITWithHITTypeRequest
newCreateHITWithHITTypeRequest' _HITTypeId _LifetimeInSeconds customize = (CreateHITWithHITTypeRequest <<< customize) { "HITTypeId": _HITTypeId, "LifetimeInSeconds": _LifetimeInSeconds, "AssignmentReviewPolicy": (NullOrUndefined Nothing), "HITLayoutId": (NullOrUndefined Nothing), "HITLayoutParameters": (NullOrUndefined Nothing), "HITReviewPolicy": (NullOrUndefined Nothing), "MaxAssignments": (NullOrUndefined Nothing), "Question": (NullOrUndefined Nothing), "RequesterAnnotation": (NullOrUndefined Nothing), "UniqueRequestToken": (NullOrUndefined Nothing) }



newtype CreateHITWithHITTypeResponse = CreateHITWithHITTypeResponse 
  { "HIT" :: NullOrUndefined.NullOrUndefined (HIT)
  }
derive instance newtypeCreateHITWithHITTypeResponse :: Newtype CreateHITWithHITTypeResponse _
derive instance repGenericCreateHITWithHITTypeResponse :: Generic CreateHITWithHITTypeResponse _
instance showCreateHITWithHITTypeResponse :: Show CreateHITWithHITTypeResponse where
  show = genericShow
instance decodeCreateHITWithHITTypeResponse :: Decode CreateHITWithHITTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateHITWithHITTypeResponse :: Encode CreateHITWithHITTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateHITWithHITTypeResponse from required parameters
newCreateHITWithHITTypeResponse :: CreateHITWithHITTypeResponse
newCreateHITWithHITTypeResponse  = CreateHITWithHITTypeResponse { "HIT": (NullOrUndefined Nothing) }

-- | Constructs CreateHITWithHITTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHITWithHITTypeResponse' :: ( { "HIT" :: NullOrUndefined.NullOrUndefined (HIT) } -> {"HIT" :: NullOrUndefined.NullOrUndefined (HIT) } ) -> CreateHITWithHITTypeResponse
newCreateHITWithHITTypeResponse'  customize = (CreateHITWithHITTypeResponse <<< customize) { "HIT": (NullOrUndefined Nothing) }



newtype CreateQualificationTypeRequest = CreateQualificationTypeRequest 
  { "Name" :: (String)
  , "Keywords" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: (String)
  , "QualificationTypeStatus" :: (QualificationTypeStatus)
  , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "Test" :: NullOrUndefined.NullOrUndefined (String)
  , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String)
  , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeCreateQualificationTypeRequest :: Newtype CreateQualificationTypeRequest _
derive instance repGenericCreateQualificationTypeRequest :: Generic CreateQualificationTypeRequest _
instance showCreateQualificationTypeRequest :: Show CreateQualificationTypeRequest where
  show = genericShow
instance decodeCreateQualificationTypeRequest :: Decode CreateQualificationTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateQualificationTypeRequest :: Encode CreateQualificationTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateQualificationTypeRequest from required parameters
newCreateQualificationTypeRequest :: String -> String -> QualificationTypeStatus -> CreateQualificationTypeRequest
newCreateQualificationTypeRequest _Description _Name _QualificationTypeStatus = CreateQualificationTypeRequest { "Description": _Description, "Name": _Name, "QualificationTypeStatus": _QualificationTypeStatus, "AnswerKey": (NullOrUndefined Nothing), "AutoGranted": (NullOrUndefined Nothing), "AutoGrantedValue": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "RetryDelayInSeconds": (NullOrUndefined Nothing), "Test": (NullOrUndefined Nothing), "TestDurationInSeconds": (NullOrUndefined Nothing) }

-- | Constructs CreateQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQualificationTypeRequest' :: String -> String -> QualificationTypeStatus -> ( { "Name" :: (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "QualificationTypeStatus" :: (QualificationTypeStatus) , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "Test" :: NullOrUndefined.NullOrUndefined (String) , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String) , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int) } -> {"Name" :: (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "QualificationTypeStatus" :: (QualificationTypeStatus) , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "Test" :: NullOrUndefined.NullOrUndefined (String) , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String) , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int) } ) -> CreateQualificationTypeRequest
newCreateQualificationTypeRequest' _Description _Name _QualificationTypeStatus customize = (CreateQualificationTypeRequest <<< customize) { "Description": _Description, "Name": _Name, "QualificationTypeStatus": _QualificationTypeStatus, "AnswerKey": (NullOrUndefined Nothing), "AutoGranted": (NullOrUndefined Nothing), "AutoGrantedValue": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "RetryDelayInSeconds": (NullOrUndefined Nothing), "Test": (NullOrUndefined Nothing), "TestDurationInSeconds": (NullOrUndefined Nothing) }



newtype CreateQualificationTypeResponse = CreateQualificationTypeResponse 
  { "QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType)
  }
derive instance newtypeCreateQualificationTypeResponse :: Newtype CreateQualificationTypeResponse _
derive instance repGenericCreateQualificationTypeResponse :: Generic CreateQualificationTypeResponse _
instance showCreateQualificationTypeResponse :: Show CreateQualificationTypeResponse where
  show = genericShow
instance decodeCreateQualificationTypeResponse :: Decode CreateQualificationTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateQualificationTypeResponse :: Encode CreateQualificationTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateQualificationTypeResponse from required parameters
newCreateQualificationTypeResponse :: CreateQualificationTypeResponse
newCreateQualificationTypeResponse  = CreateQualificationTypeResponse { "QualificationType": (NullOrUndefined Nothing) }

-- | Constructs CreateQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQualificationTypeResponse' :: ( { "QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType) } -> {"QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType) } ) -> CreateQualificationTypeResponse
newCreateQualificationTypeResponse'  customize = (CreateQualificationTypeResponse <<< customize) { "QualificationType": (NullOrUndefined Nothing) }



newtype CreateWorkerBlockRequest = CreateWorkerBlockRequest 
  { "WorkerId" :: (CustomerId)
  , "Reason" :: (String)
  }
derive instance newtypeCreateWorkerBlockRequest :: Newtype CreateWorkerBlockRequest _
derive instance repGenericCreateWorkerBlockRequest :: Generic CreateWorkerBlockRequest _
instance showCreateWorkerBlockRequest :: Show CreateWorkerBlockRequest where
  show = genericShow
instance decodeCreateWorkerBlockRequest :: Decode CreateWorkerBlockRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateWorkerBlockRequest :: Encode CreateWorkerBlockRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showCreateWorkerBlockResponse :: Show CreateWorkerBlockResponse where
  show = genericShow
instance decodeCreateWorkerBlockResponse :: Decode CreateWorkerBlockResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateWorkerBlockResponse :: Encode CreateWorkerBlockResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A string representing a currency amount.</p>
newtype CurrencyAmount = CurrencyAmount String
derive instance newtypeCurrencyAmount :: Newtype CurrencyAmount _
derive instance repGenericCurrencyAmount :: Generic CurrencyAmount _
instance showCurrencyAmount :: Show CurrencyAmount where
  show = genericShow
instance decodeCurrencyAmount :: Decode CurrencyAmount where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCurrencyAmount :: Encode CurrencyAmount where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CustomerId = CustomerId String
derive instance newtypeCustomerId :: Newtype CustomerId _
derive instance repGenericCustomerId :: Generic CustomerId _
instance showCustomerId :: Show CustomerId where
  show = genericShow
instance decodeCustomerId :: Decode CustomerId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCustomerId :: Encode CustomerId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CustomerIdList = CustomerIdList (Array CustomerId)
derive instance newtypeCustomerIdList :: Newtype CustomerIdList _
derive instance repGenericCustomerIdList :: Generic CustomerIdList _
instance showCustomerIdList :: Show CustomerIdList where
  show = genericShow
instance decodeCustomerIdList :: Decode CustomerIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCustomerIdList :: Encode CustomerIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteHITRequest = DeleteHITRequest 
  { "HITId" :: (EntityId)
  }
derive instance newtypeDeleteHITRequest :: Newtype DeleteHITRequest _
derive instance repGenericDeleteHITRequest :: Generic DeleteHITRequest _
instance showDeleteHITRequest :: Show DeleteHITRequest where
  show = genericShow
instance decodeDeleteHITRequest :: Decode DeleteHITRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteHITRequest :: Encode DeleteHITRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeleteHITResponse :: Show DeleteHITResponse where
  show = genericShow
instance decodeDeleteHITResponse :: Decode DeleteHITResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteHITResponse :: Encode DeleteHITResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteQualificationTypeRequest = DeleteQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  }
derive instance newtypeDeleteQualificationTypeRequest :: Newtype DeleteQualificationTypeRequest _
derive instance repGenericDeleteQualificationTypeRequest :: Generic DeleteQualificationTypeRequest _
instance showDeleteQualificationTypeRequest :: Show DeleteQualificationTypeRequest where
  show = genericShow
instance decodeDeleteQualificationTypeRequest :: Decode DeleteQualificationTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteQualificationTypeRequest :: Encode DeleteQualificationTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeleteQualificationTypeResponse :: Show DeleteQualificationTypeResponse where
  show = genericShow
instance decodeDeleteQualificationTypeResponse :: Decode DeleteQualificationTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteQualificationTypeResponse :: Encode DeleteQualificationTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteWorkerBlockRequest = DeleteWorkerBlockRequest 
  { "WorkerId" :: (CustomerId)
  , "Reason" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDeleteWorkerBlockRequest :: Newtype DeleteWorkerBlockRequest _
derive instance repGenericDeleteWorkerBlockRequest :: Generic DeleteWorkerBlockRequest _
instance showDeleteWorkerBlockRequest :: Show DeleteWorkerBlockRequest where
  show = genericShow
instance decodeDeleteWorkerBlockRequest :: Decode DeleteWorkerBlockRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteWorkerBlockRequest :: Encode DeleteWorkerBlockRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteWorkerBlockRequest from required parameters
newDeleteWorkerBlockRequest :: CustomerId -> DeleteWorkerBlockRequest
newDeleteWorkerBlockRequest _WorkerId = DeleteWorkerBlockRequest { "WorkerId": _WorkerId, "Reason": (NullOrUndefined Nothing) }

-- | Constructs DeleteWorkerBlockRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteWorkerBlockRequest' :: CustomerId -> ( { "WorkerId" :: (CustomerId) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } -> {"WorkerId" :: (CustomerId) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } ) -> DeleteWorkerBlockRequest
newDeleteWorkerBlockRequest' _WorkerId customize = (DeleteWorkerBlockRequest <<< customize) { "WorkerId": _WorkerId, "Reason": (NullOrUndefined Nothing) }



newtype DeleteWorkerBlockResponse = DeleteWorkerBlockResponse Types.NoArguments
derive instance newtypeDeleteWorkerBlockResponse :: Newtype DeleteWorkerBlockResponse _
derive instance repGenericDeleteWorkerBlockResponse :: Generic DeleteWorkerBlockResponse _
instance showDeleteWorkerBlockResponse :: Show DeleteWorkerBlockResponse where
  show = genericShow
instance decodeDeleteWorkerBlockResponse :: Decode DeleteWorkerBlockResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteWorkerBlockResponse :: Encode DeleteWorkerBlockResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DisassociateQualificationFromWorkerRequest = DisassociateQualificationFromWorkerRequest 
  { "WorkerId" :: (CustomerId)
  , "QualificationTypeId" :: (EntityId)
  , "Reason" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDisassociateQualificationFromWorkerRequest :: Newtype DisassociateQualificationFromWorkerRequest _
derive instance repGenericDisassociateQualificationFromWorkerRequest :: Generic DisassociateQualificationFromWorkerRequest _
instance showDisassociateQualificationFromWorkerRequest :: Show DisassociateQualificationFromWorkerRequest where
  show = genericShow
instance decodeDisassociateQualificationFromWorkerRequest :: Decode DisassociateQualificationFromWorkerRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisassociateQualificationFromWorkerRequest :: Encode DisassociateQualificationFromWorkerRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DisassociateQualificationFromWorkerRequest from required parameters
newDisassociateQualificationFromWorkerRequest :: EntityId -> CustomerId -> DisassociateQualificationFromWorkerRequest
newDisassociateQualificationFromWorkerRequest _QualificationTypeId _WorkerId = DisassociateQualificationFromWorkerRequest { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId, "Reason": (NullOrUndefined Nothing) }

-- | Constructs DisassociateQualificationFromWorkerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateQualificationFromWorkerRequest' :: EntityId -> CustomerId -> ( { "WorkerId" :: (CustomerId) , "QualificationTypeId" :: (EntityId) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } -> {"WorkerId" :: (CustomerId) , "QualificationTypeId" :: (EntityId) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } ) -> DisassociateQualificationFromWorkerRequest
newDisassociateQualificationFromWorkerRequest' _QualificationTypeId _WorkerId customize = (DisassociateQualificationFromWorkerRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId, "Reason": (NullOrUndefined Nothing) }



newtype DisassociateQualificationFromWorkerResponse = DisassociateQualificationFromWorkerResponse Types.NoArguments
derive instance newtypeDisassociateQualificationFromWorkerResponse :: Newtype DisassociateQualificationFromWorkerResponse _
derive instance repGenericDisassociateQualificationFromWorkerResponse :: Generic DisassociateQualificationFromWorkerResponse _
instance showDisassociateQualificationFromWorkerResponse :: Show DisassociateQualificationFromWorkerResponse where
  show = genericShow
instance decodeDisassociateQualificationFromWorkerResponse :: Decode DisassociateQualificationFromWorkerResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisassociateQualificationFromWorkerResponse :: Encode DisassociateQualificationFromWorkerResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EntityId = EntityId String
derive instance newtypeEntityId :: Newtype EntityId _
derive instance repGenericEntityId :: Generic EntityId _
instance showEntityId :: Show EntityId where
  show = genericShow
instance decodeEntityId :: Decode EntityId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntityId :: Encode EntityId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EventType = EventType String
derive instance newtypeEventType :: Newtype EventType _
derive instance repGenericEventType :: Generic EventType _
instance showEventType :: Show EventType where
  show = genericShow
instance decodeEventType :: Decode EventType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEventType :: Encode EventType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EventTypeList = EventTypeList (Array EventType)
derive instance newtypeEventTypeList :: Newtype EventTypeList _
derive instance repGenericEventTypeList :: Generic EventTypeList _
instance showEventTypeList :: Show EventTypeList where
  show = genericShow
instance decodeEventTypeList :: Decode EventTypeList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEventTypeList :: Encode EventTypeList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where
  show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExceptionMessage :: Encode ExceptionMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetAccountBalanceRequest = GetAccountBalanceRequest Types.NoArguments
derive instance newtypeGetAccountBalanceRequest :: Newtype GetAccountBalanceRequest _
derive instance repGenericGetAccountBalanceRequest :: Generic GetAccountBalanceRequest _
instance showGetAccountBalanceRequest :: Show GetAccountBalanceRequest where
  show = genericShow
instance decodeGetAccountBalanceRequest :: Decode GetAccountBalanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAccountBalanceRequest :: Encode GetAccountBalanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetAccountBalanceResponse = GetAccountBalanceResponse 
  { "AvailableBalance" :: NullOrUndefined.NullOrUndefined (CurrencyAmount)
  , "OnHoldBalance" :: NullOrUndefined.NullOrUndefined (CurrencyAmount)
  }
derive instance newtypeGetAccountBalanceResponse :: Newtype GetAccountBalanceResponse _
derive instance repGenericGetAccountBalanceResponse :: Generic GetAccountBalanceResponse _
instance showGetAccountBalanceResponse :: Show GetAccountBalanceResponse where
  show = genericShow
instance decodeGetAccountBalanceResponse :: Decode GetAccountBalanceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAccountBalanceResponse :: Encode GetAccountBalanceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAccountBalanceResponse from required parameters
newGetAccountBalanceResponse :: GetAccountBalanceResponse
newGetAccountBalanceResponse  = GetAccountBalanceResponse { "AvailableBalance": (NullOrUndefined Nothing), "OnHoldBalance": (NullOrUndefined Nothing) }

-- | Constructs GetAccountBalanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountBalanceResponse' :: ( { "AvailableBalance" :: NullOrUndefined.NullOrUndefined (CurrencyAmount) , "OnHoldBalance" :: NullOrUndefined.NullOrUndefined (CurrencyAmount) } -> {"AvailableBalance" :: NullOrUndefined.NullOrUndefined (CurrencyAmount) , "OnHoldBalance" :: NullOrUndefined.NullOrUndefined (CurrencyAmount) } ) -> GetAccountBalanceResponse
newGetAccountBalanceResponse'  customize = (GetAccountBalanceResponse <<< customize) { "AvailableBalance": (NullOrUndefined Nothing), "OnHoldBalance": (NullOrUndefined Nothing) }



newtype GetAssignmentRequest = GetAssignmentRequest 
  { "AssignmentId" :: (EntityId)
  }
derive instance newtypeGetAssignmentRequest :: Newtype GetAssignmentRequest _
derive instance repGenericGetAssignmentRequest :: Generic GetAssignmentRequest _
instance showGetAssignmentRequest :: Show GetAssignmentRequest where
  show = genericShow
instance decodeGetAssignmentRequest :: Decode GetAssignmentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAssignmentRequest :: Encode GetAssignmentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAssignmentRequest from required parameters
newGetAssignmentRequest :: EntityId -> GetAssignmentRequest
newGetAssignmentRequest _AssignmentId = GetAssignmentRequest { "AssignmentId": _AssignmentId }

-- | Constructs GetAssignmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAssignmentRequest' :: EntityId -> ( { "AssignmentId" :: (EntityId) } -> {"AssignmentId" :: (EntityId) } ) -> GetAssignmentRequest
newGetAssignmentRequest' _AssignmentId customize = (GetAssignmentRequest <<< customize) { "AssignmentId": _AssignmentId }



newtype GetAssignmentResponse = GetAssignmentResponse 
  { "Assignment" :: NullOrUndefined.NullOrUndefined (Assignment)
  , "HIT" :: NullOrUndefined.NullOrUndefined (HIT)
  }
derive instance newtypeGetAssignmentResponse :: Newtype GetAssignmentResponse _
derive instance repGenericGetAssignmentResponse :: Generic GetAssignmentResponse _
instance showGetAssignmentResponse :: Show GetAssignmentResponse where
  show = genericShow
instance decodeGetAssignmentResponse :: Decode GetAssignmentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAssignmentResponse :: Encode GetAssignmentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAssignmentResponse from required parameters
newGetAssignmentResponse :: GetAssignmentResponse
newGetAssignmentResponse  = GetAssignmentResponse { "Assignment": (NullOrUndefined Nothing), "HIT": (NullOrUndefined Nothing) }

-- | Constructs GetAssignmentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAssignmentResponse' :: ( { "Assignment" :: NullOrUndefined.NullOrUndefined (Assignment) , "HIT" :: NullOrUndefined.NullOrUndefined (HIT) } -> {"Assignment" :: NullOrUndefined.NullOrUndefined (Assignment) , "HIT" :: NullOrUndefined.NullOrUndefined (HIT) } ) -> GetAssignmentResponse
newGetAssignmentResponse'  customize = (GetAssignmentResponse <<< customize) { "Assignment": (NullOrUndefined Nothing), "HIT": (NullOrUndefined Nothing) }



newtype GetFileUploadURLRequest = GetFileUploadURLRequest 
  { "AssignmentId" :: (EntityId)
  , "QuestionIdentifier" :: (String)
  }
derive instance newtypeGetFileUploadURLRequest :: Newtype GetFileUploadURLRequest _
derive instance repGenericGetFileUploadURLRequest :: Generic GetFileUploadURLRequest _
instance showGetFileUploadURLRequest :: Show GetFileUploadURLRequest where
  show = genericShow
instance decodeGetFileUploadURLRequest :: Decode GetFileUploadURLRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetFileUploadURLRequest :: Encode GetFileUploadURLRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetFileUploadURLRequest from required parameters
newGetFileUploadURLRequest :: EntityId -> String -> GetFileUploadURLRequest
newGetFileUploadURLRequest _AssignmentId _QuestionIdentifier = GetFileUploadURLRequest { "AssignmentId": _AssignmentId, "QuestionIdentifier": _QuestionIdentifier }

-- | Constructs GetFileUploadURLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFileUploadURLRequest' :: EntityId -> String -> ( { "AssignmentId" :: (EntityId) , "QuestionIdentifier" :: (String) } -> {"AssignmentId" :: (EntityId) , "QuestionIdentifier" :: (String) } ) -> GetFileUploadURLRequest
newGetFileUploadURLRequest' _AssignmentId _QuestionIdentifier customize = (GetFileUploadURLRequest <<< customize) { "AssignmentId": _AssignmentId, "QuestionIdentifier": _QuestionIdentifier }



newtype GetFileUploadURLResponse = GetFileUploadURLResponse 
  { "FileUploadURL" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeGetFileUploadURLResponse :: Newtype GetFileUploadURLResponse _
derive instance repGenericGetFileUploadURLResponse :: Generic GetFileUploadURLResponse _
instance showGetFileUploadURLResponse :: Show GetFileUploadURLResponse where
  show = genericShow
instance decodeGetFileUploadURLResponse :: Decode GetFileUploadURLResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetFileUploadURLResponse :: Encode GetFileUploadURLResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetFileUploadURLResponse from required parameters
newGetFileUploadURLResponse :: GetFileUploadURLResponse
newGetFileUploadURLResponse  = GetFileUploadURLResponse { "FileUploadURL": (NullOrUndefined Nothing) }

-- | Constructs GetFileUploadURLResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFileUploadURLResponse' :: ( { "FileUploadURL" :: NullOrUndefined.NullOrUndefined (String) } -> {"FileUploadURL" :: NullOrUndefined.NullOrUndefined (String) } ) -> GetFileUploadURLResponse
newGetFileUploadURLResponse'  customize = (GetFileUploadURLResponse <<< customize) { "FileUploadURL": (NullOrUndefined Nothing) }



newtype GetHITRequest = GetHITRequest 
  { "HITId" :: (EntityId)
  }
derive instance newtypeGetHITRequest :: Newtype GetHITRequest _
derive instance repGenericGetHITRequest :: Generic GetHITRequest _
instance showGetHITRequest :: Show GetHITRequest where
  show = genericShow
instance decodeGetHITRequest :: Decode GetHITRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetHITRequest :: Encode GetHITRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetHITRequest from required parameters
newGetHITRequest :: EntityId -> GetHITRequest
newGetHITRequest _HITId = GetHITRequest { "HITId": _HITId }

-- | Constructs GetHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHITRequest' :: EntityId -> ( { "HITId" :: (EntityId) } -> {"HITId" :: (EntityId) } ) -> GetHITRequest
newGetHITRequest' _HITId customize = (GetHITRequest <<< customize) { "HITId": _HITId }



newtype GetHITResponse = GetHITResponse 
  { "HIT" :: NullOrUndefined.NullOrUndefined (HIT)
  }
derive instance newtypeGetHITResponse :: Newtype GetHITResponse _
derive instance repGenericGetHITResponse :: Generic GetHITResponse _
instance showGetHITResponse :: Show GetHITResponse where
  show = genericShow
instance decodeGetHITResponse :: Decode GetHITResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetHITResponse :: Encode GetHITResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetHITResponse from required parameters
newGetHITResponse :: GetHITResponse
newGetHITResponse  = GetHITResponse { "HIT": (NullOrUndefined Nothing) }

-- | Constructs GetHITResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHITResponse' :: ( { "HIT" :: NullOrUndefined.NullOrUndefined (HIT) } -> {"HIT" :: NullOrUndefined.NullOrUndefined (HIT) } ) -> GetHITResponse
newGetHITResponse'  customize = (GetHITResponse <<< customize) { "HIT": (NullOrUndefined Nothing) }



newtype GetQualificationScoreRequest = GetQualificationScoreRequest 
  { "QualificationTypeId" :: (EntityId)
  , "WorkerId" :: (CustomerId)
  }
derive instance newtypeGetQualificationScoreRequest :: Newtype GetQualificationScoreRequest _
derive instance repGenericGetQualificationScoreRequest :: Generic GetQualificationScoreRequest _
instance showGetQualificationScoreRequest :: Show GetQualificationScoreRequest where
  show = genericShow
instance decodeGetQualificationScoreRequest :: Decode GetQualificationScoreRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetQualificationScoreRequest :: Encode GetQualificationScoreRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetQualificationScoreRequest from required parameters
newGetQualificationScoreRequest :: EntityId -> CustomerId -> GetQualificationScoreRequest
newGetQualificationScoreRequest _QualificationTypeId _WorkerId = GetQualificationScoreRequest { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId }

-- | Constructs GetQualificationScoreRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQualificationScoreRequest' :: EntityId -> CustomerId -> ( { "QualificationTypeId" :: (EntityId) , "WorkerId" :: (CustomerId) } -> {"QualificationTypeId" :: (EntityId) , "WorkerId" :: (CustomerId) } ) -> GetQualificationScoreRequest
newGetQualificationScoreRequest' _QualificationTypeId _WorkerId customize = (GetQualificationScoreRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "WorkerId": _WorkerId }



newtype GetQualificationScoreResponse = GetQualificationScoreResponse 
  { "Qualification" :: NullOrUndefined.NullOrUndefined (Qualification)
  }
derive instance newtypeGetQualificationScoreResponse :: Newtype GetQualificationScoreResponse _
derive instance repGenericGetQualificationScoreResponse :: Generic GetQualificationScoreResponse _
instance showGetQualificationScoreResponse :: Show GetQualificationScoreResponse where
  show = genericShow
instance decodeGetQualificationScoreResponse :: Decode GetQualificationScoreResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetQualificationScoreResponse :: Encode GetQualificationScoreResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetQualificationScoreResponse from required parameters
newGetQualificationScoreResponse :: GetQualificationScoreResponse
newGetQualificationScoreResponse  = GetQualificationScoreResponse { "Qualification": (NullOrUndefined Nothing) }

-- | Constructs GetQualificationScoreResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQualificationScoreResponse' :: ( { "Qualification" :: NullOrUndefined.NullOrUndefined (Qualification) } -> {"Qualification" :: NullOrUndefined.NullOrUndefined (Qualification) } ) -> GetQualificationScoreResponse
newGetQualificationScoreResponse'  customize = (GetQualificationScoreResponse <<< customize) { "Qualification": (NullOrUndefined Nothing) }



newtype GetQualificationTypeRequest = GetQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  }
derive instance newtypeGetQualificationTypeRequest :: Newtype GetQualificationTypeRequest _
derive instance repGenericGetQualificationTypeRequest :: Generic GetQualificationTypeRequest _
instance showGetQualificationTypeRequest :: Show GetQualificationTypeRequest where
  show = genericShow
instance decodeGetQualificationTypeRequest :: Decode GetQualificationTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetQualificationTypeRequest :: Encode GetQualificationTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetQualificationTypeRequest from required parameters
newGetQualificationTypeRequest :: EntityId -> GetQualificationTypeRequest
newGetQualificationTypeRequest _QualificationTypeId = GetQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId }

-- | Constructs GetQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) } -> {"QualificationTypeId" :: (EntityId) } ) -> GetQualificationTypeRequest
newGetQualificationTypeRequest' _QualificationTypeId customize = (GetQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId }



newtype GetQualificationTypeResponse = GetQualificationTypeResponse 
  { "QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType)
  }
derive instance newtypeGetQualificationTypeResponse :: Newtype GetQualificationTypeResponse _
derive instance repGenericGetQualificationTypeResponse :: Generic GetQualificationTypeResponse _
instance showGetQualificationTypeResponse :: Show GetQualificationTypeResponse where
  show = genericShow
instance decodeGetQualificationTypeResponse :: Decode GetQualificationTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetQualificationTypeResponse :: Encode GetQualificationTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetQualificationTypeResponse from required parameters
newGetQualificationTypeResponse :: GetQualificationTypeResponse
newGetQualificationTypeResponse  = GetQualificationTypeResponse { "QualificationType": (NullOrUndefined Nothing) }

-- | Constructs GetQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQualificationTypeResponse' :: ( { "QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType) } -> {"QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType) } ) -> GetQualificationTypeResponse
newGetQualificationTypeResponse'  customize = (GetQualificationTypeResponse <<< customize) { "QualificationType": (NullOrUndefined Nothing) }



-- | <p> The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.</p>
newtype HIT = HIT 
  { "HITId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "HITGroupId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Title" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "Question" :: NullOrUndefined.NullOrUndefined (String)
  , "Keywords" :: NullOrUndefined.NullOrUndefined (String)
  , "HITStatus" :: NullOrUndefined.NullOrUndefined (HITStatus)
  , "MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int)
  , "Reward" :: NullOrUndefined.NullOrUndefined (CurrencyAmount)
  , "AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "Expiration" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "AssignmentDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String)
  , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList)
  , "HITReviewStatus" :: NullOrUndefined.NullOrUndefined (HITReviewStatus)
  , "NumberOfAssignmentsPending" :: NullOrUndefined.NullOrUndefined (Int)
  , "NumberOfAssignmentsAvailable" :: NullOrUndefined.NullOrUndefined (Int)
  , "NumberOfAssignmentsCompleted" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeHIT :: Newtype HIT _
derive instance repGenericHIT :: Generic HIT _
instance showHIT :: Show HIT where
  show = genericShow
instance decodeHIT :: Decode HIT where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHIT :: Encode HIT where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HIT from required parameters
newHIT :: HIT
newHIT  = HIT { "AssignmentDurationInSeconds": (NullOrUndefined Nothing), "AutoApprovalDelayInSeconds": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Expiration": (NullOrUndefined Nothing), "HITGroupId": (NullOrUndefined Nothing), "HITId": (NullOrUndefined Nothing), "HITLayoutId": (NullOrUndefined Nothing), "HITReviewStatus": (NullOrUndefined Nothing), "HITStatus": (NullOrUndefined Nothing), "HITTypeId": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "MaxAssignments": (NullOrUndefined Nothing), "NumberOfAssignmentsAvailable": (NullOrUndefined Nothing), "NumberOfAssignmentsCompleted": (NullOrUndefined Nothing), "NumberOfAssignmentsPending": (NullOrUndefined Nothing), "QualificationRequirements": (NullOrUndefined Nothing), "Question": (NullOrUndefined Nothing), "RequesterAnnotation": (NullOrUndefined Nothing), "Reward": (NullOrUndefined Nothing), "Title": (NullOrUndefined Nothing) }

-- | Constructs HIT's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHIT' :: ( { "HITId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITGroupId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId) , "CreationTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Title" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "Question" :: NullOrUndefined.NullOrUndefined (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "HITStatus" :: NullOrUndefined.NullOrUndefined (HITStatus) , "MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int) , "Reward" :: NullOrUndefined.NullOrUndefined (CurrencyAmount) , "AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "Expiration" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "AssignmentDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String) , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList) , "HITReviewStatus" :: NullOrUndefined.NullOrUndefined (HITReviewStatus) , "NumberOfAssignmentsPending" :: NullOrUndefined.NullOrUndefined (Int) , "NumberOfAssignmentsAvailable" :: NullOrUndefined.NullOrUndefined (Int) , "NumberOfAssignmentsCompleted" :: NullOrUndefined.NullOrUndefined (Int) } -> {"HITId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITGroupId" :: NullOrUndefined.NullOrUndefined (EntityId) , "HITLayoutId" :: NullOrUndefined.NullOrUndefined (EntityId) , "CreationTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Title" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "Question" :: NullOrUndefined.NullOrUndefined (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "HITStatus" :: NullOrUndefined.NullOrUndefined (HITStatus) , "MaxAssignments" :: NullOrUndefined.NullOrUndefined (Int) , "Reward" :: NullOrUndefined.NullOrUndefined (CurrencyAmount) , "AutoApprovalDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "Expiration" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "AssignmentDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "RequesterAnnotation" :: NullOrUndefined.NullOrUndefined (String) , "QualificationRequirements" :: NullOrUndefined.NullOrUndefined (QualificationRequirementList) , "HITReviewStatus" :: NullOrUndefined.NullOrUndefined (HITReviewStatus) , "NumberOfAssignmentsPending" :: NullOrUndefined.NullOrUndefined (Int) , "NumberOfAssignmentsAvailable" :: NullOrUndefined.NullOrUndefined (Int) , "NumberOfAssignmentsCompleted" :: NullOrUndefined.NullOrUndefined (Int) } ) -> HIT
newHIT'  customize = (HIT <<< customize) { "AssignmentDurationInSeconds": (NullOrUndefined Nothing), "AutoApprovalDelayInSeconds": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Expiration": (NullOrUndefined Nothing), "HITGroupId": (NullOrUndefined Nothing), "HITId": (NullOrUndefined Nothing), "HITLayoutId": (NullOrUndefined Nothing), "HITReviewStatus": (NullOrUndefined Nothing), "HITStatus": (NullOrUndefined Nothing), "HITTypeId": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "MaxAssignments": (NullOrUndefined Nothing), "NumberOfAssignmentsAvailable": (NullOrUndefined Nothing), "NumberOfAssignmentsCompleted": (NullOrUndefined Nothing), "NumberOfAssignmentsPending": (NullOrUndefined Nothing), "QualificationRequirements": (NullOrUndefined Nothing), "Question": (NullOrUndefined Nothing), "RequesterAnnotation": (NullOrUndefined Nothing), "Reward": (NullOrUndefined Nothing), "Title": (NullOrUndefined Nothing) }



-- | <p> The HITLayoutParameter data structure defines parameter values used with a HITLayout. A HITLayout is a reusable Amazon Mechanical Turk project template used to provide Human Intelligence Task (HIT) question data for CreateHIT. </p>
newtype HITLayoutParameter = HITLayoutParameter 
  { "Name" :: (String)
  , "Value" :: (String)
  }
derive instance newtypeHITLayoutParameter :: Newtype HITLayoutParameter _
derive instance repGenericHITLayoutParameter :: Generic HITLayoutParameter _
instance showHITLayoutParameter :: Show HITLayoutParameter where
  show = genericShow
instance decodeHITLayoutParameter :: Decode HITLayoutParameter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHITLayoutParameter :: Encode HITLayoutParameter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showHITLayoutParameterList :: Show HITLayoutParameterList where
  show = genericShow
instance decodeHITLayoutParameterList :: Decode HITLayoutParameterList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHITLayoutParameterList :: Encode HITLayoutParameterList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HITList = HITList (Array HIT)
derive instance newtypeHITList :: Newtype HITList _
derive instance repGenericHITList :: Generic HITList _
instance showHITList :: Show HITList where
  show = genericShow
instance decodeHITList :: Decode HITList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHITList :: Encode HITList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HITReviewStatus = HITReviewStatus String
derive instance newtypeHITReviewStatus :: Newtype HITReviewStatus _
derive instance repGenericHITReviewStatus :: Generic HITReviewStatus _
instance showHITReviewStatus :: Show HITReviewStatus where
  show = genericShow
instance decodeHITReviewStatus :: Decode HITReviewStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHITReviewStatus :: Encode HITReviewStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HITStatus = HITStatus String
derive instance newtypeHITStatus :: Newtype HITStatus _
derive instance repGenericHITStatus :: Generic HITStatus _
instance showHITStatus :: Show HITStatus where
  show = genericShow
instance decodeHITStatus :: Decode HITStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHITStatus :: Encode HITStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype IdempotencyToken = IdempotencyToken String
derive instance newtypeIdempotencyToken :: Newtype IdempotencyToken _
derive instance repGenericIdempotencyToken :: Generic IdempotencyToken _
instance showIdempotencyToken :: Show IdempotencyToken where
  show = genericShow
instance decodeIdempotencyToken :: Decode IdempotencyToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIdempotencyToken :: Encode IdempotencyToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype IntegerList = IntegerList (Array Int)
derive instance newtypeIntegerList :: Newtype IntegerList _
derive instance repGenericIntegerList :: Generic IntegerList _
instance showIntegerList :: Show IntegerList where
  show = genericShow
instance decodeIntegerList :: Decode IntegerList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIntegerList :: Encode IntegerList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListAssignmentsForHITRequest = ListAssignmentsForHITRequest 
  { "HITId" :: (EntityId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  , "AssignmentStatuses" :: NullOrUndefined.NullOrUndefined (AssignmentStatusList)
  }
derive instance newtypeListAssignmentsForHITRequest :: Newtype ListAssignmentsForHITRequest _
derive instance repGenericListAssignmentsForHITRequest :: Generic ListAssignmentsForHITRequest _
instance showListAssignmentsForHITRequest :: Show ListAssignmentsForHITRequest where
  show = genericShow
instance decodeListAssignmentsForHITRequest :: Decode ListAssignmentsForHITRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAssignmentsForHITRequest :: Encode ListAssignmentsForHITRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAssignmentsForHITRequest from required parameters
newListAssignmentsForHITRequest :: EntityId -> ListAssignmentsForHITRequest
newListAssignmentsForHITRequest _HITId = ListAssignmentsForHITRequest { "HITId": _HITId, "AssignmentStatuses": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAssignmentsForHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssignmentsForHITRequest' :: EntityId -> ( { "HITId" :: (EntityId) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) , "AssignmentStatuses" :: NullOrUndefined.NullOrUndefined (AssignmentStatusList) } -> {"HITId" :: (EntityId) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) , "AssignmentStatuses" :: NullOrUndefined.NullOrUndefined (AssignmentStatusList) } ) -> ListAssignmentsForHITRequest
newListAssignmentsForHITRequest' _HITId customize = (ListAssignmentsForHITRequest <<< customize) { "HITId": _HITId, "AssignmentStatuses": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListAssignmentsForHITResponse = ListAssignmentsForHITResponse 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "Assignments" :: NullOrUndefined.NullOrUndefined (AssignmentList)
  }
derive instance newtypeListAssignmentsForHITResponse :: Newtype ListAssignmentsForHITResponse _
derive instance repGenericListAssignmentsForHITResponse :: Generic ListAssignmentsForHITResponse _
instance showListAssignmentsForHITResponse :: Show ListAssignmentsForHITResponse where
  show = genericShow
instance decodeListAssignmentsForHITResponse :: Decode ListAssignmentsForHITResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAssignmentsForHITResponse :: Encode ListAssignmentsForHITResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAssignmentsForHITResponse from required parameters
newListAssignmentsForHITResponse :: ListAssignmentsForHITResponse
newListAssignmentsForHITResponse  = ListAssignmentsForHITResponse { "Assignments": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }

-- | Constructs ListAssignmentsForHITResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssignmentsForHITResponse' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "Assignments" :: NullOrUndefined.NullOrUndefined (AssignmentList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "Assignments" :: NullOrUndefined.NullOrUndefined (AssignmentList) } ) -> ListAssignmentsForHITResponse
newListAssignmentsForHITResponse'  customize = (ListAssignmentsForHITResponse <<< customize) { "Assignments": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }



newtype ListBonusPaymentsRequest = ListBonusPaymentsRequest 
  { "HITId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListBonusPaymentsRequest :: Newtype ListBonusPaymentsRequest _
derive instance repGenericListBonusPaymentsRequest :: Generic ListBonusPaymentsRequest _
instance showListBonusPaymentsRequest :: Show ListBonusPaymentsRequest where
  show = genericShow
instance decodeListBonusPaymentsRequest :: Decode ListBonusPaymentsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListBonusPaymentsRequest :: Encode ListBonusPaymentsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListBonusPaymentsRequest from required parameters
newListBonusPaymentsRequest :: ListBonusPaymentsRequest
newListBonusPaymentsRequest  = ListBonusPaymentsRequest { "AssignmentId": (NullOrUndefined Nothing), "HITId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListBonusPaymentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBonusPaymentsRequest' :: ( { "HITId" :: NullOrUndefined.NullOrUndefined (EntityId) , "AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"HITId" :: NullOrUndefined.NullOrUndefined (EntityId) , "AssignmentId" :: NullOrUndefined.NullOrUndefined (EntityId) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListBonusPaymentsRequest
newListBonusPaymentsRequest'  customize = (ListBonusPaymentsRequest <<< customize) { "AssignmentId": (NullOrUndefined Nothing), "HITId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListBonusPaymentsResponse = ListBonusPaymentsResponse 
  { "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "BonusPayments" :: NullOrUndefined.NullOrUndefined (BonusPaymentList)
  }
derive instance newtypeListBonusPaymentsResponse :: Newtype ListBonusPaymentsResponse _
derive instance repGenericListBonusPaymentsResponse :: Generic ListBonusPaymentsResponse _
instance showListBonusPaymentsResponse :: Show ListBonusPaymentsResponse where
  show = genericShow
instance decodeListBonusPaymentsResponse :: Decode ListBonusPaymentsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListBonusPaymentsResponse :: Encode ListBonusPaymentsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListBonusPaymentsResponse from required parameters
newListBonusPaymentsResponse :: ListBonusPaymentsResponse
newListBonusPaymentsResponse  = ListBonusPaymentsResponse { "BonusPayments": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }

-- | Constructs ListBonusPaymentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBonusPaymentsResponse' :: ( { "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "BonusPayments" :: NullOrUndefined.NullOrUndefined (BonusPaymentList) } -> {"NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "BonusPayments" :: NullOrUndefined.NullOrUndefined (BonusPaymentList) } ) -> ListBonusPaymentsResponse
newListBonusPaymentsResponse'  customize = (ListBonusPaymentsResponse <<< customize) { "BonusPayments": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }



newtype ListHITsForQualificationTypeRequest = ListHITsForQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListHITsForQualificationTypeRequest :: Newtype ListHITsForQualificationTypeRequest _
derive instance repGenericListHITsForQualificationTypeRequest :: Generic ListHITsForQualificationTypeRequest _
instance showListHITsForQualificationTypeRequest :: Show ListHITsForQualificationTypeRequest where
  show = genericShow
instance decodeListHITsForQualificationTypeRequest :: Decode ListHITsForQualificationTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListHITsForQualificationTypeRequest :: Encode ListHITsForQualificationTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListHITsForQualificationTypeRequest from required parameters
newListHITsForQualificationTypeRequest :: EntityId -> ListHITsForQualificationTypeRequest
newListHITsForQualificationTypeRequest _QualificationTypeId = ListHITsForQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListHITsForQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHITsForQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"QualificationTypeId" :: (EntityId) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListHITsForQualificationTypeRequest
newListHITsForQualificationTypeRequest' _QualificationTypeId customize = (ListHITsForQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListHITsForQualificationTypeResponse = ListHITsForQualificationTypeResponse 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "HITs" :: NullOrUndefined.NullOrUndefined (HITList)
  }
derive instance newtypeListHITsForQualificationTypeResponse :: Newtype ListHITsForQualificationTypeResponse _
derive instance repGenericListHITsForQualificationTypeResponse :: Generic ListHITsForQualificationTypeResponse _
instance showListHITsForQualificationTypeResponse :: Show ListHITsForQualificationTypeResponse where
  show = genericShow
instance decodeListHITsForQualificationTypeResponse :: Decode ListHITsForQualificationTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListHITsForQualificationTypeResponse :: Encode ListHITsForQualificationTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListHITsForQualificationTypeResponse from required parameters
newListHITsForQualificationTypeResponse :: ListHITsForQualificationTypeResponse
newListHITsForQualificationTypeResponse  = ListHITsForQualificationTypeResponse { "HITs": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }

-- | Constructs ListHITsForQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHITsForQualificationTypeResponse' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "HITs" :: NullOrUndefined.NullOrUndefined (HITList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "HITs" :: NullOrUndefined.NullOrUndefined (HITList) } ) -> ListHITsForQualificationTypeResponse
newListHITsForQualificationTypeResponse'  customize = (ListHITsForQualificationTypeResponse <<< customize) { "HITs": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }



newtype ListHITsRequest = ListHITsRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListHITsRequest :: Newtype ListHITsRequest _
derive instance repGenericListHITsRequest :: Generic ListHITsRequest _
instance showListHITsRequest :: Show ListHITsRequest where
  show = genericShow
instance decodeListHITsRequest :: Decode ListHITsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListHITsRequest :: Encode ListHITsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListHITsRequest from required parameters
newListHITsRequest :: ListHITsRequest
newListHITsRequest  = ListHITsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListHITsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHITsRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListHITsRequest
newListHITsRequest'  customize = (ListHITsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListHITsResponse = ListHITsResponse 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "HITs" :: NullOrUndefined.NullOrUndefined (HITList)
  }
derive instance newtypeListHITsResponse :: Newtype ListHITsResponse _
derive instance repGenericListHITsResponse :: Generic ListHITsResponse _
instance showListHITsResponse :: Show ListHITsResponse where
  show = genericShow
instance decodeListHITsResponse :: Decode ListHITsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListHITsResponse :: Encode ListHITsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListHITsResponse from required parameters
newListHITsResponse :: ListHITsResponse
newListHITsResponse  = ListHITsResponse { "HITs": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }

-- | Constructs ListHITsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHITsResponse' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "HITs" :: NullOrUndefined.NullOrUndefined (HITList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "HITs" :: NullOrUndefined.NullOrUndefined (HITList) } ) -> ListHITsResponse
newListHITsResponse'  customize = (ListHITsResponse <<< customize) { "HITs": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }



newtype ListQualificationRequestsRequest = ListQualificationRequestsRequest 
  { "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListQualificationRequestsRequest :: Newtype ListQualificationRequestsRequest _
derive instance repGenericListQualificationRequestsRequest :: Generic ListQualificationRequestsRequest _
instance showListQualificationRequestsRequest :: Show ListQualificationRequestsRequest where
  show = genericShow
instance decodeListQualificationRequestsRequest :: Decode ListQualificationRequestsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListQualificationRequestsRequest :: Encode ListQualificationRequestsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListQualificationRequestsRequest from required parameters
newListQualificationRequestsRequest :: ListQualificationRequestsRequest
newListQualificationRequestsRequest  = ListQualificationRequestsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "QualificationTypeId": (NullOrUndefined Nothing) }

-- | Constructs ListQualificationRequestsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQualificationRequestsRequest' :: ( { "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListQualificationRequestsRequest
newListQualificationRequestsRequest'  customize = (ListQualificationRequestsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "QualificationTypeId": (NullOrUndefined Nothing) }



newtype ListQualificationRequestsResponse = ListQualificationRequestsResponse 
  { "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "QualificationRequests" :: NullOrUndefined.NullOrUndefined (QualificationRequestList)
  }
derive instance newtypeListQualificationRequestsResponse :: Newtype ListQualificationRequestsResponse _
derive instance repGenericListQualificationRequestsResponse :: Generic ListQualificationRequestsResponse _
instance showListQualificationRequestsResponse :: Show ListQualificationRequestsResponse where
  show = genericShow
instance decodeListQualificationRequestsResponse :: Decode ListQualificationRequestsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListQualificationRequestsResponse :: Encode ListQualificationRequestsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListQualificationRequestsResponse from required parameters
newListQualificationRequestsResponse :: ListQualificationRequestsResponse
newListQualificationRequestsResponse  = ListQualificationRequestsResponse { "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing), "QualificationRequests": (NullOrUndefined Nothing) }

-- | Constructs ListQualificationRequestsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQualificationRequestsResponse' :: ( { "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "QualificationRequests" :: NullOrUndefined.NullOrUndefined (QualificationRequestList) } -> {"NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "QualificationRequests" :: NullOrUndefined.NullOrUndefined (QualificationRequestList) } ) -> ListQualificationRequestsResponse
newListQualificationRequestsResponse'  customize = (ListQualificationRequestsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing), "QualificationRequests": (NullOrUndefined Nothing) }



newtype ListQualificationTypesRequest = ListQualificationTypesRequest 
  { "Query" :: NullOrUndefined.NullOrUndefined (String)
  , "MustBeRequestable" :: (Boolean)
  , "MustBeOwnedByCaller" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListQualificationTypesRequest :: Newtype ListQualificationTypesRequest _
derive instance repGenericListQualificationTypesRequest :: Generic ListQualificationTypesRequest _
instance showListQualificationTypesRequest :: Show ListQualificationTypesRequest where
  show = genericShow
instance decodeListQualificationTypesRequest :: Decode ListQualificationTypesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListQualificationTypesRequest :: Encode ListQualificationTypesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListQualificationTypesRequest from required parameters
newListQualificationTypesRequest :: Boolean -> ListQualificationTypesRequest
newListQualificationTypesRequest _MustBeRequestable = ListQualificationTypesRequest { "MustBeRequestable": _MustBeRequestable, "MaxResults": (NullOrUndefined Nothing), "MustBeOwnedByCaller": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Query": (NullOrUndefined Nothing) }

-- | Constructs ListQualificationTypesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQualificationTypesRequest' :: Boolean -> ( { "Query" :: NullOrUndefined.NullOrUndefined (String) , "MustBeRequestable" :: (Boolean) , "MustBeOwnedByCaller" :: NullOrUndefined.NullOrUndefined (Boolean) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"Query" :: NullOrUndefined.NullOrUndefined (String) , "MustBeRequestable" :: (Boolean) , "MustBeOwnedByCaller" :: NullOrUndefined.NullOrUndefined (Boolean) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListQualificationTypesRequest
newListQualificationTypesRequest' _MustBeRequestable customize = (ListQualificationTypesRequest <<< customize) { "MustBeRequestable": _MustBeRequestable, "MaxResults": (NullOrUndefined Nothing), "MustBeOwnedByCaller": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Query": (NullOrUndefined Nothing) }



newtype ListQualificationTypesResponse = ListQualificationTypesResponse 
  { "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "QualificationTypes" :: NullOrUndefined.NullOrUndefined (QualificationTypeList)
  }
derive instance newtypeListQualificationTypesResponse :: Newtype ListQualificationTypesResponse _
derive instance repGenericListQualificationTypesResponse :: Generic ListQualificationTypesResponse _
instance showListQualificationTypesResponse :: Show ListQualificationTypesResponse where
  show = genericShow
instance decodeListQualificationTypesResponse :: Decode ListQualificationTypesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListQualificationTypesResponse :: Encode ListQualificationTypesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListQualificationTypesResponse from required parameters
newListQualificationTypesResponse :: ListQualificationTypesResponse
newListQualificationTypesResponse  = ListQualificationTypesResponse { "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing), "QualificationTypes": (NullOrUndefined Nothing) }

-- | Constructs ListQualificationTypesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQualificationTypesResponse' :: ( { "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "QualificationTypes" :: NullOrUndefined.NullOrUndefined (QualificationTypeList) } -> {"NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "QualificationTypes" :: NullOrUndefined.NullOrUndefined (QualificationTypeList) } ) -> ListQualificationTypesResponse
newListQualificationTypesResponse'  customize = (ListQualificationTypesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing), "QualificationTypes": (NullOrUndefined Nothing) }



newtype ListReviewPolicyResultsForHITRequest = ListReviewPolicyResultsForHITRequest 
  { "HITId" :: (EntityId)
  , "PolicyLevels" :: NullOrUndefined.NullOrUndefined (ReviewPolicyLevelList)
  , "RetrieveActions" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "RetrieveResults" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListReviewPolicyResultsForHITRequest :: Newtype ListReviewPolicyResultsForHITRequest _
derive instance repGenericListReviewPolicyResultsForHITRequest :: Generic ListReviewPolicyResultsForHITRequest _
instance showListReviewPolicyResultsForHITRequest :: Show ListReviewPolicyResultsForHITRequest where
  show = genericShow
instance decodeListReviewPolicyResultsForHITRequest :: Decode ListReviewPolicyResultsForHITRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListReviewPolicyResultsForHITRequest :: Encode ListReviewPolicyResultsForHITRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListReviewPolicyResultsForHITRequest from required parameters
newListReviewPolicyResultsForHITRequest :: EntityId -> ListReviewPolicyResultsForHITRequest
newListReviewPolicyResultsForHITRequest _HITId = ListReviewPolicyResultsForHITRequest { "HITId": _HITId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PolicyLevels": (NullOrUndefined Nothing), "RetrieveActions": (NullOrUndefined Nothing), "RetrieveResults": (NullOrUndefined Nothing) }

-- | Constructs ListReviewPolicyResultsForHITRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReviewPolicyResultsForHITRequest' :: EntityId -> ( { "HITId" :: (EntityId) , "PolicyLevels" :: NullOrUndefined.NullOrUndefined (ReviewPolicyLevelList) , "RetrieveActions" :: NullOrUndefined.NullOrUndefined (Boolean) , "RetrieveResults" :: NullOrUndefined.NullOrUndefined (Boolean) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"HITId" :: (EntityId) , "PolicyLevels" :: NullOrUndefined.NullOrUndefined (ReviewPolicyLevelList) , "RetrieveActions" :: NullOrUndefined.NullOrUndefined (Boolean) , "RetrieveResults" :: NullOrUndefined.NullOrUndefined (Boolean) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListReviewPolicyResultsForHITRequest
newListReviewPolicyResultsForHITRequest' _HITId customize = (ListReviewPolicyResultsForHITRequest <<< customize) { "HITId": _HITId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PolicyLevels": (NullOrUndefined Nothing), "RetrieveActions": (NullOrUndefined Nothing), "RetrieveResults": (NullOrUndefined Nothing) }



newtype ListReviewPolicyResultsForHITResponse = ListReviewPolicyResultsForHITResponse 
  { "HITId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy)
  , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy)
  , "AssignmentReviewReport" :: NullOrUndefined.NullOrUndefined (ReviewReport)
  , "HITReviewReport" :: NullOrUndefined.NullOrUndefined (ReviewReport)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  }
derive instance newtypeListReviewPolicyResultsForHITResponse :: Newtype ListReviewPolicyResultsForHITResponse _
derive instance repGenericListReviewPolicyResultsForHITResponse :: Generic ListReviewPolicyResultsForHITResponse _
instance showListReviewPolicyResultsForHITResponse :: Show ListReviewPolicyResultsForHITResponse where
  show = genericShow
instance decodeListReviewPolicyResultsForHITResponse :: Decode ListReviewPolicyResultsForHITResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListReviewPolicyResultsForHITResponse :: Encode ListReviewPolicyResultsForHITResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListReviewPolicyResultsForHITResponse from required parameters
newListReviewPolicyResultsForHITResponse :: ListReviewPolicyResultsForHITResponse
newListReviewPolicyResultsForHITResponse  = ListReviewPolicyResultsForHITResponse { "AssignmentReviewPolicy": (NullOrUndefined Nothing), "AssignmentReviewReport": (NullOrUndefined Nothing), "HITId": (NullOrUndefined Nothing), "HITReviewPolicy": (NullOrUndefined Nothing), "HITReviewReport": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListReviewPolicyResultsForHITResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReviewPolicyResultsForHITResponse' :: ( { "HITId" :: NullOrUndefined.NullOrUndefined (EntityId) , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "AssignmentReviewReport" :: NullOrUndefined.NullOrUndefined (ReviewReport) , "HITReviewReport" :: NullOrUndefined.NullOrUndefined (ReviewReport) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) } -> {"HITId" :: NullOrUndefined.NullOrUndefined (EntityId) , "AssignmentReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "HITReviewPolicy" :: NullOrUndefined.NullOrUndefined (ReviewPolicy) , "AssignmentReviewReport" :: NullOrUndefined.NullOrUndefined (ReviewReport) , "HITReviewReport" :: NullOrUndefined.NullOrUndefined (ReviewReport) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) } ) -> ListReviewPolicyResultsForHITResponse
newListReviewPolicyResultsForHITResponse'  customize = (ListReviewPolicyResultsForHITResponse <<< customize) { "AssignmentReviewPolicy": (NullOrUndefined Nothing), "AssignmentReviewReport": (NullOrUndefined Nothing), "HITId": (NullOrUndefined Nothing), "HITReviewPolicy": (NullOrUndefined Nothing), "HITReviewReport": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListReviewableHITsRequest = ListReviewableHITsRequest 
  { "HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "Status" :: NullOrUndefined.NullOrUndefined (ReviewableHITStatus)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListReviewableHITsRequest :: Newtype ListReviewableHITsRequest _
derive instance repGenericListReviewableHITsRequest :: Generic ListReviewableHITsRequest _
instance showListReviewableHITsRequest :: Show ListReviewableHITsRequest where
  show = genericShow
instance decodeListReviewableHITsRequest :: Decode ListReviewableHITsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListReviewableHITsRequest :: Encode ListReviewableHITsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListReviewableHITsRequest from required parameters
newListReviewableHITsRequest :: ListReviewableHITsRequest
newListReviewableHITsRequest  = ListReviewableHITsRequest { "HITTypeId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs ListReviewableHITsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReviewableHITsRequest' :: ( { "HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "Status" :: NullOrUndefined.NullOrUndefined (ReviewableHITStatus) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"HITTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "Status" :: NullOrUndefined.NullOrUndefined (ReviewableHITStatus) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListReviewableHITsRequest
newListReviewableHITsRequest'  customize = (ListReviewableHITsRequest <<< customize) { "HITTypeId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype ListReviewableHITsResponse = ListReviewableHITsResponse 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "HITs" :: NullOrUndefined.NullOrUndefined (HITList)
  }
derive instance newtypeListReviewableHITsResponse :: Newtype ListReviewableHITsResponse _
derive instance repGenericListReviewableHITsResponse :: Generic ListReviewableHITsResponse _
instance showListReviewableHITsResponse :: Show ListReviewableHITsResponse where
  show = genericShow
instance decodeListReviewableHITsResponse :: Decode ListReviewableHITsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListReviewableHITsResponse :: Encode ListReviewableHITsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListReviewableHITsResponse from required parameters
newListReviewableHITsResponse :: ListReviewableHITsResponse
newListReviewableHITsResponse  = ListReviewableHITsResponse { "HITs": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }

-- | Constructs ListReviewableHITsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReviewableHITsResponse' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "HITs" :: NullOrUndefined.NullOrUndefined (HITList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "HITs" :: NullOrUndefined.NullOrUndefined (HITList) } ) -> ListReviewableHITsResponse
newListReviewableHITsResponse'  customize = (ListReviewableHITsResponse <<< customize) { "HITs": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing) }



newtype ListWorkerBlocksRequest = ListWorkerBlocksRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListWorkerBlocksRequest :: Newtype ListWorkerBlocksRequest _
derive instance repGenericListWorkerBlocksRequest :: Generic ListWorkerBlocksRequest _
instance showListWorkerBlocksRequest :: Show ListWorkerBlocksRequest where
  show = genericShow
instance decodeListWorkerBlocksRequest :: Decode ListWorkerBlocksRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListWorkerBlocksRequest :: Encode ListWorkerBlocksRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListWorkerBlocksRequest from required parameters
newListWorkerBlocksRequest :: ListWorkerBlocksRequest
newListWorkerBlocksRequest  = ListWorkerBlocksRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListWorkerBlocksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkerBlocksRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListWorkerBlocksRequest
newListWorkerBlocksRequest'  customize = (ListWorkerBlocksRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListWorkerBlocksResponse = ListWorkerBlocksResponse 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "WorkerBlocks" :: NullOrUndefined.NullOrUndefined (WorkerBlockList)
  }
derive instance newtypeListWorkerBlocksResponse :: Newtype ListWorkerBlocksResponse _
derive instance repGenericListWorkerBlocksResponse :: Generic ListWorkerBlocksResponse _
instance showListWorkerBlocksResponse :: Show ListWorkerBlocksResponse where
  show = genericShow
instance decodeListWorkerBlocksResponse :: Decode ListWorkerBlocksResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListWorkerBlocksResponse :: Encode ListWorkerBlocksResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListWorkerBlocksResponse from required parameters
newListWorkerBlocksResponse :: ListWorkerBlocksResponse
newListWorkerBlocksResponse  = ListWorkerBlocksResponse { "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing), "WorkerBlocks": (NullOrUndefined Nothing) }

-- | Constructs ListWorkerBlocksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkerBlocksResponse' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "WorkerBlocks" :: NullOrUndefined.NullOrUndefined (WorkerBlockList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "WorkerBlocks" :: NullOrUndefined.NullOrUndefined (WorkerBlockList) } ) -> ListWorkerBlocksResponse
newListWorkerBlocksResponse'  customize = (ListWorkerBlocksResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing), "WorkerBlocks": (NullOrUndefined Nothing) }



newtype ListWorkersWithQualificationTypeRequest = ListWorkersWithQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  , "Status" :: NullOrUndefined.NullOrUndefined (QualificationStatus)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize)
  }
derive instance newtypeListWorkersWithQualificationTypeRequest :: Newtype ListWorkersWithQualificationTypeRequest _
derive instance repGenericListWorkersWithQualificationTypeRequest :: Generic ListWorkersWithQualificationTypeRequest _
instance showListWorkersWithQualificationTypeRequest :: Show ListWorkersWithQualificationTypeRequest where
  show = genericShow
instance decodeListWorkersWithQualificationTypeRequest :: Decode ListWorkersWithQualificationTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListWorkersWithQualificationTypeRequest :: Encode ListWorkersWithQualificationTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListWorkersWithQualificationTypeRequest from required parameters
newListWorkersWithQualificationTypeRequest :: EntityId -> ListWorkersWithQualificationTypeRequest
newListWorkersWithQualificationTypeRequest _QualificationTypeId = ListWorkersWithQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs ListWorkersWithQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkersWithQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) , "Status" :: NullOrUndefined.NullOrUndefined (QualificationStatus) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } -> {"QualificationTypeId" :: (EntityId) , "Status" :: NullOrUndefined.NullOrUndefined (QualificationStatus) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ResultSize) } ) -> ListWorkersWithQualificationTypeRequest
newListWorkersWithQualificationTypeRequest' _QualificationTypeId customize = (ListWorkersWithQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype ListWorkersWithQualificationTypeResponse = ListWorkersWithQualificationTypeResponse 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  , "NumResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "Qualifications" :: NullOrUndefined.NullOrUndefined (QualificationList)
  }
derive instance newtypeListWorkersWithQualificationTypeResponse :: Newtype ListWorkersWithQualificationTypeResponse _
derive instance repGenericListWorkersWithQualificationTypeResponse :: Generic ListWorkersWithQualificationTypeResponse _
instance showListWorkersWithQualificationTypeResponse :: Show ListWorkersWithQualificationTypeResponse where
  show = genericShow
instance decodeListWorkersWithQualificationTypeResponse :: Decode ListWorkersWithQualificationTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListWorkersWithQualificationTypeResponse :: Encode ListWorkersWithQualificationTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListWorkersWithQualificationTypeResponse from required parameters
newListWorkersWithQualificationTypeResponse :: ListWorkersWithQualificationTypeResponse
newListWorkersWithQualificationTypeResponse  = ListWorkersWithQualificationTypeResponse { "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing), "Qualifications": (NullOrUndefined Nothing) }

-- | Constructs ListWorkersWithQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkersWithQualificationTypeResponse' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "Qualifications" :: NullOrUndefined.NullOrUndefined (QualificationList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) , "NumResults" :: NullOrUndefined.NullOrUndefined (Int) , "Qualifications" :: NullOrUndefined.NullOrUndefined (QualificationList) } ) -> ListWorkersWithQualificationTypeResponse
newListWorkersWithQualificationTypeResponse'  customize = (ListWorkersWithQualificationTypeResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "NumResults": (NullOrUndefined Nothing), "Qualifications": (NullOrUndefined Nothing) }



-- | <p>The Locale data structure represents a geographical region or location.</p>
newtype Locale = Locale 
  { "Country" :: (CountryParameters)
  , "Subdivision" :: NullOrUndefined.NullOrUndefined (CountryParameters)
  }
derive instance newtypeLocale :: Newtype Locale _
derive instance repGenericLocale :: Generic Locale _
instance showLocale :: Show Locale where
  show = genericShow
instance decodeLocale :: Decode Locale where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLocale :: Encode Locale where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Locale from required parameters
newLocale :: CountryParameters -> Locale
newLocale _Country = Locale { "Country": _Country, "Subdivision": (NullOrUndefined Nothing) }

-- | Constructs Locale's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLocale' :: CountryParameters -> ( { "Country" :: (CountryParameters) , "Subdivision" :: NullOrUndefined.NullOrUndefined (CountryParameters) } -> {"Country" :: (CountryParameters) , "Subdivision" :: NullOrUndefined.NullOrUndefined (CountryParameters) } ) -> Locale
newLocale' _Country customize = (Locale <<< customize) { "Country": _Country, "Subdivision": (NullOrUndefined Nothing) }



newtype LocaleList = LocaleList (Array Locale)
derive instance newtypeLocaleList :: Newtype LocaleList _
derive instance repGenericLocaleList :: Generic LocaleList _
instance showLocaleList :: Show LocaleList where
  show = genericShow
instance decodeLocaleList :: Decode LocaleList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLocaleList :: Encode LocaleList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The NotificationSpecification data structure describes a HIT event notification for a HIT type.</p>
newtype NotificationSpecification = NotificationSpecification 
  { "Destination" :: (String)
  , "Transport" :: (NotificationTransport)
  , "Version" :: (String)
  , "EventTypes" :: (EventTypeList)
  }
derive instance newtypeNotificationSpecification :: Newtype NotificationSpecification _
derive instance repGenericNotificationSpecification :: Generic NotificationSpecification _
instance showNotificationSpecification :: Show NotificationSpecification where
  show = genericShow
instance decodeNotificationSpecification :: Decode NotificationSpecification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotificationSpecification :: Encode NotificationSpecification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showNotificationTransport :: Show NotificationTransport where
  show = genericShow
instance decodeNotificationTransport :: Decode NotificationTransport where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotificationTransport :: Encode NotificationTransport where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NotifyWorkersFailureCode = NotifyWorkersFailureCode String
derive instance newtypeNotifyWorkersFailureCode :: Newtype NotifyWorkersFailureCode _
derive instance repGenericNotifyWorkersFailureCode :: Generic NotifyWorkersFailureCode _
instance showNotifyWorkersFailureCode :: Show NotifyWorkersFailureCode where
  show = genericShow
instance decodeNotifyWorkersFailureCode :: Decode NotifyWorkersFailureCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyWorkersFailureCode :: Encode NotifyWorkersFailureCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> When MTurk encounters an issue with notifying the Workers you specified, it returns back this object with failure details. </p>
newtype NotifyWorkersFailureStatus = NotifyWorkersFailureStatus 
  { "NotifyWorkersFailureCode" :: NullOrUndefined.NullOrUndefined (NotifyWorkersFailureCode)
  , "NotifyWorkersFailureMessage" :: NullOrUndefined.NullOrUndefined (String)
  , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId)
  }
derive instance newtypeNotifyWorkersFailureStatus :: Newtype NotifyWorkersFailureStatus _
derive instance repGenericNotifyWorkersFailureStatus :: Generic NotifyWorkersFailureStatus _
instance showNotifyWorkersFailureStatus :: Show NotifyWorkersFailureStatus where
  show = genericShow
instance decodeNotifyWorkersFailureStatus :: Decode NotifyWorkersFailureStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyWorkersFailureStatus :: Encode NotifyWorkersFailureStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotifyWorkersFailureStatus from required parameters
newNotifyWorkersFailureStatus :: NotifyWorkersFailureStatus
newNotifyWorkersFailureStatus  = NotifyWorkersFailureStatus { "NotifyWorkersFailureCode": (NullOrUndefined Nothing), "NotifyWorkersFailureMessage": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }

-- | Constructs NotifyWorkersFailureStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyWorkersFailureStatus' :: ( { "NotifyWorkersFailureCode" :: NullOrUndefined.NullOrUndefined (NotifyWorkersFailureCode) , "NotifyWorkersFailureMessage" :: NullOrUndefined.NullOrUndefined (String) , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) } -> {"NotifyWorkersFailureCode" :: NullOrUndefined.NullOrUndefined (NotifyWorkersFailureCode) , "NotifyWorkersFailureMessage" :: NullOrUndefined.NullOrUndefined (String) , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) } ) -> NotifyWorkersFailureStatus
newNotifyWorkersFailureStatus'  customize = (NotifyWorkersFailureStatus <<< customize) { "NotifyWorkersFailureCode": (NullOrUndefined Nothing), "NotifyWorkersFailureMessage": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }



newtype NotifyWorkersFailureStatusList = NotifyWorkersFailureStatusList (Array NotifyWorkersFailureStatus)
derive instance newtypeNotifyWorkersFailureStatusList :: Newtype NotifyWorkersFailureStatusList _
derive instance repGenericNotifyWorkersFailureStatusList :: Generic NotifyWorkersFailureStatusList _
instance showNotifyWorkersFailureStatusList :: Show NotifyWorkersFailureStatusList where
  show = genericShow
instance decodeNotifyWorkersFailureStatusList :: Decode NotifyWorkersFailureStatusList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyWorkersFailureStatusList :: Encode NotifyWorkersFailureStatusList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NotifyWorkersRequest = NotifyWorkersRequest 
  { "Subject" :: (String)
  , "MessageText" :: (String)
  , "WorkerIds" :: (CustomerIdList)
  }
derive instance newtypeNotifyWorkersRequest :: Newtype NotifyWorkersRequest _
derive instance repGenericNotifyWorkersRequest :: Generic NotifyWorkersRequest _
instance showNotifyWorkersRequest :: Show NotifyWorkersRequest where
  show = genericShow
instance decodeNotifyWorkersRequest :: Decode NotifyWorkersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyWorkersRequest :: Encode NotifyWorkersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotifyWorkersRequest from required parameters
newNotifyWorkersRequest :: String -> String -> CustomerIdList -> NotifyWorkersRequest
newNotifyWorkersRequest _MessageText _Subject _WorkerIds = NotifyWorkersRequest { "MessageText": _MessageText, "Subject": _Subject, "WorkerIds": _WorkerIds }

-- | Constructs NotifyWorkersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyWorkersRequest' :: String -> String -> CustomerIdList -> ( { "Subject" :: (String) , "MessageText" :: (String) , "WorkerIds" :: (CustomerIdList) } -> {"Subject" :: (String) , "MessageText" :: (String) , "WorkerIds" :: (CustomerIdList) } ) -> NotifyWorkersRequest
newNotifyWorkersRequest' _MessageText _Subject _WorkerIds customize = (NotifyWorkersRequest <<< customize) { "MessageText": _MessageText, "Subject": _Subject, "WorkerIds": _WorkerIds }



newtype NotifyWorkersResponse = NotifyWorkersResponse 
  { "NotifyWorkersFailureStatuses" :: NullOrUndefined.NullOrUndefined (NotifyWorkersFailureStatusList)
  }
derive instance newtypeNotifyWorkersResponse :: Newtype NotifyWorkersResponse _
derive instance repGenericNotifyWorkersResponse :: Generic NotifyWorkersResponse _
instance showNotifyWorkersResponse :: Show NotifyWorkersResponse where
  show = genericShow
instance decodeNotifyWorkersResponse :: Decode NotifyWorkersResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyWorkersResponse :: Encode NotifyWorkersResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotifyWorkersResponse from required parameters
newNotifyWorkersResponse :: NotifyWorkersResponse
newNotifyWorkersResponse  = NotifyWorkersResponse { "NotifyWorkersFailureStatuses": (NullOrUndefined Nothing) }

-- | Constructs NotifyWorkersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyWorkersResponse' :: ( { "NotifyWorkersFailureStatuses" :: NullOrUndefined.NullOrUndefined (NotifyWorkersFailureStatusList) } -> {"NotifyWorkersFailureStatuses" :: NullOrUndefined.NullOrUndefined (NotifyWorkersFailureStatusList) } ) -> NotifyWorkersResponse
newNotifyWorkersResponse'  customize = (NotifyWorkersResponse <<< customize) { "NotifyWorkersFailureStatuses": (NullOrUndefined Nothing) }



-- | <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk returns a pagination token in the response. You can use this pagination token to retrieve the next set of results. </p>
newtype PaginationToken = PaginationToken String
derive instance newtypePaginationToken :: Newtype PaginationToken _
derive instance repGenericPaginationToken :: Generic PaginationToken _
instance showPaginationToken :: Show PaginationToken where
  show = genericShow
instance decodePaginationToken :: Decode PaginationToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePaginationToken :: Encode PaginationToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> This data structure is the data type for the AnswerKey parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>
newtype ParameterMapEntry = ParameterMapEntry 
  { "Key" :: NullOrUndefined.NullOrUndefined (String)
  , "Values" :: NullOrUndefined.NullOrUndefined (StringList)
  }
derive instance newtypeParameterMapEntry :: Newtype ParameterMapEntry _
derive instance repGenericParameterMapEntry :: Generic ParameterMapEntry _
instance showParameterMapEntry :: Show ParameterMapEntry where
  show = genericShow
instance decodeParameterMapEntry :: Decode ParameterMapEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParameterMapEntry :: Encode ParameterMapEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ParameterMapEntry from required parameters
newParameterMapEntry :: ParameterMapEntry
newParameterMapEntry  = ParameterMapEntry { "Key": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }

-- | Constructs ParameterMapEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterMapEntry' :: ( { "Key" :: NullOrUndefined.NullOrUndefined (String) , "Values" :: NullOrUndefined.NullOrUndefined (StringList) } -> {"Key" :: NullOrUndefined.NullOrUndefined (String) , "Values" :: NullOrUndefined.NullOrUndefined (StringList) } ) -> ParameterMapEntry
newParameterMapEntry'  customize = (ParameterMapEntry <<< customize) { "Key": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }



newtype ParameterMapEntryList = ParameterMapEntryList (Array ParameterMapEntry)
derive instance newtypeParameterMapEntryList :: Newtype ParameterMapEntryList _
derive instance repGenericParameterMapEntryList :: Generic ParameterMapEntryList _
instance showParameterMapEntryList :: Show ParameterMapEntryList where
  show = genericShow
instance decodeParameterMapEntryList :: Decode ParameterMapEntryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParameterMapEntryList :: Encode ParameterMapEntryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Name of the parameter from the Review policy. </p>
newtype PolicyParameter = PolicyParameter 
  { "Key" :: NullOrUndefined.NullOrUndefined (String)
  , "Values" :: NullOrUndefined.NullOrUndefined (StringList)
  , "MapEntries" :: NullOrUndefined.NullOrUndefined (ParameterMapEntryList)
  }
derive instance newtypePolicyParameter :: Newtype PolicyParameter _
derive instance repGenericPolicyParameter :: Generic PolicyParameter _
instance showPolicyParameter :: Show PolicyParameter where
  show = genericShow
instance decodePolicyParameter :: Decode PolicyParameter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyParameter :: Encode PolicyParameter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyParameter from required parameters
newPolicyParameter :: PolicyParameter
newPolicyParameter  = PolicyParameter { "Key": (NullOrUndefined Nothing), "MapEntries": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }

-- | Constructs PolicyParameter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyParameter' :: ( { "Key" :: NullOrUndefined.NullOrUndefined (String) , "Values" :: NullOrUndefined.NullOrUndefined (StringList) , "MapEntries" :: NullOrUndefined.NullOrUndefined (ParameterMapEntryList) } -> {"Key" :: NullOrUndefined.NullOrUndefined (String) , "Values" :: NullOrUndefined.NullOrUndefined (StringList) , "MapEntries" :: NullOrUndefined.NullOrUndefined (ParameterMapEntryList) } ) -> PolicyParameter
newPolicyParameter'  customize = (PolicyParameter <<< customize) { "Key": (NullOrUndefined Nothing), "MapEntries": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }



newtype PolicyParameterList = PolicyParameterList (Array PolicyParameter)
derive instance newtypePolicyParameterList :: Newtype PolicyParameterList _
derive instance repGenericPolicyParameterList :: Generic PolicyParameterList _
instance showPolicyParameterList :: Show PolicyParameterList where
  show = genericShow
instance decodePolicyParameterList :: Decode PolicyParameterList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyParameterList :: Encode PolicyParameterList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The Qualification data structure represents a Qualification assigned to a user, including the Qualification type and the value (score).</p>
newtype Qualification = Qualification 
  { "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId)
  , "GrantTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int)
  , "LocaleValue" :: NullOrUndefined.NullOrUndefined (Locale)
  , "Status" :: NullOrUndefined.NullOrUndefined (QualificationStatus)
  }
derive instance newtypeQualification :: Newtype Qualification _
derive instance repGenericQualification :: Generic Qualification _
instance showQualification :: Show Qualification where
  show = genericShow
instance decodeQualification :: Decode Qualification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualification :: Encode Qualification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Qualification from required parameters
newQualification :: Qualification
newQualification  = Qualification { "GrantTime": (NullOrUndefined Nothing), "IntegerValue": (NullOrUndefined Nothing), "LocaleValue": (NullOrUndefined Nothing), "QualificationTypeId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }

-- | Constructs Qualification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQualification' :: ( { "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "GrantTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int) , "LocaleValue" :: NullOrUndefined.NullOrUndefined (Locale) , "Status" :: NullOrUndefined.NullOrUndefined (QualificationStatus) } -> {"QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "GrantTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "IntegerValue" :: NullOrUndefined.NullOrUndefined (Int) , "LocaleValue" :: NullOrUndefined.NullOrUndefined (Locale) , "Status" :: NullOrUndefined.NullOrUndefined (QualificationStatus) } ) -> Qualification
newQualification'  customize = (Qualification <<< customize) { "GrantTime": (NullOrUndefined Nothing), "IntegerValue": (NullOrUndefined Nothing), "LocaleValue": (NullOrUndefined Nothing), "QualificationTypeId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }



newtype QualificationList = QualificationList (Array Qualification)
derive instance newtypeQualificationList :: Newtype QualificationList _
derive instance repGenericQualificationList :: Generic QualificationList _
instance showQualificationList :: Show QualificationList where
  show = genericShow
instance decodeQualificationList :: Decode QualificationList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationList :: Encode QualificationList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The QualificationRequest data structure represents a request a Worker has made for a Qualification. </p>
newtype QualificationRequest = QualificationRequest 
  { "QualificationRequestId" :: NullOrUndefined.NullOrUndefined (String)
  , "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId)
  , "Test" :: NullOrUndefined.NullOrUndefined (String)
  , "Answer" :: NullOrUndefined.NullOrUndefined (String)
  , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeQualificationRequest :: Newtype QualificationRequest _
derive instance repGenericQualificationRequest :: Generic QualificationRequest _
instance showQualificationRequest :: Show QualificationRequest where
  show = genericShow
instance decodeQualificationRequest :: Decode QualificationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationRequest :: Encode QualificationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QualificationRequest from required parameters
newQualificationRequest :: QualificationRequest
newQualificationRequest  = QualificationRequest { "Answer": (NullOrUndefined Nothing), "QualificationRequestId": (NullOrUndefined Nothing), "QualificationTypeId": (NullOrUndefined Nothing), "SubmitTime": (NullOrUndefined Nothing), "Test": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }

-- | Constructs QualificationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQualificationRequest' :: ( { "QualificationRequestId" :: NullOrUndefined.NullOrUndefined (String) , "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "Test" :: NullOrUndefined.NullOrUndefined (String) , "Answer" :: NullOrUndefined.NullOrUndefined (String) , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"QualificationRequestId" :: NullOrUndefined.NullOrUndefined (String) , "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "Test" :: NullOrUndefined.NullOrUndefined (String) , "Answer" :: NullOrUndefined.NullOrUndefined (String) , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> QualificationRequest
newQualificationRequest'  customize = (QualificationRequest <<< customize) { "Answer": (NullOrUndefined Nothing), "QualificationRequestId": (NullOrUndefined Nothing), "QualificationTypeId": (NullOrUndefined Nothing), "SubmitTime": (NullOrUndefined Nothing), "Test": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }



newtype QualificationRequestList = QualificationRequestList (Array QualificationRequest)
derive instance newtypeQualificationRequestList :: Newtype QualificationRequestList _
derive instance repGenericQualificationRequestList :: Generic QualificationRequestList _
instance showQualificationRequestList :: Show QualificationRequestList where
  show = genericShow
instance decodeQualificationRequestList :: Decode QualificationRequestList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationRequestList :: Encode QualificationRequestList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The QualificationRequirement data structure describes a Qualification that a Worker must have before the Worker is allowed to accept a HIT. A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT. </p>
newtype QualificationRequirement = QualificationRequirement 
  { "QualificationTypeId" :: (String)
  , "Comparator" :: (Comparator)
  , "IntegerValues" :: NullOrUndefined.NullOrUndefined (IntegerList)
  , "LocaleValues" :: NullOrUndefined.NullOrUndefined (LocaleList)
  , "RequiredToPreview" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeQualificationRequirement :: Newtype QualificationRequirement _
derive instance repGenericQualificationRequirement :: Generic QualificationRequirement _
instance showQualificationRequirement :: Show QualificationRequirement where
  show = genericShow
instance decodeQualificationRequirement :: Decode QualificationRequirement where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationRequirement :: Encode QualificationRequirement where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QualificationRequirement from required parameters
newQualificationRequirement :: Comparator -> String -> QualificationRequirement
newQualificationRequirement _Comparator _QualificationTypeId = QualificationRequirement { "Comparator": _Comparator, "QualificationTypeId": _QualificationTypeId, "IntegerValues": (NullOrUndefined Nothing), "LocaleValues": (NullOrUndefined Nothing), "RequiredToPreview": (NullOrUndefined Nothing) }

-- | Constructs QualificationRequirement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQualificationRequirement' :: Comparator -> String -> ( { "QualificationTypeId" :: (String) , "Comparator" :: (Comparator) , "IntegerValues" :: NullOrUndefined.NullOrUndefined (IntegerList) , "LocaleValues" :: NullOrUndefined.NullOrUndefined (LocaleList) , "RequiredToPreview" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"QualificationTypeId" :: (String) , "Comparator" :: (Comparator) , "IntegerValues" :: NullOrUndefined.NullOrUndefined (IntegerList) , "LocaleValues" :: NullOrUndefined.NullOrUndefined (LocaleList) , "RequiredToPreview" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> QualificationRequirement
newQualificationRequirement' _Comparator _QualificationTypeId customize = (QualificationRequirement <<< customize) { "Comparator": _Comparator, "QualificationTypeId": _QualificationTypeId, "IntegerValues": (NullOrUndefined Nothing), "LocaleValues": (NullOrUndefined Nothing), "RequiredToPreview": (NullOrUndefined Nothing) }



newtype QualificationRequirementList = QualificationRequirementList (Array QualificationRequirement)
derive instance newtypeQualificationRequirementList :: Newtype QualificationRequirementList _
derive instance repGenericQualificationRequirementList :: Generic QualificationRequirementList _
instance showQualificationRequirementList :: Show QualificationRequirementList where
  show = genericShow
instance decodeQualificationRequirementList :: Decode QualificationRequirementList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationRequirementList :: Encode QualificationRequirementList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype QualificationStatus = QualificationStatus String
derive instance newtypeQualificationStatus :: Newtype QualificationStatus _
derive instance repGenericQualificationStatus :: Generic QualificationStatus _
instance showQualificationStatus :: Show QualificationStatus where
  show = genericShow
instance decodeQualificationStatus :: Decode QualificationStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationStatus :: Encode QualificationStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The QualificationType data structure represents a Qualification type, a description of a property of a Worker that must match the requirements of a HIT for the Worker to be able to accept the HIT. The type also describes how a Worker can obtain a Qualification of that type, such as through a Qualification test. </p>
newtype QualificationType = QualificationType 
  { "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "Keywords" :: NullOrUndefined.NullOrUndefined (String)
  , "QualificationTypeStatus" :: NullOrUndefined.NullOrUndefined (QualificationTypeStatus)
  , "Test" :: NullOrUndefined.NullOrUndefined (String)
  , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String)
  , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "IsRequestable" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeQualificationType :: Newtype QualificationType _
derive instance repGenericQualificationType :: Generic QualificationType _
instance showQualificationType :: Show QualificationType where
  show = genericShow
instance decodeQualificationType :: Decode QualificationType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationType :: Encode QualificationType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QualificationType from required parameters
newQualificationType :: QualificationType
newQualificationType  = QualificationType { "AnswerKey": (NullOrUndefined Nothing), "AutoGranted": (NullOrUndefined Nothing), "AutoGrantedValue": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsRequestable": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "QualificationTypeId": (NullOrUndefined Nothing), "QualificationTypeStatus": (NullOrUndefined Nothing), "RetryDelayInSeconds": (NullOrUndefined Nothing), "Test": (NullOrUndefined Nothing), "TestDurationInSeconds": (NullOrUndefined Nothing) }

-- | Constructs QualificationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQualificationType' :: ( { "QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "CreationTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "QualificationTypeStatus" :: NullOrUndefined.NullOrUndefined (QualificationTypeStatus) , "Test" :: NullOrUndefined.NullOrUndefined (String) , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String) , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "IsRequestable" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int) } -> {"QualificationTypeId" :: NullOrUndefined.NullOrUndefined (EntityId) , "CreationTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "Keywords" :: NullOrUndefined.NullOrUndefined (String) , "QualificationTypeStatus" :: NullOrUndefined.NullOrUndefined (QualificationTypeStatus) , "Test" :: NullOrUndefined.NullOrUndefined (String) , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String) , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "IsRequestable" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int) } ) -> QualificationType
newQualificationType'  customize = (QualificationType <<< customize) { "AnswerKey": (NullOrUndefined Nothing), "AutoGranted": (NullOrUndefined Nothing), "AutoGrantedValue": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsRequestable": (NullOrUndefined Nothing), "Keywords": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "QualificationTypeId": (NullOrUndefined Nothing), "QualificationTypeStatus": (NullOrUndefined Nothing), "RetryDelayInSeconds": (NullOrUndefined Nothing), "Test": (NullOrUndefined Nothing), "TestDurationInSeconds": (NullOrUndefined Nothing) }



newtype QualificationTypeList = QualificationTypeList (Array QualificationType)
derive instance newtypeQualificationTypeList :: Newtype QualificationTypeList _
derive instance repGenericQualificationTypeList :: Generic QualificationTypeList _
instance showQualificationTypeList :: Show QualificationTypeList where
  show = genericShow
instance decodeQualificationTypeList :: Decode QualificationTypeList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationTypeList :: Encode QualificationTypeList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype QualificationTypeStatus = QualificationTypeStatus String
derive instance newtypeQualificationTypeStatus :: Newtype QualificationTypeStatus _
derive instance repGenericQualificationTypeStatus :: Generic QualificationTypeStatus _
instance showQualificationTypeStatus :: Show QualificationTypeStatus where
  show = genericShow
instance decodeQualificationTypeStatus :: Decode QualificationTypeStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQualificationTypeStatus :: Encode QualificationTypeStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RejectAssignmentRequest = RejectAssignmentRequest 
  { "AssignmentId" :: (EntityId)
  , "RequesterFeedback" :: (String)
  }
derive instance newtypeRejectAssignmentRequest :: Newtype RejectAssignmentRequest _
derive instance repGenericRejectAssignmentRequest :: Generic RejectAssignmentRequest _
instance showRejectAssignmentRequest :: Show RejectAssignmentRequest where
  show = genericShow
instance decodeRejectAssignmentRequest :: Decode RejectAssignmentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRejectAssignmentRequest :: Encode RejectAssignmentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showRejectAssignmentResponse :: Show RejectAssignmentResponse where
  show = genericShow
instance decodeRejectAssignmentResponse :: Decode RejectAssignmentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRejectAssignmentResponse :: Encode RejectAssignmentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RejectQualificationRequestRequest = RejectQualificationRequestRequest 
  { "QualificationRequestId" :: (String)
  , "Reason" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeRejectQualificationRequestRequest :: Newtype RejectQualificationRequestRequest _
derive instance repGenericRejectQualificationRequestRequest :: Generic RejectQualificationRequestRequest _
instance showRejectQualificationRequestRequest :: Show RejectQualificationRequestRequest where
  show = genericShow
instance decodeRejectQualificationRequestRequest :: Decode RejectQualificationRequestRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRejectQualificationRequestRequest :: Encode RejectQualificationRequestRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RejectQualificationRequestRequest from required parameters
newRejectQualificationRequestRequest :: String -> RejectQualificationRequestRequest
newRejectQualificationRequestRequest _QualificationRequestId = RejectQualificationRequestRequest { "QualificationRequestId": _QualificationRequestId, "Reason": (NullOrUndefined Nothing) }

-- | Constructs RejectQualificationRequestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRejectQualificationRequestRequest' :: String -> ( { "QualificationRequestId" :: (String) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } -> {"QualificationRequestId" :: (String) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } ) -> RejectQualificationRequestRequest
newRejectQualificationRequestRequest' _QualificationRequestId customize = (RejectQualificationRequestRequest <<< customize) { "QualificationRequestId": _QualificationRequestId, "Reason": (NullOrUndefined Nothing) }



newtype RejectQualificationRequestResponse = RejectQualificationRequestResponse Types.NoArguments
derive instance newtypeRejectQualificationRequestResponse :: Newtype RejectQualificationRequestResponse _
derive instance repGenericRejectQualificationRequestResponse :: Generic RejectQualificationRequestResponse _
instance showRejectQualificationRequestResponse :: Show RejectQualificationRequestResponse where
  show = genericShow
instance decodeRejectQualificationRequestResponse :: Decode RejectQualificationRequestResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRejectQualificationRequestResponse :: Encode RejectQualificationRequestResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Your request is invalid.</p>
newtype RequestError = RequestError 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  , "TurkErrorCode" :: NullOrUndefined.NullOrUndefined (TurkErrorCode)
  }
derive instance newtypeRequestError :: Newtype RequestError _
derive instance repGenericRequestError :: Generic RequestError _
instance showRequestError :: Show RequestError where
  show = genericShow
instance decodeRequestError :: Decode RequestError where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRequestError :: Encode RequestError where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RequestError from required parameters
newRequestError :: RequestError
newRequestError  = RequestError { "Message": (NullOrUndefined Nothing), "TurkErrorCode": (NullOrUndefined Nothing) }

-- | Constructs RequestError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestError' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "TurkErrorCode" :: NullOrUndefined.NullOrUndefined (TurkErrorCode) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "TurkErrorCode" :: NullOrUndefined.NullOrUndefined (TurkErrorCode) } ) -> RequestError
newRequestError'  customize = (RequestError <<< customize) { "Message": (NullOrUndefined Nothing), "TurkErrorCode": (NullOrUndefined Nothing) }



newtype ResultSize = ResultSize Int
derive instance newtypeResultSize :: Newtype ResultSize _
derive instance repGenericResultSize :: Generic ResultSize _
instance showResultSize :: Show ResultSize where
  show = genericShow
instance decodeResultSize :: Decode ResultSize where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResultSize :: Encode ResultSize where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Both the AssignmentReviewReport and the HITReviewReport elements contains the ReviewActionDetail data structure. This structure is returned multiple times for each action specified in the Review Policy. </p>
newtype ReviewActionDetail = ReviewActionDetail 
  { "ActionId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "ActionName" :: NullOrUndefined.NullOrUndefined (String)
  , "TargetId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "TargetType" :: NullOrUndefined.NullOrUndefined (String)
  , "Status" :: NullOrUndefined.NullOrUndefined (ReviewActionStatus)
  , "CompleteTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Result" :: NullOrUndefined.NullOrUndefined (String)
  , "ErrorCode" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeReviewActionDetail :: Newtype ReviewActionDetail _
derive instance repGenericReviewActionDetail :: Generic ReviewActionDetail _
instance showReviewActionDetail :: Show ReviewActionDetail where
  show = genericShow
instance decodeReviewActionDetail :: Decode ReviewActionDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewActionDetail :: Encode ReviewActionDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ReviewActionDetail from required parameters
newReviewActionDetail :: ReviewActionDetail
newReviewActionDetail  = ReviewActionDetail { "ActionId": (NullOrUndefined Nothing), "ActionName": (NullOrUndefined Nothing), "CompleteTime": (NullOrUndefined Nothing), "ErrorCode": (NullOrUndefined Nothing), "Result": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TargetId": (NullOrUndefined Nothing), "TargetType": (NullOrUndefined Nothing) }

-- | Constructs ReviewActionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReviewActionDetail' :: ( { "ActionId" :: NullOrUndefined.NullOrUndefined (EntityId) , "ActionName" :: NullOrUndefined.NullOrUndefined (String) , "TargetId" :: NullOrUndefined.NullOrUndefined (EntityId) , "TargetType" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (ReviewActionStatus) , "CompleteTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Result" :: NullOrUndefined.NullOrUndefined (String) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) } -> {"ActionId" :: NullOrUndefined.NullOrUndefined (EntityId) , "ActionName" :: NullOrUndefined.NullOrUndefined (String) , "TargetId" :: NullOrUndefined.NullOrUndefined (EntityId) , "TargetType" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (ReviewActionStatus) , "CompleteTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Result" :: NullOrUndefined.NullOrUndefined (String) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) } ) -> ReviewActionDetail
newReviewActionDetail'  customize = (ReviewActionDetail <<< customize) { "ActionId": (NullOrUndefined Nothing), "ActionName": (NullOrUndefined Nothing), "CompleteTime": (NullOrUndefined Nothing), "ErrorCode": (NullOrUndefined Nothing), "Result": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TargetId": (NullOrUndefined Nothing), "TargetType": (NullOrUndefined Nothing) }



newtype ReviewActionDetailList = ReviewActionDetailList (Array ReviewActionDetail)
derive instance newtypeReviewActionDetailList :: Newtype ReviewActionDetailList _
derive instance repGenericReviewActionDetailList :: Generic ReviewActionDetailList _
instance showReviewActionDetailList :: Show ReviewActionDetailList where
  show = genericShow
instance decodeReviewActionDetailList :: Decode ReviewActionDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewActionDetailList :: Encode ReviewActionDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ReviewActionStatus = ReviewActionStatus String
derive instance newtypeReviewActionStatus :: Newtype ReviewActionStatus _
derive instance repGenericReviewActionStatus :: Generic ReviewActionStatus _
instance showReviewActionStatus :: Show ReviewActionStatus where
  show = genericShow
instance decodeReviewActionStatus :: Decode ReviewActionStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewActionStatus :: Encode ReviewActionStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> HIT Review Policy data structures represent HIT review policies, which you specify when you create a HIT. </p>
newtype ReviewPolicy = ReviewPolicy 
  { "PolicyName" :: (String)
  , "Parameters" :: NullOrUndefined.NullOrUndefined (PolicyParameterList)
  }
derive instance newtypeReviewPolicy :: Newtype ReviewPolicy _
derive instance repGenericReviewPolicy :: Generic ReviewPolicy _
instance showReviewPolicy :: Show ReviewPolicy where
  show = genericShow
instance decodeReviewPolicy :: Decode ReviewPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewPolicy :: Encode ReviewPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ReviewPolicy from required parameters
newReviewPolicy :: String -> ReviewPolicy
newReviewPolicy _PolicyName = ReviewPolicy { "PolicyName": _PolicyName, "Parameters": (NullOrUndefined Nothing) }

-- | Constructs ReviewPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReviewPolicy' :: String -> ( { "PolicyName" :: (String) , "Parameters" :: NullOrUndefined.NullOrUndefined (PolicyParameterList) } -> {"PolicyName" :: (String) , "Parameters" :: NullOrUndefined.NullOrUndefined (PolicyParameterList) } ) -> ReviewPolicy
newReviewPolicy' _PolicyName customize = (ReviewPolicy <<< customize) { "PolicyName": _PolicyName, "Parameters": (NullOrUndefined Nothing) }



newtype ReviewPolicyLevel = ReviewPolicyLevel String
derive instance newtypeReviewPolicyLevel :: Newtype ReviewPolicyLevel _
derive instance repGenericReviewPolicyLevel :: Generic ReviewPolicyLevel _
instance showReviewPolicyLevel :: Show ReviewPolicyLevel where
  show = genericShow
instance decodeReviewPolicyLevel :: Decode ReviewPolicyLevel where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewPolicyLevel :: Encode ReviewPolicyLevel where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ReviewPolicyLevelList = ReviewPolicyLevelList (Array ReviewPolicyLevel)
derive instance newtypeReviewPolicyLevelList :: Newtype ReviewPolicyLevelList _
derive instance repGenericReviewPolicyLevelList :: Generic ReviewPolicyLevelList _
instance showReviewPolicyLevelList :: Show ReviewPolicyLevelList where
  show = genericShow
instance decodeReviewPolicyLevelList :: Decode ReviewPolicyLevelList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewPolicyLevelList :: Encode ReviewPolicyLevelList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>
newtype ReviewReport = ReviewReport 
  { "ReviewResults" :: NullOrUndefined.NullOrUndefined (ReviewResultDetailList)
  , "ReviewActions" :: NullOrUndefined.NullOrUndefined (ReviewActionDetailList)
  }
derive instance newtypeReviewReport :: Newtype ReviewReport _
derive instance repGenericReviewReport :: Generic ReviewReport _
instance showReviewReport :: Show ReviewReport where
  show = genericShow
instance decodeReviewReport :: Decode ReviewReport where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewReport :: Encode ReviewReport where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ReviewReport from required parameters
newReviewReport :: ReviewReport
newReviewReport  = ReviewReport { "ReviewActions": (NullOrUndefined Nothing), "ReviewResults": (NullOrUndefined Nothing) }

-- | Constructs ReviewReport's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReviewReport' :: ( { "ReviewResults" :: NullOrUndefined.NullOrUndefined (ReviewResultDetailList) , "ReviewActions" :: NullOrUndefined.NullOrUndefined (ReviewActionDetailList) } -> {"ReviewResults" :: NullOrUndefined.NullOrUndefined (ReviewResultDetailList) , "ReviewActions" :: NullOrUndefined.NullOrUndefined (ReviewActionDetailList) } ) -> ReviewReport
newReviewReport'  customize = (ReviewReport <<< customize) { "ReviewActions": (NullOrUndefined Nothing), "ReviewResults": (NullOrUndefined Nothing) }



-- | <p> This data structure is returned multiple times for each result specified in the Review Policy. </p>
newtype ReviewResultDetail = ReviewResultDetail 
  { "ActionId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "SubjectId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "SubjectType" :: NullOrUndefined.NullOrUndefined (String)
  , "QuestionId" :: NullOrUndefined.NullOrUndefined (EntityId)
  , "Key" :: NullOrUndefined.NullOrUndefined (String)
  , "Value" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeReviewResultDetail :: Newtype ReviewResultDetail _
derive instance repGenericReviewResultDetail :: Generic ReviewResultDetail _
instance showReviewResultDetail :: Show ReviewResultDetail where
  show = genericShow
instance decodeReviewResultDetail :: Decode ReviewResultDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewResultDetail :: Encode ReviewResultDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ReviewResultDetail from required parameters
newReviewResultDetail :: ReviewResultDetail
newReviewResultDetail  = ReviewResultDetail { "ActionId": (NullOrUndefined Nothing), "Key": (NullOrUndefined Nothing), "QuestionId": (NullOrUndefined Nothing), "SubjectId": (NullOrUndefined Nothing), "SubjectType": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs ReviewResultDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReviewResultDetail' :: ( { "ActionId" :: NullOrUndefined.NullOrUndefined (EntityId) , "SubjectId" :: NullOrUndefined.NullOrUndefined (EntityId) , "SubjectType" :: NullOrUndefined.NullOrUndefined (String) , "QuestionId" :: NullOrUndefined.NullOrUndefined (EntityId) , "Key" :: NullOrUndefined.NullOrUndefined (String) , "Value" :: NullOrUndefined.NullOrUndefined (String) } -> {"ActionId" :: NullOrUndefined.NullOrUndefined (EntityId) , "SubjectId" :: NullOrUndefined.NullOrUndefined (EntityId) , "SubjectType" :: NullOrUndefined.NullOrUndefined (String) , "QuestionId" :: NullOrUndefined.NullOrUndefined (EntityId) , "Key" :: NullOrUndefined.NullOrUndefined (String) , "Value" :: NullOrUndefined.NullOrUndefined (String) } ) -> ReviewResultDetail
newReviewResultDetail'  customize = (ReviewResultDetail <<< customize) { "ActionId": (NullOrUndefined Nothing), "Key": (NullOrUndefined Nothing), "QuestionId": (NullOrUndefined Nothing), "SubjectId": (NullOrUndefined Nothing), "SubjectType": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype ReviewResultDetailList = ReviewResultDetailList (Array ReviewResultDetail)
derive instance newtypeReviewResultDetailList :: Newtype ReviewResultDetailList _
derive instance repGenericReviewResultDetailList :: Generic ReviewResultDetailList _
instance showReviewResultDetailList :: Show ReviewResultDetailList where
  show = genericShow
instance decodeReviewResultDetailList :: Decode ReviewResultDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewResultDetailList :: Encode ReviewResultDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ReviewableHITStatus = ReviewableHITStatus String
derive instance newtypeReviewableHITStatus :: Newtype ReviewableHITStatus _
derive instance repGenericReviewableHITStatus :: Generic ReviewableHITStatus _
instance showReviewableHITStatus :: Show ReviewableHITStatus where
  show = genericShow
instance decodeReviewableHITStatus :: Decode ReviewableHITStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReviewableHITStatus :: Encode ReviewableHITStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SendBonusRequest = SendBonusRequest 
  { "WorkerId" :: (CustomerId)
  , "BonusAmount" :: (CurrencyAmount)
  , "AssignmentId" :: (EntityId)
  , "Reason" :: (String)
  , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken)
  }
derive instance newtypeSendBonusRequest :: Newtype SendBonusRequest _
derive instance repGenericSendBonusRequest :: Generic SendBonusRequest _
instance showSendBonusRequest :: Show SendBonusRequest where
  show = genericShow
instance decodeSendBonusRequest :: Decode SendBonusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendBonusRequest :: Encode SendBonusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SendBonusRequest from required parameters
newSendBonusRequest :: EntityId -> CurrencyAmount -> String -> CustomerId -> SendBonusRequest
newSendBonusRequest _AssignmentId _BonusAmount _Reason _WorkerId = SendBonusRequest { "AssignmentId": _AssignmentId, "BonusAmount": _BonusAmount, "Reason": _Reason, "WorkerId": _WorkerId, "UniqueRequestToken": (NullOrUndefined Nothing) }

-- | Constructs SendBonusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendBonusRequest' :: EntityId -> CurrencyAmount -> String -> CustomerId -> ( { "WorkerId" :: (CustomerId) , "BonusAmount" :: (CurrencyAmount) , "AssignmentId" :: (EntityId) , "Reason" :: (String) , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) } -> {"WorkerId" :: (CustomerId) , "BonusAmount" :: (CurrencyAmount) , "AssignmentId" :: (EntityId) , "Reason" :: (String) , "UniqueRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) } ) -> SendBonusRequest
newSendBonusRequest' _AssignmentId _BonusAmount _Reason _WorkerId customize = (SendBonusRequest <<< customize) { "AssignmentId": _AssignmentId, "BonusAmount": _BonusAmount, "Reason": _Reason, "WorkerId": _WorkerId, "UniqueRequestToken": (NullOrUndefined Nothing) }



newtype SendBonusResponse = SendBonusResponse Types.NoArguments
derive instance newtypeSendBonusResponse :: Newtype SendBonusResponse _
derive instance repGenericSendBonusResponse :: Generic SendBonusResponse _
instance showSendBonusResponse :: Show SendBonusResponse where
  show = genericShow
instance decodeSendBonusResponse :: Decode SendBonusResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendBonusResponse :: Encode SendBonusResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SendTestEventNotificationRequest = SendTestEventNotificationRequest 
  { "Notification" :: (NotificationSpecification)
  , "TestEventType" :: (EventType)
  }
derive instance newtypeSendTestEventNotificationRequest :: Newtype SendTestEventNotificationRequest _
derive instance repGenericSendTestEventNotificationRequest :: Generic SendTestEventNotificationRequest _
instance showSendTestEventNotificationRequest :: Show SendTestEventNotificationRequest where
  show = genericShow
instance decodeSendTestEventNotificationRequest :: Decode SendTestEventNotificationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendTestEventNotificationRequest :: Encode SendTestEventNotificationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showSendTestEventNotificationResponse :: Show SendTestEventNotificationResponse where
  show = genericShow
instance decodeSendTestEventNotificationResponse :: Decode SendTestEventNotificationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendTestEventNotificationResponse :: Encode SendTestEventNotificationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
newtype ServiceFault = ServiceFault 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  , "TurkErrorCode" :: NullOrUndefined.NullOrUndefined (TurkErrorCode)
  }
derive instance newtypeServiceFault :: Newtype ServiceFault _
derive instance repGenericServiceFault :: Generic ServiceFault _
instance showServiceFault :: Show ServiceFault where
  show = genericShow
instance decodeServiceFault :: Decode ServiceFault where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceFault :: Encode ServiceFault where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceFault from required parameters
newServiceFault :: ServiceFault
newServiceFault  = ServiceFault { "Message": (NullOrUndefined Nothing), "TurkErrorCode": (NullOrUndefined Nothing) }

-- | Constructs ServiceFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceFault' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "TurkErrorCode" :: NullOrUndefined.NullOrUndefined (TurkErrorCode) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "TurkErrorCode" :: NullOrUndefined.NullOrUndefined (TurkErrorCode) } ) -> ServiceFault
newServiceFault'  customize = (ServiceFault <<< customize) { "Message": (NullOrUndefined Nothing), "TurkErrorCode": (NullOrUndefined Nothing) }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where
  show = genericShow
instance decodeStringList :: Decode StringList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringList :: Encode StringList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TurkErrorCode = TurkErrorCode String
derive instance newtypeTurkErrorCode :: Newtype TurkErrorCode _
derive instance repGenericTurkErrorCode :: Generic TurkErrorCode _
instance showTurkErrorCode :: Show TurkErrorCode where
  show = genericShow
instance decodeTurkErrorCode :: Decode TurkErrorCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTurkErrorCode :: Encode TurkErrorCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateExpirationForHITRequest = UpdateExpirationForHITRequest 
  { "HITId" :: (EntityId)
  , "ExpireAt" :: (Types.Timestamp)
  }
derive instance newtypeUpdateExpirationForHITRequest :: Newtype UpdateExpirationForHITRequest _
derive instance repGenericUpdateExpirationForHITRequest :: Generic UpdateExpirationForHITRequest _
instance showUpdateExpirationForHITRequest :: Show UpdateExpirationForHITRequest where
  show = genericShow
instance decodeUpdateExpirationForHITRequest :: Decode UpdateExpirationForHITRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateExpirationForHITRequest :: Encode UpdateExpirationForHITRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showUpdateExpirationForHITResponse :: Show UpdateExpirationForHITResponse where
  show = genericShow
instance decodeUpdateExpirationForHITResponse :: Decode UpdateExpirationForHITResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateExpirationForHITResponse :: Encode UpdateExpirationForHITResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateHITReviewStatusRequest = UpdateHITReviewStatusRequest 
  { "HITId" :: (EntityId)
  , "Revert" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeUpdateHITReviewStatusRequest :: Newtype UpdateHITReviewStatusRequest _
derive instance repGenericUpdateHITReviewStatusRequest :: Generic UpdateHITReviewStatusRequest _
instance showUpdateHITReviewStatusRequest :: Show UpdateHITReviewStatusRequest where
  show = genericShow
instance decodeUpdateHITReviewStatusRequest :: Decode UpdateHITReviewStatusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateHITReviewStatusRequest :: Encode UpdateHITReviewStatusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateHITReviewStatusRequest from required parameters
newUpdateHITReviewStatusRequest :: EntityId -> UpdateHITReviewStatusRequest
newUpdateHITReviewStatusRequest _HITId = UpdateHITReviewStatusRequest { "HITId": _HITId, "Revert": (NullOrUndefined Nothing) }

-- | Constructs UpdateHITReviewStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateHITReviewStatusRequest' :: EntityId -> ( { "HITId" :: (EntityId) , "Revert" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"HITId" :: (EntityId) , "Revert" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> UpdateHITReviewStatusRequest
newUpdateHITReviewStatusRequest' _HITId customize = (UpdateHITReviewStatusRequest <<< customize) { "HITId": _HITId, "Revert": (NullOrUndefined Nothing) }



newtype UpdateHITReviewStatusResponse = UpdateHITReviewStatusResponse Types.NoArguments
derive instance newtypeUpdateHITReviewStatusResponse :: Newtype UpdateHITReviewStatusResponse _
derive instance repGenericUpdateHITReviewStatusResponse :: Generic UpdateHITReviewStatusResponse _
instance showUpdateHITReviewStatusResponse :: Show UpdateHITReviewStatusResponse where
  show = genericShow
instance decodeUpdateHITReviewStatusResponse :: Decode UpdateHITReviewStatusResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateHITReviewStatusResponse :: Encode UpdateHITReviewStatusResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateHITTypeOfHITRequest = UpdateHITTypeOfHITRequest 
  { "HITId" :: (EntityId)
  , "HITTypeId" :: (EntityId)
  }
derive instance newtypeUpdateHITTypeOfHITRequest :: Newtype UpdateHITTypeOfHITRequest _
derive instance repGenericUpdateHITTypeOfHITRequest :: Generic UpdateHITTypeOfHITRequest _
instance showUpdateHITTypeOfHITRequest :: Show UpdateHITTypeOfHITRequest where
  show = genericShow
instance decodeUpdateHITTypeOfHITRequest :: Decode UpdateHITTypeOfHITRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateHITTypeOfHITRequest :: Encode UpdateHITTypeOfHITRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showUpdateHITTypeOfHITResponse :: Show UpdateHITTypeOfHITResponse where
  show = genericShow
instance decodeUpdateHITTypeOfHITResponse :: Decode UpdateHITTypeOfHITResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateHITTypeOfHITResponse :: Encode UpdateHITTypeOfHITResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateNotificationSettingsRequest = UpdateNotificationSettingsRequest 
  { "HITTypeId" :: (EntityId)
  , "Notification" :: NullOrUndefined.NullOrUndefined (NotificationSpecification)
  , "Active" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeUpdateNotificationSettingsRequest :: Newtype UpdateNotificationSettingsRequest _
derive instance repGenericUpdateNotificationSettingsRequest :: Generic UpdateNotificationSettingsRequest _
instance showUpdateNotificationSettingsRequest :: Show UpdateNotificationSettingsRequest where
  show = genericShow
instance decodeUpdateNotificationSettingsRequest :: Decode UpdateNotificationSettingsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateNotificationSettingsRequest :: Encode UpdateNotificationSettingsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateNotificationSettingsRequest from required parameters
newUpdateNotificationSettingsRequest :: EntityId -> UpdateNotificationSettingsRequest
newUpdateNotificationSettingsRequest _HITTypeId = UpdateNotificationSettingsRequest { "HITTypeId": _HITTypeId, "Active": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing) }

-- | Constructs UpdateNotificationSettingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateNotificationSettingsRequest' :: EntityId -> ( { "HITTypeId" :: (EntityId) , "Notification" :: NullOrUndefined.NullOrUndefined (NotificationSpecification) , "Active" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"HITTypeId" :: (EntityId) , "Notification" :: NullOrUndefined.NullOrUndefined (NotificationSpecification) , "Active" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> UpdateNotificationSettingsRequest
newUpdateNotificationSettingsRequest' _HITTypeId customize = (UpdateNotificationSettingsRequest <<< customize) { "HITTypeId": _HITTypeId, "Active": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing) }



newtype UpdateNotificationSettingsResponse = UpdateNotificationSettingsResponse Types.NoArguments
derive instance newtypeUpdateNotificationSettingsResponse :: Newtype UpdateNotificationSettingsResponse _
derive instance repGenericUpdateNotificationSettingsResponse :: Generic UpdateNotificationSettingsResponse _
instance showUpdateNotificationSettingsResponse :: Show UpdateNotificationSettingsResponse where
  show = genericShow
instance decodeUpdateNotificationSettingsResponse :: Decode UpdateNotificationSettingsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateNotificationSettingsResponse :: Encode UpdateNotificationSettingsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateQualificationTypeRequest = UpdateQualificationTypeRequest 
  { "QualificationTypeId" :: (EntityId)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "QualificationTypeStatus" :: NullOrUndefined.NullOrUndefined (QualificationTypeStatus)
  , "Test" :: NullOrUndefined.NullOrUndefined (String)
  , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String)
  , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number)
  , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeUpdateQualificationTypeRequest :: Newtype UpdateQualificationTypeRequest _
derive instance repGenericUpdateQualificationTypeRequest :: Generic UpdateQualificationTypeRequest _
instance showUpdateQualificationTypeRequest :: Show UpdateQualificationTypeRequest where
  show = genericShow
instance decodeUpdateQualificationTypeRequest :: Decode UpdateQualificationTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateQualificationTypeRequest :: Encode UpdateQualificationTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateQualificationTypeRequest from required parameters
newUpdateQualificationTypeRequest :: EntityId -> UpdateQualificationTypeRequest
newUpdateQualificationTypeRequest _QualificationTypeId = UpdateQualificationTypeRequest { "QualificationTypeId": _QualificationTypeId, "AnswerKey": (NullOrUndefined Nothing), "AutoGranted": (NullOrUndefined Nothing), "AutoGrantedValue": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "QualificationTypeStatus": (NullOrUndefined Nothing), "RetryDelayInSeconds": (NullOrUndefined Nothing), "Test": (NullOrUndefined Nothing), "TestDurationInSeconds": (NullOrUndefined Nothing) }

-- | Constructs UpdateQualificationTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateQualificationTypeRequest' :: EntityId -> ( { "QualificationTypeId" :: (EntityId) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "QualificationTypeStatus" :: NullOrUndefined.NullOrUndefined (QualificationTypeStatus) , "Test" :: NullOrUndefined.NullOrUndefined (String) , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String) , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int) } -> {"QualificationTypeId" :: (EntityId) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "QualificationTypeStatus" :: NullOrUndefined.NullOrUndefined (QualificationTypeStatus) , "Test" :: NullOrUndefined.NullOrUndefined (String) , "AnswerKey" :: NullOrUndefined.NullOrUndefined (String) , "TestDurationInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "RetryDelayInSeconds" :: NullOrUndefined.NullOrUndefined (Number) , "AutoGranted" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoGrantedValue" :: NullOrUndefined.NullOrUndefined (Int) } ) -> UpdateQualificationTypeRequest
newUpdateQualificationTypeRequest' _QualificationTypeId customize = (UpdateQualificationTypeRequest <<< customize) { "QualificationTypeId": _QualificationTypeId, "AnswerKey": (NullOrUndefined Nothing), "AutoGranted": (NullOrUndefined Nothing), "AutoGrantedValue": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "QualificationTypeStatus": (NullOrUndefined Nothing), "RetryDelayInSeconds": (NullOrUndefined Nothing), "Test": (NullOrUndefined Nothing), "TestDurationInSeconds": (NullOrUndefined Nothing) }



newtype UpdateQualificationTypeResponse = UpdateQualificationTypeResponse 
  { "QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType)
  }
derive instance newtypeUpdateQualificationTypeResponse :: Newtype UpdateQualificationTypeResponse _
derive instance repGenericUpdateQualificationTypeResponse :: Generic UpdateQualificationTypeResponse _
instance showUpdateQualificationTypeResponse :: Show UpdateQualificationTypeResponse where
  show = genericShow
instance decodeUpdateQualificationTypeResponse :: Decode UpdateQualificationTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateQualificationTypeResponse :: Encode UpdateQualificationTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateQualificationTypeResponse from required parameters
newUpdateQualificationTypeResponse :: UpdateQualificationTypeResponse
newUpdateQualificationTypeResponse  = UpdateQualificationTypeResponse { "QualificationType": (NullOrUndefined Nothing) }

-- | Constructs UpdateQualificationTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateQualificationTypeResponse' :: ( { "QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType) } -> {"QualificationType" :: NullOrUndefined.NullOrUndefined (QualificationType) } ) -> UpdateQualificationTypeResponse
newUpdateQualificationTypeResponse'  customize = (UpdateQualificationTypeResponse <<< customize) { "QualificationType": (NullOrUndefined Nothing) }



-- | <p> The WorkerBlock data structure represents a Worker who has been blocked. It has two elements: the WorkerId and the Reason for the block. </p>
newtype WorkerBlock = WorkerBlock 
  { "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId)
  , "Reason" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeWorkerBlock :: Newtype WorkerBlock _
derive instance repGenericWorkerBlock :: Generic WorkerBlock _
instance showWorkerBlock :: Show WorkerBlock where
  show = genericShow
instance decodeWorkerBlock :: Decode WorkerBlock where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeWorkerBlock :: Encode WorkerBlock where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs WorkerBlock from required parameters
newWorkerBlock :: WorkerBlock
newWorkerBlock  = WorkerBlock { "Reason": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }

-- | Constructs WorkerBlock's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkerBlock' :: ( { "WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } -> {"WorkerId" :: NullOrUndefined.NullOrUndefined (CustomerId) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } ) -> WorkerBlock
newWorkerBlock'  customize = (WorkerBlock <<< customize) { "Reason": (NullOrUndefined Nothing), "WorkerId": (NullOrUndefined Nothing) }



newtype WorkerBlockList = WorkerBlockList (Array WorkerBlock)
derive instance newtypeWorkerBlockList :: Newtype WorkerBlockList _
derive instance repGenericWorkerBlockList :: Generic WorkerBlockList _
instance showWorkerBlockList :: Show WorkerBlockList where
  show = genericShow
instance decodeWorkerBlockList :: Decode WorkerBlockList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeWorkerBlockList :: Encode WorkerBlockList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

