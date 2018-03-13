## Module AWS.MTurk

<fullname>Amazon Mechanical Turk API Reference</fullname>

#### `acceptQualificationRequest`

``` purescript
acceptQualificationRequest :: forall eff. AcceptQualificationRequestRequest -> Aff (exception :: EXCEPTION | eff) AcceptQualificationRequestResponse
```

<p> The <code>AcceptQualificationRequest</code> operation approves a Worker's request for a Qualification. </p> <p> Only the owner of the Qualification type can grant a Qualification request for that type. </p> <p> A successful request for the <code>AcceptQualificationRequest</code> operation returns with no errors and an empty body. </p>

#### `approveAssignment`

``` purescript
approveAssignment :: forall eff. ApproveAssignmentRequest -> Aff (exception :: EXCEPTION | eff) ApproveAssignmentResponse
```

<p> The <code>ApproveAssignment</code> operation approves the results of a completed assignment. </p> <p> Approving an assignment initiates two payments from the Requester's Amazon.com account </p> <ul> <li> <p> The Worker who submitted the results is paid the reward specified in the HIT. </p> </li> <li> <p> Amazon Mechanical Turk fees are debited. </p> </li> </ul> <p> If the Requester's account does not have adequate funds for these payments, the call to ApproveAssignment returns an exception, and the approval is not processed. You can include an optional feedback message with the approval, which the Worker can see in the Status section of the web site. </p> <p> You can also call this operation for assignments that were previous rejected and approve them by explicitly overriding the previous rejection. This only works on rejected assignments that were submitted within the previous 30 days and only if the assignment's related HIT has not been deleted. </p>

#### `associateQualificationWithWorker`

``` purescript
associateQualificationWithWorker :: forall eff. AssociateQualificationWithWorkerRequest -> Aff (exception :: EXCEPTION | eff) AssociateQualificationWithWorkerResponse
```

<p> The <code>AssociateQualificationWithWorker</code> operation gives a Worker a Qualification. <code>AssociateQualificationWithWorker</code> does not require that the Worker submit a Qualification request. It gives the Qualification directly to the Worker. </p> <p> You can only assign a Qualification of a Qualification type that you created (using the <code>CreateQualificationType</code> operation). </p> <note> <p> Note: <code>AssociateQualificationWithWorker</code> does not affect any pending Qualification requests for the Qualification by the Worker. If you assign a Qualification to a Worker, then later grant a Qualification request made by the Worker, the granting of the request may modify the Qualification score. To resolve a pending Qualification request without affecting the Qualification the Worker already has, reject the request with the <code>RejectQualificationRequest</code> operation. </p> </note>

#### `createAdditionalAssignmentsForHIT`

``` purescript
createAdditionalAssignmentsForHIT :: forall eff. CreateAdditionalAssignmentsForHITRequest -> Aff (exception :: EXCEPTION | eff) CreateAdditionalAssignmentsForHITResponse
```

<p> The <code>CreateAdditionalAssignmentsForHIT</code> operation increases the maximum number of assignments of an existing HIT. </p> <p> To extend the maximum number of assignments, specify the number of additional assignments.</p> <note> <ul> <li> <p>HITs created with fewer than 10 assignments cannot be extended to have 10 or more assignments. Attempting to add assignments in a way that brings the total number of assignments for a HIT from fewer than 10 assignments to 10 or more assignments will result in an <code>AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease</code> exception.</p> </li> <li> <p>HITs that were created before July 22, 2015 cannot be extended. Attempting to extend HITs that were created before July 22, 2015 will result in an <code>AWS.MechanicalTurk.HITTooOldForExtension</code> exception. </p> </li> </ul> </note>

#### `createHIT`

``` purescript
createHIT :: forall eff. CreateHITRequest -> Aff (exception :: EXCEPTION | eff) CreateHITResponse
```

<p>The <code>CreateHIT</code> operation creates a new Human Intelligence Task (HIT). The new HIT is made available for Workers to find and accept on the Amazon Mechanical Turk website. </p> <p> This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to <code>CreateHIT</code>, a new HIT is created for you, with a new <code>HITTypeID</code>. The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.</p> <p> An alternative way to create HITs is to first generate a HITTypeID using the <code>CreateHITType</code> operation and then call the <code>CreateHITWithHITType</code> operation. This is the recommended best practice for Requesters who are creating large numbers of HITs. </p> <p>CreateHIT also supports several ways to provide question data: by providing a value for the <code>Question</code> parameter that fully specifies the contents of the HIT, or by providing a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>. </p> <note> <p> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>.</p> </note>

#### `createHITType`

``` purescript
createHITType :: forall eff. CreateHITTypeRequest -> Aff (exception :: EXCEPTION | eff) CreateHITTypeResponse
```

<p> The <code>CreateHITType</code> operation creates a new HIT type. This operation allows you to define a standard set of HIT properties to use when creating HITs. If you register a HIT type with values that match an existing HIT type, the HIT type ID of the existing type will be returned. </p>

#### `createHITWithHITType`

``` purescript
createHITWithHITType :: forall eff. CreateHITWithHITTypeRequest -> Aff (exception :: EXCEPTION | eff) CreateHITWithHITTypeResponse
```

<p> The <code>CreateHITWithHITType</code> operation creates a new Human Intelligence Task (HIT) using an existing HITTypeID generated by the <code>CreateHITType</code> operation. </p> <p> This is an alternative way to create HITs from the <code>CreateHIT</code> operation. This is the recommended best practice for Requesters who are creating large numbers of HITs. </p> <p>CreateHITWithHITType also supports several ways to provide question data: by providing a value for the <code>Question</code> parameter that fully specifies the contents of the HIT, or by providing a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>. </p> <note> <p> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>. </p> </note>

#### `createQualificationType`

``` purescript
createQualificationType :: forall eff. CreateQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) CreateQualificationTypeResponse
```

<p> The <code>CreateQualificationType</code> operation creates a new Qualification type, which is represented by a <code>QualificationType</code> data structure. </p>

#### `createWorkerBlock`

``` purescript
createWorkerBlock :: forall eff. CreateWorkerBlockRequest -> Aff (exception :: EXCEPTION | eff) CreateWorkerBlockResponse
```

<p>The <code>CreateWorkerBlock</code> operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.</p>

#### `deleteHIT`

``` purescript
deleteHIT :: forall eff. DeleteHITRequest -> Aff (exception :: EXCEPTION | eff) DeleteHITResponse
```

<p> The <code>DeleteHIT</code> operation is used to delete HIT that is no longer needed. Only the Requester who created the HIT can delete it. </p> <p> You can only dispose of HITs that are in the <code>Reviewable</code> state, with all of their submitted assignments already either approved or rejected. If you call the DeleteHIT operation on a HIT that is not in the <code>Reviewable</code> state (for example, that has not expired, or still has active assignments), or on a HIT that is Reviewable but without all of its submitted assignments already approved or rejected, the service will return an error. </p> <note> <ul> <li> <p> HITs are automatically disposed of after 120 days. </p> </li> <li> <p> After you dispose of a HIT, you can no longer approve the HIT's rejected assignments. </p> </li> <li> <p> Disposed HITs are not returned in results for the ListHITs operation. </p> </li> <li> <p> Disposing HITs can improve the performance of operations such as ListReviewableHITs and ListHITs. </p> </li> </ul> </note>

#### `deleteQualificationType`

``` purescript
deleteQualificationType :: forall eff. DeleteQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) DeleteQualificationTypeResponse
```

<p> The <code>DeleteQualificationType</code> deletes a Qualification type and deletes any HIT types that are associated with the Qualification type. </p> <p>This operation does not revoke Qualifications already assigned to Workers because the Qualifications might be needed for active HITs. If there are any pending requests for the Qualification type, Amazon Mechanical Turk rejects those requests. After you delete a Qualification type, you can no longer use it to create HITs or HIT types.</p> <note> <p>DeleteQualificationType must wait for all the HITs that use the deleted Qualification type to be deleted before completing. It may take up to 48 hours before DeleteQualificationType completes and the unique name of the Qualification type is available for reuse with CreateQualificationType.</p> </note>

#### `deleteWorkerBlock`

``` purescript
deleteWorkerBlock :: forall eff. DeleteWorkerBlockRequest -> Aff (exception :: EXCEPTION | eff) DeleteWorkerBlockResponse
```

<p>The <code>DeleteWorkerBlock</code> operation allows you to reinstate a blocked Worker to work on your HITs. This operation reverses the effects of the CreateWorkerBlock operation. You need the Worker ID to use this operation. If the Worker ID is missing or invalid, this operation fails and returns the message “WorkerId is invalid.” If the specified Worker is not blocked, this operation returns successfully.</p>

#### `disassociateQualificationFromWorker`

``` purescript
disassociateQualificationFromWorker :: forall eff. DisassociateQualificationFromWorkerRequest -> Aff (exception :: EXCEPTION | eff) DisassociateQualificationFromWorkerResponse
```

<p> The <code>DisassociateQualificationFromWorker</code> revokes a previously granted Qualification from a user. </p> <p> You can provide a text message explaining why the Qualification was revoked. The user who had the Qualification can see this message. </p>

#### `getAccountBalance`

``` purescript
getAccountBalance :: forall eff. GetAccountBalanceRequest -> Aff (exception :: EXCEPTION | eff) GetAccountBalanceResponse
```

<p>The <code>GetAccountBalance</code> operation retrieves the amount of money in your Amazon Mechanical Turk account.</p>

#### `getAssignment`

``` purescript
getAssignment :: forall eff. GetAssignmentRequest -> Aff (exception :: EXCEPTION | eff) GetAssignmentResponse
```

<p> The <code>GetAssignment</code> operation retrieves the details of the specified Assignment. </p>

#### `getFileUploadURL`

``` purescript
getFileUploadURL :: forall eff. GetFileUploadURLRequest -> Aff (exception :: EXCEPTION | eff) GetFileUploadURLResponse
```

<p> The <code>GetFileUploadURL</code> operation generates and returns a temporary URL. You use the temporary URL to retrieve a file uploaded by a Worker as an answer to a FileUploadAnswer question for a HIT. The temporary URL is generated the instant the GetFileUploadURL operation is called, and is valid for 60 seconds. You can get a temporary file upload URL any time until the HIT is disposed. After the HIT is disposed, any uploaded files are deleted, and cannot be retrieved. Pending Deprecation on December 12, 2017. The Answer Specification structure will no longer support the <code>FileUploadAnswer</code> element to be used for the QuestionForm data structure. Instead, we recommend that Requesters who want to create HITs asking Workers to upload files to use Amazon S3. </p>

#### `getHIT`

``` purescript
getHIT :: forall eff. GetHITRequest -> Aff (exception :: EXCEPTION | eff) GetHITResponse
```

<p> The <code>GetHIT</code> operation retrieves the details of the specified HIT. </p>

#### `getQualificationScore`

``` purescript
getQualificationScore :: forall eff. GetQualificationScoreRequest -> Aff (exception :: EXCEPTION | eff) GetQualificationScoreResponse
```

<p> The <code>GetQualificationScore</code> operation returns the value of a Worker's Qualification for a given Qualification type. </p> <p> To get a Worker's Qualification, you must know the Worker's ID. The Worker's ID is included in the assignment data returned by the <code>ListAssignmentsForHIT</code> operation. </p> <p>Only the owner of a Qualification type can query the value of a Worker's Qualification of that type.</p>

#### `getQualificationType`

``` purescript
getQualificationType :: forall eff. GetQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) GetQualificationTypeResponse
```

<p> The <code>GetQualificationType</code>operation retrieves information about a Qualification type using its ID. </p>

#### `listAssignmentsForHIT`

``` purescript
listAssignmentsForHIT :: forall eff. ListAssignmentsForHITRequest -> Aff (exception :: EXCEPTION | eff) ListAssignmentsForHITResponse
```

<p> The <code>ListAssignmentsForHIT</code> operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT. </p> <p> You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation. </p> <p> Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set. </p> <p> Only the Requester who created the HIT can retrieve the assignments for that HIT. </p> <p> Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination. </p>

#### `listBonusPayments`

``` purescript
listBonusPayments :: forall eff. ListBonusPaymentsRequest -> Aff (exception :: EXCEPTION | eff) ListBonusPaymentsResponse
```

<p> The <code>ListBonusPayments</code> operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment. </p>

#### `listHITs`

``` purescript
listHITs :: forall eff. ListHITsRequest -> Aff (exception :: EXCEPTION | eff) ListHITsResponse
```

<p> The <code>ListHITs</code> operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted. </p>

#### `listHITsForQualificationType`

``` purescript
listHITsForQualificationType :: forall eff. ListHITsForQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) ListHITsForQualificationTypeResponse
```

<p> The <code>ListHITsForQualificationType</code> operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the <code>DeleteHIT</code> operation or that have been auto-deleted. </p>

#### `listQualificationRequests`

``` purescript
listQualificationRequests :: forall eff. ListQualificationRequestsRequest -> Aff (exception :: EXCEPTION | eff) ListQualificationRequestsResponse
```

<p> The <code>ListQualificationRequests</code> operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation. </p>

#### `listQualificationTypes`

``` purescript
listQualificationTypes :: forall eff. ListQualificationTypesRequest -> Aff (exception :: EXCEPTION | eff) ListQualificationTypesResponse
```

<p> The <code>ListQualificationRequests</code> operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation. </p>

#### `listReviewPolicyResultsForHIT`

``` purescript
listReviewPolicyResultsForHIT :: forall eff. ListReviewPolicyResultsForHITRequest -> Aff (exception :: EXCEPTION | eff) ListReviewPolicyResultsForHITResponse
```

<p> The <code>ListReviewPolicyResultsForHIT</code> operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results. </p>

#### `listReviewableHITs`

``` purescript
listReviewableHITs :: forall eff. ListReviewableHITsRequest -> Aff (exception :: EXCEPTION | eff) ListReviewableHITsResponse
```

<p> The <code>ListReviewableHITs</code> operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation. </p>

#### `listWorkerBlocks`

``` purescript
listWorkerBlocks :: forall eff. ListWorkerBlocksRequest -> Aff (exception :: EXCEPTION | eff) ListWorkerBlocksResponse
```

<p>The <code>ListWorkersBlocks</code> operation retrieves a list of Workers who are blocked from working on your HITs.</p>

#### `listWorkersWithQualificationType`

``` purescript
listWorkersWithQualificationType :: forall eff. ListWorkersWithQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) ListWorkersWithQualificationTypeResponse
```

<p> The <code>ListWorkersWithQualificationType</code> operation returns all of the Workers that have been associated with a given Qualification type. </p>

#### `notifyWorkers`

``` purescript
notifyWorkers :: forall eff. NotifyWorkersRequest -> Aff (exception :: EXCEPTION | eff) NotifyWorkersResponse
```

<p> The <code>NotifyWorkers</code> operation sends an email to one or more Workers that you specify with the Worker ID. You can specify up to 100 Worker IDs to send the same message with a single call to the NotifyWorkers operation. The NotifyWorkers operation will send a notification email to a Worker only if you have previously approved or rejected work from the Worker. </p>

#### `rejectAssignment`

``` purescript
rejectAssignment :: forall eff. RejectAssignmentRequest -> Aff (exception :: EXCEPTION | eff) RejectAssignmentResponse
```

<p> The <code>RejectAssignment</code> operation rejects the results of a completed assignment. </p> <p> You can include an optional feedback message with the rejection, which the Worker can see in the Status section of the web site. When you include a feedback message with the rejection, it helps the Worker understand why the assignment was rejected, and can improve the quality of the results the Worker submits in the future. </p> <p> Only the Requester who created the HIT can reject an assignment for the HIT. </p>

#### `rejectQualificationRequest`

``` purescript
rejectQualificationRequest :: forall eff. RejectQualificationRequestRequest -> Aff (exception :: EXCEPTION | eff) RejectQualificationRequestResponse
```

<p> The <code>RejectQualificationRequest</code> operation rejects a user's request for a Qualification. </p> <p> You can provide a text message explaining why the request was rejected. The Worker who made the request can see this message.</p>

#### `sendBonus`

``` purescript
sendBonus :: forall eff. SendBonusRequest -> Aff (exception :: EXCEPTION | eff) SendBonusResponse
```

<p> The <code>SendBonus</code> operation issues a payment of money from your account to a Worker. This payment happens separately from the reward you pay to the Worker when you approve the Worker's assignment. The SendBonus operation requires the Worker's ID and the assignment ID as parameters to initiate payment of the bonus. You must include a message that explains the reason for the bonus payment, as the Worker may not be expecting the payment. Amazon Mechanical Turk collects a fee for bonus payments, similar to the HIT listing fee. This operation fails if your account does not have enough funds to pay for both the bonus and the fees. </p>

#### `sendTestEventNotification`

``` purescript
sendTestEventNotification :: forall eff. SendTestEventNotificationRequest -> Aff (exception :: EXCEPTION | eff) SendTestEventNotificationResponse
```

<p> The <code>SendTestEventNotification</code> operation causes Amazon Mechanical Turk to send a notification message as if a HIT event occurred, according to the provided notification specification. This allows you to test notifications without setting up notifications for a real HIT type and trying to trigger them using the website. When you call this operation, the service attempts to send the test notification immediately. </p>

#### `updateExpirationForHIT`

``` purescript
updateExpirationForHIT :: forall eff. UpdateExpirationForHITRequest -> Aff (exception :: EXCEPTION | eff) UpdateExpirationForHITResponse
```

<p> The <code>UpdateExpirationForHIT</code> operation allows you update the expiration time of a HIT. If you update it to a time in the past, the HIT will be immediately expired. </p>

#### `updateHITReviewStatus`

``` purescript
updateHITReviewStatus :: forall eff. UpdateHITReviewStatusRequest -> Aff (exception :: EXCEPTION | eff) UpdateHITReviewStatusResponse
```

<p> The <code>UpdateHITReviewStatus</code> operation updates the status of a HIT. If the status is Reviewable, this operation can update the status to Reviewing, or it can revert a Reviewing HIT back to the Reviewable status. </p>

#### `updateHITTypeOfHIT`

``` purescript
updateHITTypeOfHIT :: forall eff. UpdateHITTypeOfHITRequest -> Aff (exception :: EXCEPTION | eff) UpdateHITTypeOfHITResponse
```

<p> The <code>UpdateHITTypeOfHIT</code> operation allows you to change the HITType properties of a HIT. This operation disassociates the HIT from its old HITType properties and associates it with the new HITType properties. The HIT takes on the properties of the new HITType in place of the old ones. </p>

#### `updateNotificationSettings`

``` purescript
updateNotificationSettings :: forall eff. UpdateNotificationSettingsRequest -> Aff (exception :: EXCEPTION | eff) UpdateNotificationSettingsResponse
```

<p> The <code>UpdateNotificationSettings</code> operation creates, updates, disables or re-enables notifications for a HIT type. If you call the UpdateNotificationSettings operation for a HIT type that already has a notification specification, the operation replaces the old specification with a new one. You can call the UpdateNotificationSettings operation to enable or disable notifications for the HIT type, without having to modify the notification specification itself by providing updates to the Active status without specifying a new notification specification. To change the Active status of a HIT type's notifications, the HIT type must already have a notification specification, or one must be provided in the same call to <code>UpdateNotificationSettings</code>. </p>

#### `updateQualificationType`

``` purescript
updateQualificationType :: forall eff. UpdateQualificationTypeRequest -> Aff (exception :: EXCEPTION | eff) UpdateQualificationTypeResponse
```

<p> The <code>UpdateQualificationType</code> operation modifies the attributes of an existing Qualification type, which is represented by a QualificationType data structure. Only the owner of a Qualification type can modify its attributes. </p> <p> Most attributes of a Qualification type can be changed after the type has been created. However, the Name and Keywords fields cannot be modified. The RetryDelayInSeconds parameter can be modified or added to change the delay or to enable retries, but RetryDelayInSeconds cannot be used to disable retries. </p> <p> You can use this operation to update the test for a Qualification type. The test is updated based on the values specified for the Test, TestDurationInSeconds and AnswerKey parameters. All three parameters specify the updated test. If you are updating the test for a type, you must specify the Test and TestDurationInSeconds parameters. The AnswerKey parameter is optional; omitting it specifies that the updated test does not have an answer key. </p> <p> If you omit the Test parameter, the test for the Qualification type is unchanged. There is no way to remove a test from a Qualification type that has one. If the type already has a test, you cannot update it to be AutoGranted. If the Qualification type does not have a test and one is provided by an update, the type will henceforth have a test. </p> <p> If you want to update the test duration or answer key for an existing test without changing the questions, you must specify a Test parameter with the original questions, along with the updated values. </p> <p> If you provide an updated Test but no AnswerKey, the new test will not have an answer key. Requests for such Qualifications must be granted manually. </p> <p> You can also update the AutoGranted and AutoGrantedValue attributes of the Qualification type.</p>

#### `AcceptQualificationRequestRequest`

``` purescript
newtype AcceptQualificationRequestRequest
  = AcceptQualificationRequestRequest { "QualificationRequestId" :: String, "IntegerValue" :: NullOrUndefined (Int) }
```

##### Instances
``` purescript
Newtype AcceptQualificationRequestRequest _
Generic AcceptQualificationRequestRequest _
Show AcceptQualificationRequestRequest
Decode AcceptQualificationRequestRequest
Encode AcceptQualificationRequestRequest
```

#### `newAcceptQualificationRequestRequest`

``` purescript
newAcceptQualificationRequestRequest :: String -> AcceptQualificationRequestRequest
```

Constructs AcceptQualificationRequestRequest from required parameters

#### `newAcceptQualificationRequestRequest'`

``` purescript
newAcceptQualificationRequestRequest' :: String -> ({ "QualificationRequestId" :: String, "IntegerValue" :: NullOrUndefined (Int) } -> { "QualificationRequestId" :: String, "IntegerValue" :: NullOrUndefined (Int) }) -> AcceptQualificationRequestRequest
```

Constructs AcceptQualificationRequestRequest's fields from required parameters

#### `AcceptQualificationRequestResponse`

``` purescript
newtype AcceptQualificationRequestResponse
  = AcceptQualificationRequestResponse NoArguments
```

##### Instances
``` purescript
Newtype AcceptQualificationRequestResponse _
Generic AcceptQualificationRequestResponse _
Show AcceptQualificationRequestResponse
Decode AcceptQualificationRequestResponse
Encode AcceptQualificationRequestResponse
```

#### `ApproveAssignmentRequest`

``` purescript
newtype ApproveAssignmentRequest
  = ApproveAssignmentRequest { "AssignmentId" :: EntityId, "RequesterFeedback" :: NullOrUndefined (String), "OverrideRejection" :: NullOrUndefined (Boolean) }
```

##### Instances
``` purescript
Newtype ApproveAssignmentRequest _
Generic ApproveAssignmentRequest _
Show ApproveAssignmentRequest
Decode ApproveAssignmentRequest
Encode ApproveAssignmentRequest
```

#### `newApproveAssignmentRequest`

``` purescript
newApproveAssignmentRequest :: EntityId -> ApproveAssignmentRequest
```

Constructs ApproveAssignmentRequest from required parameters

#### `newApproveAssignmentRequest'`

``` purescript
newApproveAssignmentRequest' :: EntityId -> ({ "AssignmentId" :: EntityId, "RequesterFeedback" :: NullOrUndefined (String), "OverrideRejection" :: NullOrUndefined (Boolean) } -> { "AssignmentId" :: EntityId, "RequesterFeedback" :: NullOrUndefined (String), "OverrideRejection" :: NullOrUndefined (Boolean) }) -> ApproveAssignmentRequest
```

Constructs ApproveAssignmentRequest's fields from required parameters

#### `ApproveAssignmentResponse`

``` purescript
newtype ApproveAssignmentResponse
  = ApproveAssignmentResponse NoArguments
```

##### Instances
``` purescript
Newtype ApproveAssignmentResponse _
Generic ApproveAssignmentResponse _
Show ApproveAssignmentResponse
Decode ApproveAssignmentResponse
Encode ApproveAssignmentResponse
```

#### `Assignment`

``` purescript
newtype Assignment
  = Assignment { "AssignmentId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "HITId" :: NullOrUndefined (EntityId), "AssignmentStatus" :: NullOrUndefined (AssignmentStatus), "AutoApprovalTime" :: NullOrUndefined (Timestamp), "AcceptTime" :: NullOrUndefined (Timestamp), "SubmitTime" :: NullOrUndefined (Timestamp), "ApprovalTime" :: NullOrUndefined (Timestamp), "RejectionTime" :: NullOrUndefined (Timestamp), "Deadline" :: NullOrUndefined (Timestamp), "Answer" :: NullOrUndefined (String), "RequesterFeedback" :: NullOrUndefined (String) }
```

<p> The Assignment data structure represents a single assignment of a HIT to a Worker. The assignment tracks the Worker's efforts to complete the HIT, and contains the results for later retrieval. </p>

##### Instances
``` purescript
Newtype Assignment _
Generic Assignment _
Show Assignment
Decode Assignment
Encode Assignment
```

#### `newAssignment`

``` purescript
newAssignment :: Assignment
```

Constructs Assignment from required parameters

#### `newAssignment'`

``` purescript
newAssignment' :: ({ "AssignmentId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "HITId" :: NullOrUndefined (EntityId), "AssignmentStatus" :: NullOrUndefined (AssignmentStatus), "AutoApprovalTime" :: NullOrUndefined (Timestamp), "AcceptTime" :: NullOrUndefined (Timestamp), "SubmitTime" :: NullOrUndefined (Timestamp), "ApprovalTime" :: NullOrUndefined (Timestamp), "RejectionTime" :: NullOrUndefined (Timestamp), "Deadline" :: NullOrUndefined (Timestamp), "Answer" :: NullOrUndefined (String), "RequesterFeedback" :: NullOrUndefined (String) } -> { "AssignmentId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "HITId" :: NullOrUndefined (EntityId), "AssignmentStatus" :: NullOrUndefined (AssignmentStatus), "AutoApprovalTime" :: NullOrUndefined (Timestamp), "AcceptTime" :: NullOrUndefined (Timestamp), "SubmitTime" :: NullOrUndefined (Timestamp), "ApprovalTime" :: NullOrUndefined (Timestamp), "RejectionTime" :: NullOrUndefined (Timestamp), "Deadline" :: NullOrUndefined (Timestamp), "Answer" :: NullOrUndefined (String), "RequesterFeedback" :: NullOrUndefined (String) }) -> Assignment
```

Constructs Assignment's fields from required parameters

#### `AssignmentList`

``` purescript
newtype AssignmentList
  = AssignmentList (Array Assignment)
```

##### Instances
``` purescript
Newtype AssignmentList _
Generic AssignmentList _
Show AssignmentList
Decode AssignmentList
Encode AssignmentList
```

#### `AssignmentStatus`

``` purescript
newtype AssignmentStatus
  = AssignmentStatus String
```

##### Instances
``` purescript
Newtype AssignmentStatus _
Generic AssignmentStatus _
Show AssignmentStatus
Decode AssignmentStatus
Encode AssignmentStatus
```

#### `AssignmentStatusList`

``` purescript
newtype AssignmentStatusList
  = AssignmentStatusList (Array AssignmentStatus)
```

##### Instances
``` purescript
Newtype AssignmentStatusList _
Generic AssignmentStatusList _
Show AssignmentStatusList
Decode AssignmentStatusList
Encode AssignmentStatusList
```

#### `AssociateQualificationWithWorkerRequest`

``` purescript
newtype AssociateQualificationWithWorkerRequest
  = AssociateQualificationWithWorkerRequest { "QualificationTypeId" :: EntityId, "WorkerId" :: CustomerId, "IntegerValue" :: NullOrUndefined (Int), "SendNotification" :: NullOrUndefined (Boolean) }
```

##### Instances
``` purescript
Newtype AssociateQualificationWithWorkerRequest _
Generic AssociateQualificationWithWorkerRequest _
Show AssociateQualificationWithWorkerRequest
Decode AssociateQualificationWithWorkerRequest
Encode AssociateQualificationWithWorkerRequest
```

#### `newAssociateQualificationWithWorkerRequest`

``` purescript
newAssociateQualificationWithWorkerRequest :: EntityId -> CustomerId -> AssociateQualificationWithWorkerRequest
```

Constructs AssociateQualificationWithWorkerRequest from required parameters

#### `newAssociateQualificationWithWorkerRequest'`

``` purescript
newAssociateQualificationWithWorkerRequest' :: EntityId -> CustomerId -> ({ "QualificationTypeId" :: EntityId, "WorkerId" :: CustomerId, "IntegerValue" :: NullOrUndefined (Int), "SendNotification" :: NullOrUndefined (Boolean) } -> { "QualificationTypeId" :: EntityId, "WorkerId" :: CustomerId, "IntegerValue" :: NullOrUndefined (Int), "SendNotification" :: NullOrUndefined (Boolean) }) -> AssociateQualificationWithWorkerRequest
```

Constructs AssociateQualificationWithWorkerRequest's fields from required parameters

#### `AssociateQualificationWithWorkerResponse`

``` purescript
newtype AssociateQualificationWithWorkerResponse
  = AssociateQualificationWithWorkerResponse NoArguments
```

##### Instances
``` purescript
Newtype AssociateQualificationWithWorkerResponse _
Generic AssociateQualificationWithWorkerResponse _
Show AssociateQualificationWithWorkerResponse
Decode AssociateQualificationWithWorkerResponse
Encode AssociateQualificationWithWorkerResponse
```

#### `BonusPayment`

``` purescript
newtype BonusPayment
  = BonusPayment { "WorkerId" :: NullOrUndefined (CustomerId), "BonusAmount" :: NullOrUndefined (CurrencyAmount), "AssignmentId" :: NullOrUndefined (EntityId), "Reason" :: NullOrUndefined (String), "GrantTime" :: NullOrUndefined (Timestamp) }
```

<p>An object representing a Bonus payment paid to a Worker.</p>

##### Instances
``` purescript
Newtype BonusPayment _
Generic BonusPayment _
Show BonusPayment
Decode BonusPayment
Encode BonusPayment
```

#### `newBonusPayment`

``` purescript
newBonusPayment :: BonusPayment
```

Constructs BonusPayment from required parameters

#### `newBonusPayment'`

``` purescript
newBonusPayment' :: ({ "WorkerId" :: NullOrUndefined (CustomerId), "BonusAmount" :: NullOrUndefined (CurrencyAmount), "AssignmentId" :: NullOrUndefined (EntityId), "Reason" :: NullOrUndefined (String), "GrantTime" :: NullOrUndefined (Timestamp) } -> { "WorkerId" :: NullOrUndefined (CustomerId), "BonusAmount" :: NullOrUndefined (CurrencyAmount), "AssignmentId" :: NullOrUndefined (EntityId), "Reason" :: NullOrUndefined (String), "GrantTime" :: NullOrUndefined (Timestamp) }) -> BonusPayment
```

Constructs BonusPayment's fields from required parameters

#### `BonusPaymentList`

``` purescript
newtype BonusPaymentList
  = BonusPaymentList (Array BonusPayment)
```

##### Instances
``` purescript
Newtype BonusPaymentList _
Generic BonusPaymentList _
Show BonusPaymentList
Decode BonusPaymentList
Encode BonusPaymentList
```

#### `Comparator`

``` purescript
newtype Comparator
  = Comparator String
```

##### Instances
``` purescript
Newtype Comparator _
Generic Comparator _
Show Comparator
Decode Comparator
Encode Comparator
```

#### `CountryParameters`

``` purescript
newtype CountryParameters
  = CountryParameters String
```

##### Instances
``` purescript
Newtype CountryParameters _
Generic CountryParameters _
Show CountryParameters
Decode CountryParameters
Encode CountryParameters
```

#### `CreateAdditionalAssignmentsForHITRequest`

``` purescript
newtype CreateAdditionalAssignmentsForHITRequest
  = CreateAdditionalAssignmentsForHITRequest { "HITId" :: EntityId, "NumberOfAdditionalAssignments" :: Int, "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken) }
```

##### Instances
``` purescript
Newtype CreateAdditionalAssignmentsForHITRequest _
Generic CreateAdditionalAssignmentsForHITRequest _
Show CreateAdditionalAssignmentsForHITRequest
Decode CreateAdditionalAssignmentsForHITRequest
Encode CreateAdditionalAssignmentsForHITRequest
```

#### `newCreateAdditionalAssignmentsForHITRequest`

``` purescript
newCreateAdditionalAssignmentsForHITRequest :: EntityId -> Int -> CreateAdditionalAssignmentsForHITRequest
```

Constructs CreateAdditionalAssignmentsForHITRequest from required parameters

#### `newCreateAdditionalAssignmentsForHITRequest'`

``` purescript
newCreateAdditionalAssignmentsForHITRequest' :: EntityId -> Int -> ({ "HITId" :: EntityId, "NumberOfAdditionalAssignments" :: Int, "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken) } -> { "HITId" :: EntityId, "NumberOfAdditionalAssignments" :: Int, "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken) }) -> CreateAdditionalAssignmentsForHITRequest
```

Constructs CreateAdditionalAssignmentsForHITRequest's fields from required parameters

#### `CreateAdditionalAssignmentsForHITResponse`

``` purescript
newtype CreateAdditionalAssignmentsForHITResponse
  = CreateAdditionalAssignmentsForHITResponse NoArguments
```

##### Instances
``` purescript
Newtype CreateAdditionalAssignmentsForHITResponse _
Generic CreateAdditionalAssignmentsForHITResponse _
Show CreateAdditionalAssignmentsForHITResponse
Decode CreateAdditionalAssignmentsForHITResponse
Encode CreateAdditionalAssignmentsForHITResponse
```

#### `CreateHITRequest`

``` purescript
newtype CreateHITRequest
  = CreateHITRequest { "MaxAssignments" :: NullOrUndefined (Int), "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "LifetimeInSeconds" :: Number, "AssignmentDurationInSeconds" :: Number, "Reward" :: CurrencyAmount, "Title" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "Question" :: NullOrUndefined (String), "RequesterAnnotation" :: NullOrUndefined (String), "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList), "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITLayoutId" :: NullOrUndefined (EntityId), "HITLayoutParameters" :: NullOrUndefined (HITLayoutParameterList) }
```

##### Instances
``` purescript
Newtype CreateHITRequest _
Generic CreateHITRequest _
Show CreateHITRequest
Decode CreateHITRequest
Encode CreateHITRequest
```

#### `newCreateHITRequest`

``` purescript
newCreateHITRequest :: Number -> String -> Number -> CurrencyAmount -> String -> CreateHITRequest
```

Constructs CreateHITRequest from required parameters

#### `newCreateHITRequest'`

``` purescript
newCreateHITRequest' :: Number -> String -> Number -> CurrencyAmount -> String -> ({ "MaxAssignments" :: NullOrUndefined (Int), "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "LifetimeInSeconds" :: Number, "AssignmentDurationInSeconds" :: Number, "Reward" :: CurrencyAmount, "Title" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "Question" :: NullOrUndefined (String), "RequesterAnnotation" :: NullOrUndefined (String), "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList), "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITLayoutId" :: NullOrUndefined (EntityId), "HITLayoutParameters" :: NullOrUndefined (HITLayoutParameterList) } -> { "MaxAssignments" :: NullOrUndefined (Int), "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "LifetimeInSeconds" :: Number, "AssignmentDurationInSeconds" :: Number, "Reward" :: CurrencyAmount, "Title" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "Question" :: NullOrUndefined (String), "RequesterAnnotation" :: NullOrUndefined (String), "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList), "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITLayoutId" :: NullOrUndefined (EntityId), "HITLayoutParameters" :: NullOrUndefined (HITLayoutParameterList) }) -> CreateHITRequest
```

Constructs CreateHITRequest's fields from required parameters

#### `CreateHITResponse`

``` purescript
newtype CreateHITResponse
  = CreateHITResponse { "HIT" :: NullOrUndefined (HIT) }
```

##### Instances
``` purescript
Newtype CreateHITResponse _
Generic CreateHITResponse _
Show CreateHITResponse
Decode CreateHITResponse
Encode CreateHITResponse
```

#### `newCreateHITResponse`

``` purescript
newCreateHITResponse :: CreateHITResponse
```

Constructs CreateHITResponse from required parameters

#### `newCreateHITResponse'`

``` purescript
newCreateHITResponse' :: ({ "HIT" :: NullOrUndefined (HIT) } -> { "HIT" :: NullOrUndefined (HIT) }) -> CreateHITResponse
```

Constructs CreateHITResponse's fields from required parameters

#### `CreateHITTypeRequest`

``` purescript
newtype CreateHITTypeRequest
  = CreateHITTypeRequest { "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "AssignmentDurationInSeconds" :: Number, "Reward" :: CurrencyAmount, "Title" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList) }
```

##### Instances
``` purescript
Newtype CreateHITTypeRequest _
Generic CreateHITTypeRequest _
Show CreateHITTypeRequest
Decode CreateHITTypeRequest
Encode CreateHITTypeRequest
```

#### `newCreateHITTypeRequest`

``` purescript
newCreateHITTypeRequest :: Number -> String -> CurrencyAmount -> String -> CreateHITTypeRequest
```

Constructs CreateHITTypeRequest from required parameters

#### `newCreateHITTypeRequest'`

``` purescript
newCreateHITTypeRequest' :: Number -> String -> CurrencyAmount -> String -> ({ "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "AssignmentDurationInSeconds" :: Number, "Reward" :: CurrencyAmount, "Title" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList) } -> { "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "AssignmentDurationInSeconds" :: Number, "Reward" :: CurrencyAmount, "Title" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList) }) -> CreateHITTypeRequest
```

Constructs CreateHITTypeRequest's fields from required parameters

#### `CreateHITTypeResponse`

``` purescript
newtype CreateHITTypeResponse
  = CreateHITTypeResponse { "HITTypeId" :: NullOrUndefined (EntityId) }
```

##### Instances
``` purescript
Newtype CreateHITTypeResponse _
Generic CreateHITTypeResponse _
Show CreateHITTypeResponse
Decode CreateHITTypeResponse
Encode CreateHITTypeResponse
```

#### `newCreateHITTypeResponse`

``` purescript
newCreateHITTypeResponse :: CreateHITTypeResponse
```

Constructs CreateHITTypeResponse from required parameters

#### `newCreateHITTypeResponse'`

``` purescript
newCreateHITTypeResponse' :: ({ "HITTypeId" :: NullOrUndefined (EntityId) } -> { "HITTypeId" :: NullOrUndefined (EntityId) }) -> CreateHITTypeResponse
```

Constructs CreateHITTypeResponse's fields from required parameters

#### `CreateHITWithHITTypeRequest`

``` purescript
newtype CreateHITWithHITTypeRequest
  = CreateHITWithHITTypeRequest { "HITTypeId" :: EntityId, "MaxAssignments" :: NullOrUndefined (Int), "LifetimeInSeconds" :: Number, "Question" :: NullOrUndefined (String), "RequesterAnnotation" :: NullOrUndefined (String), "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITLayoutId" :: NullOrUndefined (EntityId), "HITLayoutParameters" :: NullOrUndefined (HITLayoutParameterList) }
```

##### Instances
``` purescript
Newtype CreateHITWithHITTypeRequest _
Generic CreateHITWithHITTypeRequest _
Show CreateHITWithHITTypeRequest
Decode CreateHITWithHITTypeRequest
Encode CreateHITWithHITTypeRequest
```

#### `newCreateHITWithHITTypeRequest`

``` purescript
newCreateHITWithHITTypeRequest :: EntityId -> Number -> CreateHITWithHITTypeRequest
```

Constructs CreateHITWithHITTypeRequest from required parameters

#### `newCreateHITWithHITTypeRequest'`

``` purescript
newCreateHITWithHITTypeRequest' :: EntityId -> Number -> ({ "HITTypeId" :: EntityId, "MaxAssignments" :: NullOrUndefined (Int), "LifetimeInSeconds" :: Number, "Question" :: NullOrUndefined (String), "RequesterAnnotation" :: NullOrUndefined (String), "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITLayoutId" :: NullOrUndefined (EntityId), "HITLayoutParameters" :: NullOrUndefined (HITLayoutParameterList) } -> { "HITTypeId" :: EntityId, "MaxAssignments" :: NullOrUndefined (Int), "LifetimeInSeconds" :: Number, "Question" :: NullOrUndefined (String), "RequesterAnnotation" :: NullOrUndefined (String), "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITLayoutId" :: NullOrUndefined (EntityId), "HITLayoutParameters" :: NullOrUndefined (HITLayoutParameterList) }) -> CreateHITWithHITTypeRequest
```

Constructs CreateHITWithHITTypeRequest's fields from required parameters

#### `CreateHITWithHITTypeResponse`

``` purescript
newtype CreateHITWithHITTypeResponse
  = CreateHITWithHITTypeResponse { "HIT" :: NullOrUndefined (HIT) }
```

##### Instances
``` purescript
Newtype CreateHITWithHITTypeResponse _
Generic CreateHITWithHITTypeResponse _
Show CreateHITWithHITTypeResponse
Decode CreateHITWithHITTypeResponse
Encode CreateHITWithHITTypeResponse
```

#### `newCreateHITWithHITTypeResponse`

``` purescript
newCreateHITWithHITTypeResponse :: CreateHITWithHITTypeResponse
```

Constructs CreateHITWithHITTypeResponse from required parameters

#### `newCreateHITWithHITTypeResponse'`

``` purescript
newCreateHITWithHITTypeResponse' :: ({ "HIT" :: NullOrUndefined (HIT) } -> { "HIT" :: NullOrUndefined (HIT) }) -> CreateHITWithHITTypeResponse
```

Constructs CreateHITWithHITTypeResponse's fields from required parameters

#### `CreateQualificationTypeRequest`

``` purescript
newtype CreateQualificationTypeRequest
  = CreateQualificationTypeRequest { "Name" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "QualificationTypeStatus" :: QualificationTypeStatus, "RetryDelayInSeconds" :: NullOrUndefined (Number), "Test" :: NullOrUndefined (String), "AnswerKey" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) }
```

##### Instances
``` purescript
Newtype CreateQualificationTypeRequest _
Generic CreateQualificationTypeRequest _
Show CreateQualificationTypeRequest
Decode CreateQualificationTypeRequest
Encode CreateQualificationTypeRequest
```

#### `newCreateQualificationTypeRequest`

``` purescript
newCreateQualificationTypeRequest :: String -> String -> QualificationTypeStatus -> CreateQualificationTypeRequest
```

Constructs CreateQualificationTypeRequest from required parameters

#### `newCreateQualificationTypeRequest'`

``` purescript
newCreateQualificationTypeRequest' :: String -> String -> QualificationTypeStatus -> ({ "Name" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "QualificationTypeStatus" :: QualificationTypeStatus, "RetryDelayInSeconds" :: NullOrUndefined (Number), "Test" :: NullOrUndefined (String), "AnswerKey" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) } -> { "Name" :: String, "Keywords" :: NullOrUndefined (String), "Description" :: String, "QualificationTypeStatus" :: QualificationTypeStatus, "RetryDelayInSeconds" :: NullOrUndefined (Number), "Test" :: NullOrUndefined (String), "AnswerKey" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) }) -> CreateQualificationTypeRequest
```

Constructs CreateQualificationTypeRequest's fields from required parameters

#### `CreateQualificationTypeResponse`

``` purescript
newtype CreateQualificationTypeResponse
  = CreateQualificationTypeResponse { "QualificationType" :: NullOrUndefined (QualificationType) }
```

##### Instances
``` purescript
Newtype CreateQualificationTypeResponse _
Generic CreateQualificationTypeResponse _
Show CreateQualificationTypeResponse
Decode CreateQualificationTypeResponse
Encode CreateQualificationTypeResponse
```

#### `newCreateQualificationTypeResponse`

``` purescript
newCreateQualificationTypeResponse :: CreateQualificationTypeResponse
```

Constructs CreateQualificationTypeResponse from required parameters

#### `newCreateQualificationTypeResponse'`

``` purescript
newCreateQualificationTypeResponse' :: ({ "QualificationType" :: NullOrUndefined (QualificationType) } -> { "QualificationType" :: NullOrUndefined (QualificationType) }) -> CreateQualificationTypeResponse
```

Constructs CreateQualificationTypeResponse's fields from required parameters

#### `CreateWorkerBlockRequest`

``` purescript
newtype CreateWorkerBlockRequest
  = CreateWorkerBlockRequest { "WorkerId" :: CustomerId, "Reason" :: String }
```

##### Instances
``` purescript
Newtype CreateWorkerBlockRequest _
Generic CreateWorkerBlockRequest _
Show CreateWorkerBlockRequest
Decode CreateWorkerBlockRequest
Encode CreateWorkerBlockRequest
```

#### `newCreateWorkerBlockRequest`

``` purescript
newCreateWorkerBlockRequest :: String -> CustomerId -> CreateWorkerBlockRequest
```

Constructs CreateWorkerBlockRequest from required parameters

#### `newCreateWorkerBlockRequest'`

``` purescript
newCreateWorkerBlockRequest' :: String -> CustomerId -> ({ "WorkerId" :: CustomerId, "Reason" :: String } -> { "WorkerId" :: CustomerId, "Reason" :: String }) -> CreateWorkerBlockRequest
```

Constructs CreateWorkerBlockRequest's fields from required parameters

#### `CreateWorkerBlockResponse`

``` purescript
newtype CreateWorkerBlockResponse
  = CreateWorkerBlockResponse NoArguments
```

##### Instances
``` purescript
Newtype CreateWorkerBlockResponse _
Generic CreateWorkerBlockResponse _
Show CreateWorkerBlockResponse
Decode CreateWorkerBlockResponse
Encode CreateWorkerBlockResponse
```

#### `CurrencyAmount`

``` purescript
newtype CurrencyAmount
  = CurrencyAmount String
```

<p>A string representing a currency amount.</p>

##### Instances
``` purescript
Newtype CurrencyAmount _
Generic CurrencyAmount _
Show CurrencyAmount
Decode CurrencyAmount
Encode CurrencyAmount
```

#### `CustomerId`

``` purescript
newtype CustomerId
  = CustomerId String
```

##### Instances
``` purescript
Newtype CustomerId _
Generic CustomerId _
Show CustomerId
Decode CustomerId
Encode CustomerId
```

#### `CustomerIdList`

``` purescript
newtype CustomerIdList
  = CustomerIdList (Array CustomerId)
```

##### Instances
``` purescript
Newtype CustomerIdList _
Generic CustomerIdList _
Show CustomerIdList
Decode CustomerIdList
Encode CustomerIdList
```

#### `DeleteHITRequest`

``` purescript
newtype DeleteHITRequest
  = DeleteHITRequest { "HITId" :: EntityId }
```

##### Instances
``` purescript
Newtype DeleteHITRequest _
Generic DeleteHITRequest _
Show DeleteHITRequest
Decode DeleteHITRequest
Encode DeleteHITRequest
```

#### `newDeleteHITRequest`

``` purescript
newDeleteHITRequest :: EntityId -> DeleteHITRequest
```

Constructs DeleteHITRequest from required parameters

#### `newDeleteHITRequest'`

``` purescript
newDeleteHITRequest' :: EntityId -> ({ "HITId" :: EntityId } -> { "HITId" :: EntityId }) -> DeleteHITRequest
```

Constructs DeleteHITRequest's fields from required parameters

#### `DeleteHITResponse`

``` purescript
newtype DeleteHITResponse
  = DeleteHITResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteHITResponse _
Generic DeleteHITResponse _
Show DeleteHITResponse
Decode DeleteHITResponse
Encode DeleteHITResponse
```

#### `DeleteQualificationTypeRequest`

``` purescript
newtype DeleteQualificationTypeRequest
  = DeleteQualificationTypeRequest { "QualificationTypeId" :: EntityId }
```

##### Instances
``` purescript
Newtype DeleteQualificationTypeRequest _
Generic DeleteQualificationTypeRequest _
Show DeleteQualificationTypeRequest
Decode DeleteQualificationTypeRequest
Encode DeleteQualificationTypeRequest
```

#### `newDeleteQualificationTypeRequest`

``` purescript
newDeleteQualificationTypeRequest :: EntityId -> DeleteQualificationTypeRequest
```

Constructs DeleteQualificationTypeRequest from required parameters

#### `newDeleteQualificationTypeRequest'`

``` purescript
newDeleteQualificationTypeRequest' :: EntityId -> ({ "QualificationTypeId" :: EntityId } -> { "QualificationTypeId" :: EntityId }) -> DeleteQualificationTypeRequest
```

Constructs DeleteQualificationTypeRequest's fields from required parameters

#### `DeleteQualificationTypeResponse`

``` purescript
newtype DeleteQualificationTypeResponse
  = DeleteQualificationTypeResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteQualificationTypeResponse _
Generic DeleteQualificationTypeResponse _
Show DeleteQualificationTypeResponse
Decode DeleteQualificationTypeResponse
Encode DeleteQualificationTypeResponse
```

#### `DeleteWorkerBlockRequest`

``` purescript
newtype DeleteWorkerBlockRequest
  = DeleteWorkerBlockRequest { "WorkerId" :: CustomerId, "Reason" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DeleteWorkerBlockRequest _
Generic DeleteWorkerBlockRequest _
Show DeleteWorkerBlockRequest
Decode DeleteWorkerBlockRequest
Encode DeleteWorkerBlockRequest
```

#### `newDeleteWorkerBlockRequest`

``` purescript
newDeleteWorkerBlockRequest :: CustomerId -> DeleteWorkerBlockRequest
```

Constructs DeleteWorkerBlockRequest from required parameters

#### `newDeleteWorkerBlockRequest'`

``` purescript
newDeleteWorkerBlockRequest' :: CustomerId -> ({ "WorkerId" :: CustomerId, "Reason" :: NullOrUndefined (String) } -> { "WorkerId" :: CustomerId, "Reason" :: NullOrUndefined (String) }) -> DeleteWorkerBlockRequest
```

Constructs DeleteWorkerBlockRequest's fields from required parameters

#### `DeleteWorkerBlockResponse`

``` purescript
newtype DeleteWorkerBlockResponse
  = DeleteWorkerBlockResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteWorkerBlockResponse _
Generic DeleteWorkerBlockResponse _
Show DeleteWorkerBlockResponse
Decode DeleteWorkerBlockResponse
Encode DeleteWorkerBlockResponse
```

#### `DisassociateQualificationFromWorkerRequest`

``` purescript
newtype DisassociateQualificationFromWorkerRequest
  = DisassociateQualificationFromWorkerRequest { "WorkerId" :: CustomerId, "QualificationTypeId" :: EntityId, "Reason" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DisassociateQualificationFromWorkerRequest _
Generic DisassociateQualificationFromWorkerRequest _
Show DisassociateQualificationFromWorkerRequest
Decode DisassociateQualificationFromWorkerRequest
Encode DisassociateQualificationFromWorkerRequest
```

#### `newDisassociateQualificationFromWorkerRequest`

``` purescript
newDisassociateQualificationFromWorkerRequest :: EntityId -> CustomerId -> DisassociateQualificationFromWorkerRequest
```

Constructs DisassociateQualificationFromWorkerRequest from required parameters

#### `newDisassociateQualificationFromWorkerRequest'`

``` purescript
newDisassociateQualificationFromWorkerRequest' :: EntityId -> CustomerId -> ({ "WorkerId" :: CustomerId, "QualificationTypeId" :: EntityId, "Reason" :: NullOrUndefined (String) } -> { "WorkerId" :: CustomerId, "QualificationTypeId" :: EntityId, "Reason" :: NullOrUndefined (String) }) -> DisassociateQualificationFromWorkerRequest
```

Constructs DisassociateQualificationFromWorkerRequest's fields from required parameters

#### `DisassociateQualificationFromWorkerResponse`

``` purescript
newtype DisassociateQualificationFromWorkerResponse
  = DisassociateQualificationFromWorkerResponse NoArguments
```

##### Instances
``` purescript
Newtype DisassociateQualificationFromWorkerResponse _
Generic DisassociateQualificationFromWorkerResponse _
Show DisassociateQualificationFromWorkerResponse
Decode DisassociateQualificationFromWorkerResponse
Encode DisassociateQualificationFromWorkerResponse
```

#### `EntityId`

``` purescript
newtype EntityId
  = EntityId String
```

##### Instances
``` purescript
Newtype EntityId _
Generic EntityId _
Show EntityId
Decode EntityId
Encode EntityId
```

#### `EventType`

``` purescript
newtype EventType
  = EventType String
```

##### Instances
``` purescript
Newtype EventType _
Generic EventType _
Show EventType
Decode EventType
Encode EventType
```

#### `EventTypeList`

``` purescript
newtype EventTypeList
  = EventTypeList (Array EventType)
```

##### Instances
``` purescript
Newtype EventTypeList _
Generic EventTypeList _
Show EventTypeList
Decode EventTypeList
Encode EventTypeList
```

#### `ExceptionMessage`

``` purescript
newtype ExceptionMessage
  = ExceptionMessage String
```

##### Instances
``` purescript
Newtype ExceptionMessage _
Generic ExceptionMessage _
Show ExceptionMessage
Decode ExceptionMessage
Encode ExceptionMessage
```

#### `GetAccountBalanceRequest`

``` purescript
newtype GetAccountBalanceRequest
  = GetAccountBalanceRequest NoArguments
```

##### Instances
``` purescript
Newtype GetAccountBalanceRequest _
Generic GetAccountBalanceRequest _
Show GetAccountBalanceRequest
Decode GetAccountBalanceRequest
Encode GetAccountBalanceRequest
```

#### `GetAccountBalanceResponse`

``` purescript
newtype GetAccountBalanceResponse
  = GetAccountBalanceResponse { "AvailableBalance" :: NullOrUndefined (CurrencyAmount), "OnHoldBalance" :: NullOrUndefined (CurrencyAmount) }
```

##### Instances
``` purescript
Newtype GetAccountBalanceResponse _
Generic GetAccountBalanceResponse _
Show GetAccountBalanceResponse
Decode GetAccountBalanceResponse
Encode GetAccountBalanceResponse
```

#### `newGetAccountBalanceResponse`

``` purescript
newGetAccountBalanceResponse :: GetAccountBalanceResponse
```

Constructs GetAccountBalanceResponse from required parameters

#### `newGetAccountBalanceResponse'`

``` purescript
newGetAccountBalanceResponse' :: ({ "AvailableBalance" :: NullOrUndefined (CurrencyAmount), "OnHoldBalance" :: NullOrUndefined (CurrencyAmount) } -> { "AvailableBalance" :: NullOrUndefined (CurrencyAmount), "OnHoldBalance" :: NullOrUndefined (CurrencyAmount) }) -> GetAccountBalanceResponse
```

Constructs GetAccountBalanceResponse's fields from required parameters

#### `GetAssignmentRequest`

``` purescript
newtype GetAssignmentRequest
  = GetAssignmentRequest { "AssignmentId" :: EntityId }
```

##### Instances
``` purescript
Newtype GetAssignmentRequest _
Generic GetAssignmentRequest _
Show GetAssignmentRequest
Decode GetAssignmentRequest
Encode GetAssignmentRequest
```

#### `newGetAssignmentRequest`

``` purescript
newGetAssignmentRequest :: EntityId -> GetAssignmentRequest
```

Constructs GetAssignmentRequest from required parameters

#### `newGetAssignmentRequest'`

``` purescript
newGetAssignmentRequest' :: EntityId -> ({ "AssignmentId" :: EntityId } -> { "AssignmentId" :: EntityId }) -> GetAssignmentRequest
```

Constructs GetAssignmentRequest's fields from required parameters

#### `GetAssignmentResponse`

``` purescript
newtype GetAssignmentResponse
  = GetAssignmentResponse { "Assignment" :: NullOrUndefined (Assignment), "HIT" :: NullOrUndefined (HIT) }
```

##### Instances
``` purescript
Newtype GetAssignmentResponse _
Generic GetAssignmentResponse _
Show GetAssignmentResponse
Decode GetAssignmentResponse
Encode GetAssignmentResponse
```

#### `newGetAssignmentResponse`

``` purescript
newGetAssignmentResponse :: GetAssignmentResponse
```

Constructs GetAssignmentResponse from required parameters

#### `newGetAssignmentResponse'`

``` purescript
newGetAssignmentResponse' :: ({ "Assignment" :: NullOrUndefined (Assignment), "HIT" :: NullOrUndefined (HIT) } -> { "Assignment" :: NullOrUndefined (Assignment), "HIT" :: NullOrUndefined (HIT) }) -> GetAssignmentResponse
```

Constructs GetAssignmentResponse's fields from required parameters

#### `GetFileUploadURLRequest`

``` purescript
newtype GetFileUploadURLRequest
  = GetFileUploadURLRequest { "AssignmentId" :: EntityId, "QuestionIdentifier" :: String }
```

##### Instances
``` purescript
Newtype GetFileUploadURLRequest _
Generic GetFileUploadURLRequest _
Show GetFileUploadURLRequest
Decode GetFileUploadURLRequest
Encode GetFileUploadURLRequest
```

#### `newGetFileUploadURLRequest`

``` purescript
newGetFileUploadURLRequest :: EntityId -> String -> GetFileUploadURLRequest
```

Constructs GetFileUploadURLRequest from required parameters

#### `newGetFileUploadURLRequest'`

``` purescript
newGetFileUploadURLRequest' :: EntityId -> String -> ({ "AssignmentId" :: EntityId, "QuestionIdentifier" :: String } -> { "AssignmentId" :: EntityId, "QuestionIdentifier" :: String }) -> GetFileUploadURLRequest
```

Constructs GetFileUploadURLRequest's fields from required parameters

#### `GetFileUploadURLResponse`

``` purescript
newtype GetFileUploadURLResponse
  = GetFileUploadURLResponse { "FileUploadURL" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetFileUploadURLResponse _
Generic GetFileUploadURLResponse _
Show GetFileUploadURLResponse
Decode GetFileUploadURLResponse
Encode GetFileUploadURLResponse
```

#### `newGetFileUploadURLResponse`

``` purescript
newGetFileUploadURLResponse :: GetFileUploadURLResponse
```

Constructs GetFileUploadURLResponse from required parameters

#### `newGetFileUploadURLResponse'`

``` purescript
newGetFileUploadURLResponse' :: ({ "FileUploadURL" :: NullOrUndefined (String) } -> { "FileUploadURL" :: NullOrUndefined (String) }) -> GetFileUploadURLResponse
```

Constructs GetFileUploadURLResponse's fields from required parameters

#### `GetHITRequest`

``` purescript
newtype GetHITRequest
  = GetHITRequest { "HITId" :: EntityId }
```

##### Instances
``` purescript
Newtype GetHITRequest _
Generic GetHITRequest _
Show GetHITRequest
Decode GetHITRequest
Encode GetHITRequest
```

#### `newGetHITRequest`

``` purescript
newGetHITRequest :: EntityId -> GetHITRequest
```

Constructs GetHITRequest from required parameters

#### `newGetHITRequest'`

``` purescript
newGetHITRequest' :: EntityId -> ({ "HITId" :: EntityId } -> { "HITId" :: EntityId }) -> GetHITRequest
```

Constructs GetHITRequest's fields from required parameters

#### `GetHITResponse`

``` purescript
newtype GetHITResponse
  = GetHITResponse { "HIT" :: NullOrUndefined (HIT) }
```

##### Instances
``` purescript
Newtype GetHITResponse _
Generic GetHITResponse _
Show GetHITResponse
Decode GetHITResponse
Encode GetHITResponse
```

#### `newGetHITResponse`

``` purescript
newGetHITResponse :: GetHITResponse
```

Constructs GetHITResponse from required parameters

#### `newGetHITResponse'`

``` purescript
newGetHITResponse' :: ({ "HIT" :: NullOrUndefined (HIT) } -> { "HIT" :: NullOrUndefined (HIT) }) -> GetHITResponse
```

Constructs GetHITResponse's fields from required parameters

#### `GetQualificationScoreRequest`

``` purescript
newtype GetQualificationScoreRequest
  = GetQualificationScoreRequest { "QualificationTypeId" :: EntityId, "WorkerId" :: CustomerId }
```

##### Instances
``` purescript
Newtype GetQualificationScoreRequest _
Generic GetQualificationScoreRequest _
Show GetQualificationScoreRequest
Decode GetQualificationScoreRequest
Encode GetQualificationScoreRequest
```

#### `newGetQualificationScoreRequest`

``` purescript
newGetQualificationScoreRequest :: EntityId -> CustomerId -> GetQualificationScoreRequest
```

Constructs GetQualificationScoreRequest from required parameters

#### `newGetQualificationScoreRequest'`

``` purescript
newGetQualificationScoreRequest' :: EntityId -> CustomerId -> ({ "QualificationTypeId" :: EntityId, "WorkerId" :: CustomerId } -> { "QualificationTypeId" :: EntityId, "WorkerId" :: CustomerId }) -> GetQualificationScoreRequest
```

Constructs GetQualificationScoreRequest's fields from required parameters

#### `GetQualificationScoreResponse`

``` purescript
newtype GetQualificationScoreResponse
  = GetQualificationScoreResponse { "Qualification" :: NullOrUndefined (Qualification) }
```

##### Instances
``` purescript
Newtype GetQualificationScoreResponse _
Generic GetQualificationScoreResponse _
Show GetQualificationScoreResponse
Decode GetQualificationScoreResponse
Encode GetQualificationScoreResponse
```

#### `newGetQualificationScoreResponse`

``` purescript
newGetQualificationScoreResponse :: GetQualificationScoreResponse
```

Constructs GetQualificationScoreResponse from required parameters

#### `newGetQualificationScoreResponse'`

``` purescript
newGetQualificationScoreResponse' :: ({ "Qualification" :: NullOrUndefined (Qualification) } -> { "Qualification" :: NullOrUndefined (Qualification) }) -> GetQualificationScoreResponse
```

Constructs GetQualificationScoreResponse's fields from required parameters

#### `GetQualificationTypeRequest`

``` purescript
newtype GetQualificationTypeRequest
  = GetQualificationTypeRequest { "QualificationTypeId" :: EntityId }
```

##### Instances
``` purescript
Newtype GetQualificationTypeRequest _
Generic GetQualificationTypeRequest _
Show GetQualificationTypeRequest
Decode GetQualificationTypeRequest
Encode GetQualificationTypeRequest
```

#### `newGetQualificationTypeRequest`

``` purescript
newGetQualificationTypeRequest :: EntityId -> GetQualificationTypeRequest
```

Constructs GetQualificationTypeRequest from required parameters

#### `newGetQualificationTypeRequest'`

``` purescript
newGetQualificationTypeRequest' :: EntityId -> ({ "QualificationTypeId" :: EntityId } -> { "QualificationTypeId" :: EntityId }) -> GetQualificationTypeRequest
```

Constructs GetQualificationTypeRequest's fields from required parameters

#### `GetQualificationTypeResponse`

``` purescript
newtype GetQualificationTypeResponse
  = GetQualificationTypeResponse { "QualificationType" :: NullOrUndefined (QualificationType) }
```

##### Instances
``` purescript
Newtype GetQualificationTypeResponse _
Generic GetQualificationTypeResponse _
Show GetQualificationTypeResponse
Decode GetQualificationTypeResponse
Encode GetQualificationTypeResponse
```

#### `newGetQualificationTypeResponse`

``` purescript
newGetQualificationTypeResponse :: GetQualificationTypeResponse
```

Constructs GetQualificationTypeResponse from required parameters

#### `newGetQualificationTypeResponse'`

``` purescript
newGetQualificationTypeResponse' :: ({ "QualificationType" :: NullOrUndefined (QualificationType) } -> { "QualificationType" :: NullOrUndefined (QualificationType) }) -> GetQualificationTypeResponse
```

Constructs GetQualificationTypeResponse's fields from required parameters

#### `HIT`

``` purescript
newtype HIT
  = HIT { "HITId" :: NullOrUndefined (EntityId), "HITTypeId" :: NullOrUndefined (EntityId), "HITGroupId" :: NullOrUndefined (EntityId), "HITLayoutId" :: NullOrUndefined (EntityId), "CreationTime" :: NullOrUndefined (Timestamp), "Title" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Question" :: NullOrUndefined (String), "Keywords" :: NullOrUndefined (String), "HITStatus" :: NullOrUndefined (HITStatus), "MaxAssignments" :: NullOrUndefined (Int), "Reward" :: NullOrUndefined (CurrencyAmount), "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "Expiration" :: NullOrUndefined (Timestamp), "AssignmentDurationInSeconds" :: NullOrUndefined (Number), "RequesterAnnotation" :: NullOrUndefined (String), "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList), "HITReviewStatus" :: NullOrUndefined (HITReviewStatus), "NumberOfAssignmentsPending" :: NullOrUndefined (Int), "NumberOfAssignmentsAvailable" :: NullOrUndefined (Int), "NumberOfAssignmentsCompleted" :: NullOrUndefined (Int) }
```

<p> The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.</p>

##### Instances
``` purescript
Newtype HIT _
Generic HIT _
Show HIT
Decode HIT
Encode HIT
```

#### `newHIT`

``` purescript
newHIT :: HIT
```

Constructs HIT from required parameters

#### `newHIT'`

``` purescript
newHIT' :: ({ "HITId" :: NullOrUndefined (EntityId), "HITTypeId" :: NullOrUndefined (EntityId), "HITGroupId" :: NullOrUndefined (EntityId), "HITLayoutId" :: NullOrUndefined (EntityId), "CreationTime" :: NullOrUndefined (Timestamp), "Title" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Question" :: NullOrUndefined (String), "Keywords" :: NullOrUndefined (String), "HITStatus" :: NullOrUndefined (HITStatus), "MaxAssignments" :: NullOrUndefined (Int), "Reward" :: NullOrUndefined (CurrencyAmount), "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "Expiration" :: NullOrUndefined (Timestamp), "AssignmentDurationInSeconds" :: NullOrUndefined (Number), "RequesterAnnotation" :: NullOrUndefined (String), "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList), "HITReviewStatus" :: NullOrUndefined (HITReviewStatus), "NumberOfAssignmentsPending" :: NullOrUndefined (Int), "NumberOfAssignmentsAvailable" :: NullOrUndefined (Int), "NumberOfAssignmentsCompleted" :: NullOrUndefined (Int) } -> { "HITId" :: NullOrUndefined (EntityId), "HITTypeId" :: NullOrUndefined (EntityId), "HITGroupId" :: NullOrUndefined (EntityId), "HITLayoutId" :: NullOrUndefined (EntityId), "CreationTime" :: NullOrUndefined (Timestamp), "Title" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Question" :: NullOrUndefined (String), "Keywords" :: NullOrUndefined (String), "HITStatus" :: NullOrUndefined (HITStatus), "MaxAssignments" :: NullOrUndefined (Int), "Reward" :: NullOrUndefined (CurrencyAmount), "AutoApprovalDelayInSeconds" :: NullOrUndefined (Number), "Expiration" :: NullOrUndefined (Timestamp), "AssignmentDurationInSeconds" :: NullOrUndefined (Number), "RequesterAnnotation" :: NullOrUndefined (String), "QualificationRequirements" :: NullOrUndefined (QualificationRequirementList), "HITReviewStatus" :: NullOrUndefined (HITReviewStatus), "NumberOfAssignmentsPending" :: NullOrUndefined (Int), "NumberOfAssignmentsAvailable" :: NullOrUndefined (Int), "NumberOfAssignmentsCompleted" :: NullOrUndefined (Int) }) -> HIT
```

Constructs HIT's fields from required parameters

#### `HITLayoutParameter`

``` purescript
newtype HITLayoutParameter
  = HITLayoutParameter { "Name" :: String, "Value" :: String }
```

<p> The HITLayoutParameter data structure defines parameter values used with a HITLayout. A HITLayout is a reusable Amazon Mechanical Turk project template used to provide Human Intelligence Task (HIT) question data for CreateHIT. </p>

##### Instances
``` purescript
Newtype HITLayoutParameter _
Generic HITLayoutParameter _
Show HITLayoutParameter
Decode HITLayoutParameter
Encode HITLayoutParameter
```

#### `newHITLayoutParameter`

``` purescript
newHITLayoutParameter :: String -> String -> HITLayoutParameter
```

Constructs HITLayoutParameter from required parameters

#### `newHITLayoutParameter'`

``` purescript
newHITLayoutParameter' :: String -> String -> ({ "Name" :: String, "Value" :: String } -> { "Name" :: String, "Value" :: String }) -> HITLayoutParameter
```

Constructs HITLayoutParameter's fields from required parameters

#### `HITLayoutParameterList`

``` purescript
newtype HITLayoutParameterList
  = HITLayoutParameterList (Array HITLayoutParameter)
```

##### Instances
``` purescript
Newtype HITLayoutParameterList _
Generic HITLayoutParameterList _
Show HITLayoutParameterList
Decode HITLayoutParameterList
Encode HITLayoutParameterList
```

#### `HITList`

``` purescript
newtype HITList
  = HITList (Array HIT)
```

##### Instances
``` purescript
Newtype HITList _
Generic HITList _
Show HITList
Decode HITList
Encode HITList
```

#### `HITReviewStatus`

``` purescript
newtype HITReviewStatus
  = HITReviewStatus String
```

##### Instances
``` purescript
Newtype HITReviewStatus _
Generic HITReviewStatus _
Show HITReviewStatus
Decode HITReviewStatus
Encode HITReviewStatus
```

#### `HITStatus`

``` purescript
newtype HITStatus
  = HITStatus String
```

##### Instances
``` purescript
Newtype HITStatus _
Generic HITStatus _
Show HITStatus
Decode HITStatus
Encode HITStatus
```

#### `IdempotencyToken`

``` purescript
newtype IdempotencyToken
  = IdempotencyToken String
```

##### Instances
``` purescript
Newtype IdempotencyToken _
Generic IdempotencyToken _
Show IdempotencyToken
Decode IdempotencyToken
Encode IdempotencyToken
```

#### `IntegerList`

``` purescript
newtype IntegerList
  = IntegerList (Array Int)
```

##### Instances
``` purescript
Newtype IntegerList _
Generic IntegerList _
Show IntegerList
Decode IntegerList
Encode IntegerList
```

#### `ListAssignmentsForHITRequest`

``` purescript
newtype ListAssignmentsForHITRequest
  = ListAssignmentsForHITRequest { "HITId" :: EntityId, "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize), "AssignmentStatuses" :: NullOrUndefined (AssignmentStatusList) }
```

##### Instances
``` purescript
Newtype ListAssignmentsForHITRequest _
Generic ListAssignmentsForHITRequest _
Show ListAssignmentsForHITRequest
Decode ListAssignmentsForHITRequest
Encode ListAssignmentsForHITRequest
```

#### `newListAssignmentsForHITRequest`

``` purescript
newListAssignmentsForHITRequest :: EntityId -> ListAssignmentsForHITRequest
```

Constructs ListAssignmentsForHITRequest from required parameters

#### `newListAssignmentsForHITRequest'`

``` purescript
newListAssignmentsForHITRequest' :: EntityId -> ({ "HITId" :: EntityId, "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize), "AssignmentStatuses" :: NullOrUndefined (AssignmentStatusList) } -> { "HITId" :: EntityId, "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize), "AssignmentStatuses" :: NullOrUndefined (AssignmentStatusList) }) -> ListAssignmentsForHITRequest
```

Constructs ListAssignmentsForHITRequest's fields from required parameters

#### `ListAssignmentsForHITResponse`

``` purescript
newtype ListAssignmentsForHITResponse
  = ListAssignmentsForHITResponse { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "Assignments" :: NullOrUndefined (AssignmentList) }
```

##### Instances
``` purescript
Newtype ListAssignmentsForHITResponse _
Generic ListAssignmentsForHITResponse _
Show ListAssignmentsForHITResponse
Decode ListAssignmentsForHITResponse
Encode ListAssignmentsForHITResponse
```

#### `newListAssignmentsForHITResponse`

``` purescript
newListAssignmentsForHITResponse :: ListAssignmentsForHITResponse
```

Constructs ListAssignmentsForHITResponse from required parameters

#### `newListAssignmentsForHITResponse'`

``` purescript
newListAssignmentsForHITResponse' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "Assignments" :: NullOrUndefined (AssignmentList) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "Assignments" :: NullOrUndefined (AssignmentList) }) -> ListAssignmentsForHITResponse
```

Constructs ListAssignmentsForHITResponse's fields from required parameters

#### `ListBonusPaymentsRequest`

``` purescript
newtype ListBonusPaymentsRequest
  = ListBonusPaymentsRequest { "HITId" :: NullOrUndefined (EntityId), "AssignmentId" :: NullOrUndefined (EntityId), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListBonusPaymentsRequest _
Generic ListBonusPaymentsRequest _
Show ListBonusPaymentsRequest
Decode ListBonusPaymentsRequest
Encode ListBonusPaymentsRequest
```

#### `newListBonusPaymentsRequest`

``` purescript
newListBonusPaymentsRequest :: ListBonusPaymentsRequest
```

Constructs ListBonusPaymentsRequest from required parameters

#### `newListBonusPaymentsRequest'`

``` purescript
newListBonusPaymentsRequest' :: ({ "HITId" :: NullOrUndefined (EntityId), "AssignmentId" :: NullOrUndefined (EntityId), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "HITId" :: NullOrUndefined (EntityId), "AssignmentId" :: NullOrUndefined (EntityId), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListBonusPaymentsRequest
```

Constructs ListBonusPaymentsRequest's fields from required parameters

#### `ListBonusPaymentsResponse`

``` purescript
newtype ListBonusPaymentsResponse
  = ListBonusPaymentsResponse { "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "BonusPayments" :: NullOrUndefined (BonusPaymentList) }
```

##### Instances
``` purescript
Newtype ListBonusPaymentsResponse _
Generic ListBonusPaymentsResponse _
Show ListBonusPaymentsResponse
Decode ListBonusPaymentsResponse
Encode ListBonusPaymentsResponse
```

#### `newListBonusPaymentsResponse`

``` purescript
newListBonusPaymentsResponse :: ListBonusPaymentsResponse
```

Constructs ListBonusPaymentsResponse from required parameters

#### `newListBonusPaymentsResponse'`

``` purescript
newListBonusPaymentsResponse' :: ({ "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "BonusPayments" :: NullOrUndefined (BonusPaymentList) } -> { "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "BonusPayments" :: NullOrUndefined (BonusPaymentList) }) -> ListBonusPaymentsResponse
```

Constructs ListBonusPaymentsResponse's fields from required parameters

#### `ListHITsForQualificationTypeRequest`

``` purescript
newtype ListHITsForQualificationTypeRequest
  = ListHITsForQualificationTypeRequest { "QualificationTypeId" :: EntityId, "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListHITsForQualificationTypeRequest _
Generic ListHITsForQualificationTypeRequest _
Show ListHITsForQualificationTypeRequest
Decode ListHITsForQualificationTypeRequest
Encode ListHITsForQualificationTypeRequest
```

#### `newListHITsForQualificationTypeRequest`

``` purescript
newListHITsForQualificationTypeRequest :: EntityId -> ListHITsForQualificationTypeRequest
```

Constructs ListHITsForQualificationTypeRequest from required parameters

#### `newListHITsForQualificationTypeRequest'`

``` purescript
newListHITsForQualificationTypeRequest' :: EntityId -> ({ "QualificationTypeId" :: EntityId, "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "QualificationTypeId" :: EntityId, "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListHITsForQualificationTypeRequest
```

Constructs ListHITsForQualificationTypeRequest's fields from required parameters

#### `ListHITsForQualificationTypeResponse`

``` purescript
newtype ListHITsForQualificationTypeResponse
  = ListHITsForQualificationTypeResponse { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) }
```

##### Instances
``` purescript
Newtype ListHITsForQualificationTypeResponse _
Generic ListHITsForQualificationTypeResponse _
Show ListHITsForQualificationTypeResponse
Decode ListHITsForQualificationTypeResponse
Encode ListHITsForQualificationTypeResponse
```

#### `newListHITsForQualificationTypeResponse`

``` purescript
newListHITsForQualificationTypeResponse :: ListHITsForQualificationTypeResponse
```

Constructs ListHITsForQualificationTypeResponse from required parameters

#### `newListHITsForQualificationTypeResponse'`

``` purescript
newListHITsForQualificationTypeResponse' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) }) -> ListHITsForQualificationTypeResponse
```

Constructs ListHITsForQualificationTypeResponse's fields from required parameters

#### `ListHITsRequest`

``` purescript
newtype ListHITsRequest
  = ListHITsRequest { "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListHITsRequest _
Generic ListHITsRequest _
Show ListHITsRequest
Decode ListHITsRequest
Encode ListHITsRequest
```

#### `newListHITsRequest`

``` purescript
newListHITsRequest :: ListHITsRequest
```

Constructs ListHITsRequest from required parameters

#### `newListHITsRequest'`

``` purescript
newListHITsRequest' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListHITsRequest
```

Constructs ListHITsRequest's fields from required parameters

#### `ListHITsResponse`

``` purescript
newtype ListHITsResponse
  = ListHITsResponse { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) }
```

##### Instances
``` purescript
Newtype ListHITsResponse _
Generic ListHITsResponse _
Show ListHITsResponse
Decode ListHITsResponse
Encode ListHITsResponse
```

#### `newListHITsResponse`

``` purescript
newListHITsResponse :: ListHITsResponse
```

Constructs ListHITsResponse from required parameters

#### `newListHITsResponse'`

``` purescript
newListHITsResponse' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) }) -> ListHITsResponse
```

Constructs ListHITsResponse's fields from required parameters

#### `ListQualificationRequestsRequest`

``` purescript
newtype ListQualificationRequestsRequest
  = ListQualificationRequestsRequest { "QualificationTypeId" :: NullOrUndefined (EntityId), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListQualificationRequestsRequest _
Generic ListQualificationRequestsRequest _
Show ListQualificationRequestsRequest
Decode ListQualificationRequestsRequest
Encode ListQualificationRequestsRequest
```

#### `newListQualificationRequestsRequest`

``` purescript
newListQualificationRequestsRequest :: ListQualificationRequestsRequest
```

Constructs ListQualificationRequestsRequest from required parameters

#### `newListQualificationRequestsRequest'`

``` purescript
newListQualificationRequestsRequest' :: ({ "QualificationTypeId" :: NullOrUndefined (EntityId), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "QualificationTypeId" :: NullOrUndefined (EntityId), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListQualificationRequestsRequest
```

Constructs ListQualificationRequestsRequest's fields from required parameters

#### `ListQualificationRequestsResponse`

``` purescript
newtype ListQualificationRequestsResponse
  = ListQualificationRequestsResponse { "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "QualificationRequests" :: NullOrUndefined (QualificationRequestList) }
```

##### Instances
``` purescript
Newtype ListQualificationRequestsResponse _
Generic ListQualificationRequestsResponse _
Show ListQualificationRequestsResponse
Decode ListQualificationRequestsResponse
Encode ListQualificationRequestsResponse
```

#### `newListQualificationRequestsResponse`

``` purescript
newListQualificationRequestsResponse :: ListQualificationRequestsResponse
```

Constructs ListQualificationRequestsResponse from required parameters

#### `newListQualificationRequestsResponse'`

``` purescript
newListQualificationRequestsResponse' :: ({ "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "QualificationRequests" :: NullOrUndefined (QualificationRequestList) } -> { "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "QualificationRequests" :: NullOrUndefined (QualificationRequestList) }) -> ListQualificationRequestsResponse
```

Constructs ListQualificationRequestsResponse's fields from required parameters

#### `ListQualificationTypesRequest`

``` purescript
newtype ListQualificationTypesRequest
  = ListQualificationTypesRequest { "Query" :: NullOrUndefined (String), "MustBeRequestable" :: Boolean, "MustBeOwnedByCaller" :: NullOrUndefined (Boolean), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListQualificationTypesRequest _
Generic ListQualificationTypesRequest _
Show ListQualificationTypesRequest
Decode ListQualificationTypesRequest
Encode ListQualificationTypesRequest
```

#### `newListQualificationTypesRequest`

``` purescript
newListQualificationTypesRequest :: Boolean -> ListQualificationTypesRequest
```

Constructs ListQualificationTypesRequest from required parameters

#### `newListQualificationTypesRequest'`

``` purescript
newListQualificationTypesRequest' :: Boolean -> ({ "Query" :: NullOrUndefined (String), "MustBeRequestable" :: Boolean, "MustBeOwnedByCaller" :: NullOrUndefined (Boolean), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "Query" :: NullOrUndefined (String), "MustBeRequestable" :: Boolean, "MustBeOwnedByCaller" :: NullOrUndefined (Boolean), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListQualificationTypesRequest
```

Constructs ListQualificationTypesRequest's fields from required parameters

#### `ListQualificationTypesResponse`

``` purescript
newtype ListQualificationTypesResponse
  = ListQualificationTypesResponse { "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "QualificationTypes" :: NullOrUndefined (QualificationTypeList) }
```

##### Instances
``` purescript
Newtype ListQualificationTypesResponse _
Generic ListQualificationTypesResponse _
Show ListQualificationTypesResponse
Decode ListQualificationTypesResponse
Encode ListQualificationTypesResponse
```

#### `newListQualificationTypesResponse`

``` purescript
newListQualificationTypesResponse :: ListQualificationTypesResponse
```

Constructs ListQualificationTypesResponse from required parameters

#### `newListQualificationTypesResponse'`

``` purescript
newListQualificationTypesResponse' :: ({ "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "QualificationTypes" :: NullOrUndefined (QualificationTypeList) } -> { "NumResults" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (PaginationToken), "QualificationTypes" :: NullOrUndefined (QualificationTypeList) }) -> ListQualificationTypesResponse
```

Constructs ListQualificationTypesResponse's fields from required parameters

#### `ListReviewPolicyResultsForHITRequest`

``` purescript
newtype ListReviewPolicyResultsForHITRequest
  = ListReviewPolicyResultsForHITRequest { "HITId" :: EntityId, "PolicyLevels" :: NullOrUndefined (ReviewPolicyLevelList), "RetrieveActions" :: NullOrUndefined (Boolean), "RetrieveResults" :: NullOrUndefined (Boolean), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListReviewPolicyResultsForHITRequest _
Generic ListReviewPolicyResultsForHITRequest _
Show ListReviewPolicyResultsForHITRequest
Decode ListReviewPolicyResultsForHITRequest
Encode ListReviewPolicyResultsForHITRequest
```

#### `newListReviewPolicyResultsForHITRequest`

``` purescript
newListReviewPolicyResultsForHITRequest :: EntityId -> ListReviewPolicyResultsForHITRequest
```

Constructs ListReviewPolicyResultsForHITRequest from required parameters

#### `newListReviewPolicyResultsForHITRequest'`

``` purescript
newListReviewPolicyResultsForHITRequest' :: EntityId -> ({ "HITId" :: EntityId, "PolicyLevels" :: NullOrUndefined (ReviewPolicyLevelList), "RetrieveActions" :: NullOrUndefined (Boolean), "RetrieveResults" :: NullOrUndefined (Boolean), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "HITId" :: EntityId, "PolicyLevels" :: NullOrUndefined (ReviewPolicyLevelList), "RetrieveActions" :: NullOrUndefined (Boolean), "RetrieveResults" :: NullOrUndefined (Boolean), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListReviewPolicyResultsForHITRequest
```

Constructs ListReviewPolicyResultsForHITRequest's fields from required parameters

#### `ListReviewPolicyResultsForHITResponse`

``` purescript
newtype ListReviewPolicyResultsForHITResponse
  = ListReviewPolicyResultsForHITResponse { "HITId" :: NullOrUndefined (EntityId), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "AssignmentReviewReport" :: NullOrUndefined (ReviewReport), "HITReviewReport" :: NullOrUndefined (ReviewReport), "NextToken" :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListReviewPolicyResultsForHITResponse _
Generic ListReviewPolicyResultsForHITResponse _
Show ListReviewPolicyResultsForHITResponse
Decode ListReviewPolicyResultsForHITResponse
Encode ListReviewPolicyResultsForHITResponse
```

#### `newListReviewPolicyResultsForHITResponse`

``` purescript
newListReviewPolicyResultsForHITResponse :: ListReviewPolicyResultsForHITResponse
```

Constructs ListReviewPolicyResultsForHITResponse from required parameters

#### `newListReviewPolicyResultsForHITResponse'`

``` purescript
newListReviewPolicyResultsForHITResponse' :: ({ "HITId" :: NullOrUndefined (EntityId), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "AssignmentReviewReport" :: NullOrUndefined (ReviewReport), "HITReviewReport" :: NullOrUndefined (ReviewReport), "NextToken" :: NullOrUndefined (PaginationToken) } -> { "HITId" :: NullOrUndefined (EntityId), "AssignmentReviewPolicy" :: NullOrUndefined (ReviewPolicy), "HITReviewPolicy" :: NullOrUndefined (ReviewPolicy), "AssignmentReviewReport" :: NullOrUndefined (ReviewReport), "HITReviewReport" :: NullOrUndefined (ReviewReport), "NextToken" :: NullOrUndefined (PaginationToken) }) -> ListReviewPolicyResultsForHITResponse
```

Constructs ListReviewPolicyResultsForHITResponse's fields from required parameters

#### `ListReviewableHITsRequest`

``` purescript
newtype ListReviewableHITsRequest
  = ListReviewableHITsRequest { "HITTypeId" :: NullOrUndefined (EntityId), "Status" :: NullOrUndefined (ReviewableHITStatus), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListReviewableHITsRequest _
Generic ListReviewableHITsRequest _
Show ListReviewableHITsRequest
Decode ListReviewableHITsRequest
Encode ListReviewableHITsRequest
```

#### `newListReviewableHITsRequest`

``` purescript
newListReviewableHITsRequest :: ListReviewableHITsRequest
```

Constructs ListReviewableHITsRequest from required parameters

#### `newListReviewableHITsRequest'`

``` purescript
newListReviewableHITsRequest' :: ({ "HITTypeId" :: NullOrUndefined (EntityId), "Status" :: NullOrUndefined (ReviewableHITStatus), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "HITTypeId" :: NullOrUndefined (EntityId), "Status" :: NullOrUndefined (ReviewableHITStatus), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListReviewableHITsRequest
```

Constructs ListReviewableHITsRequest's fields from required parameters

#### `ListReviewableHITsResponse`

``` purescript
newtype ListReviewableHITsResponse
  = ListReviewableHITsResponse { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) }
```

##### Instances
``` purescript
Newtype ListReviewableHITsResponse _
Generic ListReviewableHITsResponse _
Show ListReviewableHITsResponse
Decode ListReviewableHITsResponse
Encode ListReviewableHITsResponse
```

#### `newListReviewableHITsResponse`

``` purescript
newListReviewableHITsResponse :: ListReviewableHITsResponse
```

Constructs ListReviewableHITsResponse from required parameters

#### `newListReviewableHITsResponse'`

``` purescript
newListReviewableHITsResponse' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "HITs" :: NullOrUndefined (HITList) }) -> ListReviewableHITsResponse
```

Constructs ListReviewableHITsResponse's fields from required parameters

#### `ListWorkerBlocksRequest`

``` purescript
newtype ListWorkerBlocksRequest
  = ListWorkerBlocksRequest { "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListWorkerBlocksRequest _
Generic ListWorkerBlocksRequest _
Show ListWorkerBlocksRequest
Decode ListWorkerBlocksRequest
Encode ListWorkerBlocksRequest
```

#### `newListWorkerBlocksRequest`

``` purescript
newListWorkerBlocksRequest :: ListWorkerBlocksRequest
```

Constructs ListWorkerBlocksRequest from required parameters

#### `newListWorkerBlocksRequest'`

``` purescript
newListWorkerBlocksRequest' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListWorkerBlocksRequest
```

Constructs ListWorkerBlocksRequest's fields from required parameters

#### `ListWorkerBlocksResponse`

``` purescript
newtype ListWorkerBlocksResponse
  = ListWorkerBlocksResponse { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "WorkerBlocks" :: NullOrUndefined (WorkerBlockList) }
```

##### Instances
``` purescript
Newtype ListWorkerBlocksResponse _
Generic ListWorkerBlocksResponse _
Show ListWorkerBlocksResponse
Decode ListWorkerBlocksResponse
Encode ListWorkerBlocksResponse
```

#### `newListWorkerBlocksResponse`

``` purescript
newListWorkerBlocksResponse :: ListWorkerBlocksResponse
```

Constructs ListWorkerBlocksResponse from required parameters

#### `newListWorkerBlocksResponse'`

``` purescript
newListWorkerBlocksResponse' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "WorkerBlocks" :: NullOrUndefined (WorkerBlockList) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "WorkerBlocks" :: NullOrUndefined (WorkerBlockList) }) -> ListWorkerBlocksResponse
```

Constructs ListWorkerBlocksResponse's fields from required parameters

#### `ListWorkersWithQualificationTypeRequest`

``` purescript
newtype ListWorkersWithQualificationTypeRequest
  = ListWorkersWithQualificationTypeRequest { "QualificationTypeId" :: EntityId, "Status" :: NullOrUndefined (QualificationStatus), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }
```

##### Instances
``` purescript
Newtype ListWorkersWithQualificationTypeRequest _
Generic ListWorkersWithQualificationTypeRequest _
Show ListWorkersWithQualificationTypeRequest
Decode ListWorkersWithQualificationTypeRequest
Encode ListWorkersWithQualificationTypeRequest
```

#### `newListWorkersWithQualificationTypeRequest`

``` purescript
newListWorkersWithQualificationTypeRequest :: EntityId -> ListWorkersWithQualificationTypeRequest
```

Constructs ListWorkersWithQualificationTypeRequest from required parameters

#### `newListWorkersWithQualificationTypeRequest'`

``` purescript
newListWorkersWithQualificationTypeRequest' :: EntityId -> ({ "QualificationTypeId" :: EntityId, "Status" :: NullOrUndefined (QualificationStatus), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) } -> { "QualificationTypeId" :: EntityId, "Status" :: NullOrUndefined (QualificationStatus), "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ResultSize) }) -> ListWorkersWithQualificationTypeRequest
```

Constructs ListWorkersWithQualificationTypeRequest's fields from required parameters

#### `ListWorkersWithQualificationTypeResponse`

``` purescript
newtype ListWorkersWithQualificationTypeResponse
  = ListWorkersWithQualificationTypeResponse { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "Qualifications" :: NullOrUndefined (QualificationList) }
```

##### Instances
``` purescript
Newtype ListWorkersWithQualificationTypeResponse _
Generic ListWorkersWithQualificationTypeResponse _
Show ListWorkersWithQualificationTypeResponse
Decode ListWorkersWithQualificationTypeResponse
Encode ListWorkersWithQualificationTypeResponse
```

#### `newListWorkersWithQualificationTypeResponse`

``` purescript
newListWorkersWithQualificationTypeResponse :: ListWorkersWithQualificationTypeResponse
```

Constructs ListWorkersWithQualificationTypeResponse from required parameters

#### `newListWorkersWithQualificationTypeResponse'`

``` purescript
newListWorkersWithQualificationTypeResponse' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "Qualifications" :: NullOrUndefined (QualificationList) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "NumResults" :: NullOrUndefined (Int), "Qualifications" :: NullOrUndefined (QualificationList) }) -> ListWorkersWithQualificationTypeResponse
```

Constructs ListWorkersWithQualificationTypeResponse's fields from required parameters

#### `Locale`

``` purescript
newtype Locale
  = Locale { "Country" :: CountryParameters, "Subdivision" :: NullOrUndefined (CountryParameters) }
```

<p>The Locale data structure represents a geographical region or location.</p>

##### Instances
``` purescript
Newtype Locale _
Generic Locale _
Show Locale
Decode Locale
Encode Locale
```

#### `newLocale`

``` purescript
newLocale :: CountryParameters -> Locale
```

Constructs Locale from required parameters

#### `newLocale'`

``` purescript
newLocale' :: CountryParameters -> ({ "Country" :: CountryParameters, "Subdivision" :: NullOrUndefined (CountryParameters) } -> { "Country" :: CountryParameters, "Subdivision" :: NullOrUndefined (CountryParameters) }) -> Locale
```

Constructs Locale's fields from required parameters

#### `LocaleList`

``` purescript
newtype LocaleList
  = LocaleList (Array Locale)
```

##### Instances
``` purescript
Newtype LocaleList _
Generic LocaleList _
Show LocaleList
Decode LocaleList
Encode LocaleList
```

#### `NotificationSpecification`

``` purescript
newtype NotificationSpecification
  = NotificationSpecification { "Destination" :: String, "Transport" :: NotificationTransport, "Version" :: String, "EventTypes" :: EventTypeList }
```

<p>The NotificationSpecification data structure describes a HIT event notification for a HIT type.</p>

##### Instances
``` purescript
Newtype NotificationSpecification _
Generic NotificationSpecification _
Show NotificationSpecification
Decode NotificationSpecification
Encode NotificationSpecification
```

#### `newNotificationSpecification`

``` purescript
newNotificationSpecification :: String -> EventTypeList -> NotificationTransport -> String -> NotificationSpecification
```

Constructs NotificationSpecification from required parameters

#### `newNotificationSpecification'`

``` purescript
newNotificationSpecification' :: String -> EventTypeList -> NotificationTransport -> String -> ({ "Destination" :: String, "Transport" :: NotificationTransport, "Version" :: String, "EventTypes" :: EventTypeList } -> { "Destination" :: String, "Transport" :: NotificationTransport, "Version" :: String, "EventTypes" :: EventTypeList }) -> NotificationSpecification
```

Constructs NotificationSpecification's fields from required parameters

#### `NotificationTransport`

``` purescript
newtype NotificationTransport
  = NotificationTransport String
```

##### Instances
``` purescript
Newtype NotificationTransport _
Generic NotificationTransport _
Show NotificationTransport
Decode NotificationTransport
Encode NotificationTransport
```

#### `NotifyWorkersFailureCode`

``` purescript
newtype NotifyWorkersFailureCode
  = NotifyWorkersFailureCode String
```

##### Instances
``` purescript
Newtype NotifyWorkersFailureCode _
Generic NotifyWorkersFailureCode _
Show NotifyWorkersFailureCode
Decode NotifyWorkersFailureCode
Encode NotifyWorkersFailureCode
```

#### `NotifyWorkersFailureStatus`

``` purescript
newtype NotifyWorkersFailureStatus
  = NotifyWorkersFailureStatus { "NotifyWorkersFailureCode" :: NullOrUndefined (NotifyWorkersFailureCode), "NotifyWorkersFailureMessage" :: NullOrUndefined (String), "WorkerId" :: NullOrUndefined (CustomerId) }
```

<p> When MTurk encounters an issue with notifying the Workers you specified, it returns back this object with failure details. </p>

##### Instances
``` purescript
Newtype NotifyWorkersFailureStatus _
Generic NotifyWorkersFailureStatus _
Show NotifyWorkersFailureStatus
Decode NotifyWorkersFailureStatus
Encode NotifyWorkersFailureStatus
```

#### `newNotifyWorkersFailureStatus`

``` purescript
newNotifyWorkersFailureStatus :: NotifyWorkersFailureStatus
```

Constructs NotifyWorkersFailureStatus from required parameters

#### `newNotifyWorkersFailureStatus'`

``` purescript
newNotifyWorkersFailureStatus' :: ({ "NotifyWorkersFailureCode" :: NullOrUndefined (NotifyWorkersFailureCode), "NotifyWorkersFailureMessage" :: NullOrUndefined (String), "WorkerId" :: NullOrUndefined (CustomerId) } -> { "NotifyWorkersFailureCode" :: NullOrUndefined (NotifyWorkersFailureCode), "NotifyWorkersFailureMessage" :: NullOrUndefined (String), "WorkerId" :: NullOrUndefined (CustomerId) }) -> NotifyWorkersFailureStatus
```

Constructs NotifyWorkersFailureStatus's fields from required parameters

#### `NotifyWorkersFailureStatusList`

``` purescript
newtype NotifyWorkersFailureStatusList
  = NotifyWorkersFailureStatusList (Array NotifyWorkersFailureStatus)
```

##### Instances
``` purescript
Newtype NotifyWorkersFailureStatusList _
Generic NotifyWorkersFailureStatusList _
Show NotifyWorkersFailureStatusList
Decode NotifyWorkersFailureStatusList
Encode NotifyWorkersFailureStatusList
```

#### `NotifyWorkersRequest`

``` purescript
newtype NotifyWorkersRequest
  = NotifyWorkersRequest { "Subject" :: String, "MessageText" :: String, "WorkerIds" :: CustomerIdList }
```

##### Instances
``` purescript
Newtype NotifyWorkersRequest _
Generic NotifyWorkersRequest _
Show NotifyWorkersRequest
Decode NotifyWorkersRequest
Encode NotifyWorkersRequest
```

#### `newNotifyWorkersRequest`

``` purescript
newNotifyWorkersRequest :: String -> String -> CustomerIdList -> NotifyWorkersRequest
```

Constructs NotifyWorkersRequest from required parameters

#### `newNotifyWorkersRequest'`

``` purescript
newNotifyWorkersRequest' :: String -> String -> CustomerIdList -> ({ "Subject" :: String, "MessageText" :: String, "WorkerIds" :: CustomerIdList } -> { "Subject" :: String, "MessageText" :: String, "WorkerIds" :: CustomerIdList }) -> NotifyWorkersRequest
```

Constructs NotifyWorkersRequest's fields from required parameters

#### `NotifyWorkersResponse`

``` purescript
newtype NotifyWorkersResponse
  = NotifyWorkersResponse { "NotifyWorkersFailureStatuses" :: NullOrUndefined (NotifyWorkersFailureStatusList) }
```

##### Instances
``` purescript
Newtype NotifyWorkersResponse _
Generic NotifyWorkersResponse _
Show NotifyWorkersResponse
Decode NotifyWorkersResponse
Encode NotifyWorkersResponse
```

#### `newNotifyWorkersResponse`

``` purescript
newNotifyWorkersResponse :: NotifyWorkersResponse
```

Constructs NotifyWorkersResponse from required parameters

#### `newNotifyWorkersResponse'`

``` purescript
newNotifyWorkersResponse' :: ({ "NotifyWorkersFailureStatuses" :: NullOrUndefined (NotifyWorkersFailureStatusList) } -> { "NotifyWorkersFailureStatuses" :: NullOrUndefined (NotifyWorkersFailureStatusList) }) -> NotifyWorkersResponse
```

Constructs NotifyWorkersResponse's fields from required parameters

#### `PaginationToken`

``` purescript
newtype PaginationToken
  = PaginationToken String
```

<p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk returns a pagination token in the response. You can use this pagination token to retrieve the next set of results. </p>

##### Instances
``` purescript
Newtype PaginationToken _
Generic PaginationToken _
Show PaginationToken
Decode PaginationToken
Encode PaginationToken
```

#### `ParameterMapEntry`

``` purescript
newtype ParameterMapEntry
  = ParameterMapEntry { "Key" :: NullOrUndefined (String), "Values" :: NullOrUndefined (StringList) }
```

<p> This data structure is the data type for the AnswerKey parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>

##### Instances
``` purescript
Newtype ParameterMapEntry _
Generic ParameterMapEntry _
Show ParameterMapEntry
Decode ParameterMapEntry
Encode ParameterMapEntry
```

#### `newParameterMapEntry`

``` purescript
newParameterMapEntry :: ParameterMapEntry
```

Constructs ParameterMapEntry from required parameters

#### `newParameterMapEntry'`

``` purescript
newParameterMapEntry' :: ({ "Key" :: NullOrUndefined (String), "Values" :: NullOrUndefined (StringList) } -> { "Key" :: NullOrUndefined (String), "Values" :: NullOrUndefined (StringList) }) -> ParameterMapEntry
```

Constructs ParameterMapEntry's fields from required parameters

#### `ParameterMapEntryList`

``` purescript
newtype ParameterMapEntryList
  = ParameterMapEntryList (Array ParameterMapEntry)
```

##### Instances
``` purescript
Newtype ParameterMapEntryList _
Generic ParameterMapEntryList _
Show ParameterMapEntryList
Decode ParameterMapEntryList
Encode ParameterMapEntryList
```

#### `PolicyParameter`

``` purescript
newtype PolicyParameter
  = PolicyParameter { "Key" :: NullOrUndefined (String), "Values" :: NullOrUndefined (StringList), "MapEntries" :: NullOrUndefined (ParameterMapEntryList) }
```

<p> Name of the parameter from the Review policy. </p>

##### Instances
``` purescript
Newtype PolicyParameter _
Generic PolicyParameter _
Show PolicyParameter
Decode PolicyParameter
Encode PolicyParameter
```

#### `newPolicyParameter`

``` purescript
newPolicyParameter :: PolicyParameter
```

Constructs PolicyParameter from required parameters

#### `newPolicyParameter'`

``` purescript
newPolicyParameter' :: ({ "Key" :: NullOrUndefined (String), "Values" :: NullOrUndefined (StringList), "MapEntries" :: NullOrUndefined (ParameterMapEntryList) } -> { "Key" :: NullOrUndefined (String), "Values" :: NullOrUndefined (StringList), "MapEntries" :: NullOrUndefined (ParameterMapEntryList) }) -> PolicyParameter
```

Constructs PolicyParameter's fields from required parameters

#### `PolicyParameterList`

``` purescript
newtype PolicyParameterList
  = PolicyParameterList (Array PolicyParameter)
```

##### Instances
``` purescript
Newtype PolicyParameterList _
Generic PolicyParameterList _
Show PolicyParameterList
Decode PolicyParameterList
Encode PolicyParameterList
```

#### `Qualification`

``` purescript
newtype Qualification
  = Qualification { "QualificationTypeId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "GrantTime" :: NullOrUndefined (Timestamp), "IntegerValue" :: NullOrUndefined (Int), "LocaleValue" :: NullOrUndefined (Locale), "Status" :: NullOrUndefined (QualificationStatus) }
```

<p>The Qualification data structure represents a Qualification assigned to a user, including the Qualification type and the value (score).</p>

##### Instances
``` purescript
Newtype Qualification _
Generic Qualification _
Show Qualification
Decode Qualification
Encode Qualification
```

#### `newQualification`

``` purescript
newQualification :: Qualification
```

Constructs Qualification from required parameters

#### `newQualification'`

``` purescript
newQualification' :: ({ "QualificationTypeId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "GrantTime" :: NullOrUndefined (Timestamp), "IntegerValue" :: NullOrUndefined (Int), "LocaleValue" :: NullOrUndefined (Locale), "Status" :: NullOrUndefined (QualificationStatus) } -> { "QualificationTypeId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "GrantTime" :: NullOrUndefined (Timestamp), "IntegerValue" :: NullOrUndefined (Int), "LocaleValue" :: NullOrUndefined (Locale), "Status" :: NullOrUndefined (QualificationStatus) }) -> Qualification
```

Constructs Qualification's fields from required parameters

#### `QualificationList`

``` purescript
newtype QualificationList
  = QualificationList (Array Qualification)
```

##### Instances
``` purescript
Newtype QualificationList _
Generic QualificationList _
Show QualificationList
Decode QualificationList
Encode QualificationList
```

#### `QualificationRequest`

``` purescript
newtype QualificationRequest
  = QualificationRequest { "QualificationRequestId" :: NullOrUndefined (String), "QualificationTypeId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "Test" :: NullOrUndefined (String), "Answer" :: NullOrUndefined (String), "SubmitTime" :: NullOrUndefined (Timestamp) }
```

<p> The QualificationRequest data structure represents a request a Worker has made for a Qualification. </p>

##### Instances
``` purescript
Newtype QualificationRequest _
Generic QualificationRequest _
Show QualificationRequest
Decode QualificationRequest
Encode QualificationRequest
```

#### `newQualificationRequest`

``` purescript
newQualificationRequest :: QualificationRequest
```

Constructs QualificationRequest from required parameters

#### `newQualificationRequest'`

``` purescript
newQualificationRequest' :: ({ "QualificationRequestId" :: NullOrUndefined (String), "QualificationTypeId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "Test" :: NullOrUndefined (String), "Answer" :: NullOrUndefined (String), "SubmitTime" :: NullOrUndefined (Timestamp) } -> { "QualificationRequestId" :: NullOrUndefined (String), "QualificationTypeId" :: NullOrUndefined (EntityId), "WorkerId" :: NullOrUndefined (CustomerId), "Test" :: NullOrUndefined (String), "Answer" :: NullOrUndefined (String), "SubmitTime" :: NullOrUndefined (Timestamp) }) -> QualificationRequest
```

Constructs QualificationRequest's fields from required parameters

#### `QualificationRequestList`

``` purescript
newtype QualificationRequestList
  = QualificationRequestList (Array QualificationRequest)
```

##### Instances
``` purescript
Newtype QualificationRequestList _
Generic QualificationRequestList _
Show QualificationRequestList
Decode QualificationRequestList
Encode QualificationRequestList
```

#### `QualificationRequirement`

``` purescript
newtype QualificationRequirement
  = QualificationRequirement { "QualificationTypeId" :: String, "Comparator" :: Comparator, "IntegerValues" :: NullOrUndefined (IntegerList), "LocaleValues" :: NullOrUndefined (LocaleList), "RequiredToPreview" :: NullOrUndefined (Boolean) }
```

<p> The QualificationRequirement data structure describes a Qualification that a Worker must have before the Worker is allowed to accept a HIT. A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT. </p>

##### Instances
``` purescript
Newtype QualificationRequirement _
Generic QualificationRequirement _
Show QualificationRequirement
Decode QualificationRequirement
Encode QualificationRequirement
```

#### `newQualificationRequirement`

``` purescript
newQualificationRequirement :: Comparator -> String -> QualificationRequirement
```

Constructs QualificationRequirement from required parameters

#### `newQualificationRequirement'`

``` purescript
newQualificationRequirement' :: Comparator -> String -> ({ "QualificationTypeId" :: String, "Comparator" :: Comparator, "IntegerValues" :: NullOrUndefined (IntegerList), "LocaleValues" :: NullOrUndefined (LocaleList), "RequiredToPreview" :: NullOrUndefined (Boolean) } -> { "QualificationTypeId" :: String, "Comparator" :: Comparator, "IntegerValues" :: NullOrUndefined (IntegerList), "LocaleValues" :: NullOrUndefined (LocaleList), "RequiredToPreview" :: NullOrUndefined (Boolean) }) -> QualificationRequirement
```

Constructs QualificationRequirement's fields from required parameters

#### `QualificationRequirementList`

``` purescript
newtype QualificationRequirementList
  = QualificationRequirementList (Array QualificationRequirement)
```

##### Instances
``` purescript
Newtype QualificationRequirementList _
Generic QualificationRequirementList _
Show QualificationRequirementList
Decode QualificationRequirementList
Encode QualificationRequirementList
```

#### `QualificationStatus`

``` purescript
newtype QualificationStatus
  = QualificationStatus String
```

##### Instances
``` purescript
Newtype QualificationStatus _
Generic QualificationStatus _
Show QualificationStatus
Decode QualificationStatus
Encode QualificationStatus
```

#### `QualificationType`

``` purescript
newtype QualificationType
  = QualificationType { "QualificationTypeId" :: NullOrUndefined (EntityId), "CreationTime" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Keywords" :: NullOrUndefined (String), "QualificationTypeStatus" :: NullOrUndefined (QualificationTypeStatus), "Test" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "AnswerKey" :: NullOrUndefined (String), "RetryDelayInSeconds" :: NullOrUndefined (Number), "IsRequestable" :: NullOrUndefined (Boolean), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) }
```

<p> The QualificationType data structure represents a Qualification type, a description of a property of a Worker that must match the requirements of a HIT for the Worker to be able to accept the HIT. The type also describes how a Worker can obtain a Qualification of that type, such as through a Qualification test. </p>

##### Instances
``` purescript
Newtype QualificationType _
Generic QualificationType _
Show QualificationType
Decode QualificationType
Encode QualificationType
```

#### `newQualificationType`

``` purescript
newQualificationType :: QualificationType
```

Constructs QualificationType from required parameters

#### `newQualificationType'`

``` purescript
newQualificationType' :: ({ "QualificationTypeId" :: NullOrUndefined (EntityId), "CreationTime" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Keywords" :: NullOrUndefined (String), "QualificationTypeStatus" :: NullOrUndefined (QualificationTypeStatus), "Test" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "AnswerKey" :: NullOrUndefined (String), "RetryDelayInSeconds" :: NullOrUndefined (Number), "IsRequestable" :: NullOrUndefined (Boolean), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) } -> { "QualificationTypeId" :: NullOrUndefined (EntityId), "CreationTime" :: NullOrUndefined (Timestamp), "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "Keywords" :: NullOrUndefined (String), "QualificationTypeStatus" :: NullOrUndefined (QualificationTypeStatus), "Test" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "AnswerKey" :: NullOrUndefined (String), "RetryDelayInSeconds" :: NullOrUndefined (Number), "IsRequestable" :: NullOrUndefined (Boolean), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) }) -> QualificationType
```

Constructs QualificationType's fields from required parameters

#### `QualificationTypeList`

``` purescript
newtype QualificationTypeList
  = QualificationTypeList (Array QualificationType)
```

##### Instances
``` purescript
Newtype QualificationTypeList _
Generic QualificationTypeList _
Show QualificationTypeList
Decode QualificationTypeList
Encode QualificationTypeList
```

#### `QualificationTypeStatus`

``` purescript
newtype QualificationTypeStatus
  = QualificationTypeStatus String
```

##### Instances
``` purescript
Newtype QualificationTypeStatus _
Generic QualificationTypeStatus _
Show QualificationTypeStatus
Decode QualificationTypeStatus
Encode QualificationTypeStatus
```

#### `RejectAssignmentRequest`

``` purescript
newtype RejectAssignmentRequest
  = RejectAssignmentRequest { "AssignmentId" :: EntityId, "RequesterFeedback" :: String }
```

##### Instances
``` purescript
Newtype RejectAssignmentRequest _
Generic RejectAssignmentRequest _
Show RejectAssignmentRequest
Decode RejectAssignmentRequest
Encode RejectAssignmentRequest
```

#### `newRejectAssignmentRequest`

``` purescript
newRejectAssignmentRequest :: EntityId -> String -> RejectAssignmentRequest
```

Constructs RejectAssignmentRequest from required parameters

#### `newRejectAssignmentRequest'`

``` purescript
newRejectAssignmentRequest' :: EntityId -> String -> ({ "AssignmentId" :: EntityId, "RequesterFeedback" :: String } -> { "AssignmentId" :: EntityId, "RequesterFeedback" :: String }) -> RejectAssignmentRequest
```

Constructs RejectAssignmentRequest's fields from required parameters

#### `RejectAssignmentResponse`

``` purescript
newtype RejectAssignmentResponse
  = RejectAssignmentResponse NoArguments
```

##### Instances
``` purescript
Newtype RejectAssignmentResponse _
Generic RejectAssignmentResponse _
Show RejectAssignmentResponse
Decode RejectAssignmentResponse
Encode RejectAssignmentResponse
```

#### `RejectQualificationRequestRequest`

``` purescript
newtype RejectQualificationRequestRequest
  = RejectQualificationRequestRequest { "QualificationRequestId" :: String, "Reason" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype RejectQualificationRequestRequest _
Generic RejectQualificationRequestRequest _
Show RejectQualificationRequestRequest
Decode RejectQualificationRequestRequest
Encode RejectQualificationRequestRequest
```

#### `newRejectQualificationRequestRequest`

``` purescript
newRejectQualificationRequestRequest :: String -> RejectQualificationRequestRequest
```

Constructs RejectQualificationRequestRequest from required parameters

#### `newRejectQualificationRequestRequest'`

``` purescript
newRejectQualificationRequestRequest' :: String -> ({ "QualificationRequestId" :: String, "Reason" :: NullOrUndefined (String) } -> { "QualificationRequestId" :: String, "Reason" :: NullOrUndefined (String) }) -> RejectQualificationRequestRequest
```

Constructs RejectQualificationRequestRequest's fields from required parameters

#### `RejectQualificationRequestResponse`

``` purescript
newtype RejectQualificationRequestResponse
  = RejectQualificationRequestResponse NoArguments
```

##### Instances
``` purescript
Newtype RejectQualificationRequestResponse _
Generic RejectQualificationRequestResponse _
Show RejectQualificationRequestResponse
Decode RejectQualificationRequestResponse
Encode RejectQualificationRequestResponse
```

#### `RequestError`

``` purescript
newtype RequestError
  = RequestError { "Message" :: NullOrUndefined (ExceptionMessage), "TurkErrorCode" :: NullOrUndefined (TurkErrorCode) }
```

<p>Your request is invalid.</p>

##### Instances
``` purescript
Newtype RequestError _
Generic RequestError _
Show RequestError
Decode RequestError
Encode RequestError
```

#### `newRequestError`

``` purescript
newRequestError :: RequestError
```

Constructs RequestError from required parameters

#### `newRequestError'`

``` purescript
newRequestError' :: ({ "Message" :: NullOrUndefined (ExceptionMessage), "TurkErrorCode" :: NullOrUndefined (TurkErrorCode) } -> { "Message" :: NullOrUndefined (ExceptionMessage), "TurkErrorCode" :: NullOrUndefined (TurkErrorCode) }) -> RequestError
```

Constructs RequestError's fields from required parameters

#### `ResultSize`

``` purescript
newtype ResultSize
  = ResultSize Int
```

##### Instances
``` purescript
Newtype ResultSize _
Generic ResultSize _
Show ResultSize
Decode ResultSize
Encode ResultSize
```

#### `ReviewActionDetail`

``` purescript
newtype ReviewActionDetail
  = ReviewActionDetail { "ActionId" :: NullOrUndefined (EntityId), "ActionName" :: NullOrUndefined (String), "TargetId" :: NullOrUndefined (EntityId), "TargetType" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ReviewActionStatus), "CompleteTime" :: NullOrUndefined (Timestamp), "Result" :: NullOrUndefined (String), "ErrorCode" :: NullOrUndefined (String) }
```

<p> Both the AssignmentReviewReport and the HITReviewReport elements contains the ReviewActionDetail data structure. This structure is returned multiple times for each action specified in the Review Policy. </p>

##### Instances
``` purescript
Newtype ReviewActionDetail _
Generic ReviewActionDetail _
Show ReviewActionDetail
Decode ReviewActionDetail
Encode ReviewActionDetail
```

#### `newReviewActionDetail`

``` purescript
newReviewActionDetail :: ReviewActionDetail
```

Constructs ReviewActionDetail from required parameters

#### `newReviewActionDetail'`

``` purescript
newReviewActionDetail' :: ({ "ActionId" :: NullOrUndefined (EntityId), "ActionName" :: NullOrUndefined (String), "TargetId" :: NullOrUndefined (EntityId), "TargetType" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ReviewActionStatus), "CompleteTime" :: NullOrUndefined (Timestamp), "Result" :: NullOrUndefined (String), "ErrorCode" :: NullOrUndefined (String) } -> { "ActionId" :: NullOrUndefined (EntityId), "ActionName" :: NullOrUndefined (String), "TargetId" :: NullOrUndefined (EntityId), "TargetType" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ReviewActionStatus), "CompleteTime" :: NullOrUndefined (Timestamp), "Result" :: NullOrUndefined (String), "ErrorCode" :: NullOrUndefined (String) }) -> ReviewActionDetail
```

Constructs ReviewActionDetail's fields from required parameters

#### `ReviewActionDetailList`

``` purescript
newtype ReviewActionDetailList
  = ReviewActionDetailList (Array ReviewActionDetail)
```

##### Instances
``` purescript
Newtype ReviewActionDetailList _
Generic ReviewActionDetailList _
Show ReviewActionDetailList
Decode ReviewActionDetailList
Encode ReviewActionDetailList
```

#### `ReviewActionStatus`

``` purescript
newtype ReviewActionStatus
  = ReviewActionStatus String
```

##### Instances
``` purescript
Newtype ReviewActionStatus _
Generic ReviewActionStatus _
Show ReviewActionStatus
Decode ReviewActionStatus
Encode ReviewActionStatus
```

#### `ReviewPolicy`

``` purescript
newtype ReviewPolicy
  = ReviewPolicy { "PolicyName" :: String, "Parameters" :: NullOrUndefined (PolicyParameterList) }
```

<p> HIT Review Policy data structures represent HIT review policies, which you specify when you create a HIT. </p>

##### Instances
``` purescript
Newtype ReviewPolicy _
Generic ReviewPolicy _
Show ReviewPolicy
Decode ReviewPolicy
Encode ReviewPolicy
```

#### `newReviewPolicy`

``` purescript
newReviewPolicy :: String -> ReviewPolicy
```

Constructs ReviewPolicy from required parameters

#### `newReviewPolicy'`

``` purescript
newReviewPolicy' :: String -> ({ "PolicyName" :: String, "Parameters" :: NullOrUndefined (PolicyParameterList) } -> { "PolicyName" :: String, "Parameters" :: NullOrUndefined (PolicyParameterList) }) -> ReviewPolicy
```

Constructs ReviewPolicy's fields from required parameters

#### `ReviewPolicyLevel`

``` purescript
newtype ReviewPolicyLevel
  = ReviewPolicyLevel String
```

##### Instances
``` purescript
Newtype ReviewPolicyLevel _
Generic ReviewPolicyLevel _
Show ReviewPolicyLevel
Decode ReviewPolicyLevel
Encode ReviewPolicyLevel
```

#### `ReviewPolicyLevelList`

``` purescript
newtype ReviewPolicyLevelList
  = ReviewPolicyLevelList (Array ReviewPolicyLevel)
```

##### Instances
``` purescript
Newtype ReviewPolicyLevelList _
Generic ReviewPolicyLevelList _
Show ReviewPolicyLevelList
Decode ReviewPolicyLevelList
Encode ReviewPolicyLevelList
```

#### `ReviewReport`

``` purescript
newtype ReviewReport
  = ReviewReport { "ReviewResults" :: NullOrUndefined (ReviewResultDetailList), "ReviewActions" :: NullOrUndefined (ReviewActionDetailList) }
```

<p> Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>

##### Instances
``` purescript
Newtype ReviewReport _
Generic ReviewReport _
Show ReviewReport
Decode ReviewReport
Encode ReviewReport
```

#### `newReviewReport`

``` purescript
newReviewReport :: ReviewReport
```

Constructs ReviewReport from required parameters

#### `newReviewReport'`

``` purescript
newReviewReport' :: ({ "ReviewResults" :: NullOrUndefined (ReviewResultDetailList), "ReviewActions" :: NullOrUndefined (ReviewActionDetailList) } -> { "ReviewResults" :: NullOrUndefined (ReviewResultDetailList), "ReviewActions" :: NullOrUndefined (ReviewActionDetailList) }) -> ReviewReport
```

Constructs ReviewReport's fields from required parameters

#### `ReviewResultDetail`

``` purescript
newtype ReviewResultDetail
  = ReviewResultDetail { "ActionId" :: NullOrUndefined (EntityId), "SubjectId" :: NullOrUndefined (EntityId), "SubjectType" :: NullOrUndefined (String), "QuestionId" :: NullOrUndefined (EntityId), "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }
```

<p> This data structure is returned multiple times for each result specified in the Review Policy. </p>

##### Instances
``` purescript
Newtype ReviewResultDetail _
Generic ReviewResultDetail _
Show ReviewResultDetail
Decode ReviewResultDetail
Encode ReviewResultDetail
```

#### `newReviewResultDetail`

``` purescript
newReviewResultDetail :: ReviewResultDetail
```

Constructs ReviewResultDetail from required parameters

#### `newReviewResultDetail'`

``` purescript
newReviewResultDetail' :: ({ "ActionId" :: NullOrUndefined (EntityId), "SubjectId" :: NullOrUndefined (EntityId), "SubjectType" :: NullOrUndefined (String), "QuestionId" :: NullOrUndefined (EntityId), "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) } -> { "ActionId" :: NullOrUndefined (EntityId), "SubjectId" :: NullOrUndefined (EntityId), "SubjectType" :: NullOrUndefined (String), "QuestionId" :: NullOrUndefined (EntityId), "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }) -> ReviewResultDetail
```

Constructs ReviewResultDetail's fields from required parameters

#### `ReviewResultDetailList`

``` purescript
newtype ReviewResultDetailList
  = ReviewResultDetailList (Array ReviewResultDetail)
```

##### Instances
``` purescript
Newtype ReviewResultDetailList _
Generic ReviewResultDetailList _
Show ReviewResultDetailList
Decode ReviewResultDetailList
Encode ReviewResultDetailList
```

#### `ReviewableHITStatus`

``` purescript
newtype ReviewableHITStatus
  = ReviewableHITStatus String
```

##### Instances
``` purescript
Newtype ReviewableHITStatus _
Generic ReviewableHITStatus _
Show ReviewableHITStatus
Decode ReviewableHITStatus
Encode ReviewableHITStatus
```

#### `SendBonusRequest`

``` purescript
newtype SendBonusRequest
  = SendBonusRequest { "WorkerId" :: CustomerId, "BonusAmount" :: CurrencyAmount, "AssignmentId" :: EntityId, "Reason" :: String, "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken) }
```

##### Instances
``` purescript
Newtype SendBonusRequest _
Generic SendBonusRequest _
Show SendBonusRequest
Decode SendBonusRequest
Encode SendBonusRequest
```

#### `newSendBonusRequest`

``` purescript
newSendBonusRequest :: EntityId -> CurrencyAmount -> String -> CustomerId -> SendBonusRequest
```

Constructs SendBonusRequest from required parameters

#### `newSendBonusRequest'`

``` purescript
newSendBonusRequest' :: EntityId -> CurrencyAmount -> String -> CustomerId -> ({ "WorkerId" :: CustomerId, "BonusAmount" :: CurrencyAmount, "AssignmentId" :: EntityId, "Reason" :: String, "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken) } -> { "WorkerId" :: CustomerId, "BonusAmount" :: CurrencyAmount, "AssignmentId" :: EntityId, "Reason" :: String, "UniqueRequestToken" :: NullOrUndefined (IdempotencyToken) }) -> SendBonusRequest
```

Constructs SendBonusRequest's fields from required parameters

#### `SendBonusResponse`

``` purescript
newtype SendBonusResponse
  = SendBonusResponse NoArguments
```

##### Instances
``` purescript
Newtype SendBonusResponse _
Generic SendBonusResponse _
Show SendBonusResponse
Decode SendBonusResponse
Encode SendBonusResponse
```

#### `SendTestEventNotificationRequest`

``` purescript
newtype SendTestEventNotificationRequest
  = SendTestEventNotificationRequest { "Notification" :: NotificationSpecification, "TestEventType" :: EventType }
```

##### Instances
``` purescript
Newtype SendTestEventNotificationRequest _
Generic SendTestEventNotificationRequest _
Show SendTestEventNotificationRequest
Decode SendTestEventNotificationRequest
Encode SendTestEventNotificationRequest
```

#### `newSendTestEventNotificationRequest`

``` purescript
newSendTestEventNotificationRequest :: NotificationSpecification -> EventType -> SendTestEventNotificationRequest
```

Constructs SendTestEventNotificationRequest from required parameters

#### `newSendTestEventNotificationRequest'`

``` purescript
newSendTestEventNotificationRequest' :: NotificationSpecification -> EventType -> ({ "Notification" :: NotificationSpecification, "TestEventType" :: EventType } -> { "Notification" :: NotificationSpecification, "TestEventType" :: EventType }) -> SendTestEventNotificationRequest
```

Constructs SendTestEventNotificationRequest's fields from required parameters

#### `SendTestEventNotificationResponse`

``` purescript
newtype SendTestEventNotificationResponse
  = SendTestEventNotificationResponse NoArguments
```

##### Instances
``` purescript
Newtype SendTestEventNotificationResponse _
Generic SendTestEventNotificationResponse _
Show SendTestEventNotificationResponse
Decode SendTestEventNotificationResponse
Encode SendTestEventNotificationResponse
```

#### `ServiceFault`

``` purescript
newtype ServiceFault
  = ServiceFault { "Message" :: NullOrUndefined (ExceptionMessage), "TurkErrorCode" :: NullOrUndefined (TurkErrorCode) }
```

<p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>

##### Instances
``` purescript
Newtype ServiceFault _
Generic ServiceFault _
Show ServiceFault
Decode ServiceFault
Encode ServiceFault
```

#### `newServiceFault`

``` purescript
newServiceFault :: ServiceFault
```

Constructs ServiceFault from required parameters

#### `newServiceFault'`

``` purescript
newServiceFault' :: ({ "Message" :: NullOrUndefined (ExceptionMessage), "TurkErrorCode" :: NullOrUndefined (TurkErrorCode) } -> { "Message" :: NullOrUndefined (ExceptionMessage), "TurkErrorCode" :: NullOrUndefined (TurkErrorCode) }) -> ServiceFault
```

Constructs ServiceFault's fields from required parameters

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array String)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `TurkErrorCode`

``` purescript
newtype TurkErrorCode
  = TurkErrorCode String
```

##### Instances
``` purescript
Newtype TurkErrorCode _
Generic TurkErrorCode _
Show TurkErrorCode
Decode TurkErrorCode
Encode TurkErrorCode
```

#### `UpdateExpirationForHITRequest`

``` purescript
newtype UpdateExpirationForHITRequest
  = UpdateExpirationForHITRequest { "HITId" :: EntityId, "ExpireAt" :: Timestamp }
```

##### Instances
``` purescript
Newtype UpdateExpirationForHITRequest _
Generic UpdateExpirationForHITRequest _
Show UpdateExpirationForHITRequest
Decode UpdateExpirationForHITRequest
Encode UpdateExpirationForHITRequest
```

#### `newUpdateExpirationForHITRequest`

``` purescript
newUpdateExpirationForHITRequest :: Timestamp -> EntityId -> UpdateExpirationForHITRequest
```

Constructs UpdateExpirationForHITRequest from required parameters

#### `newUpdateExpirationForHITRequest'`

``` purescript
newUpdateExpirationForHITRequest' :: Timestamp -> EntityId -> ({ "HITId" :: EntityId, "ExpireAt" :: Timestamp } -> { "HITId" :: EntityId, "ExpireAt" :: Timestamp }) -> UpdateExpirationForHITRequest
```

Constructs UpdateExpirationForHITRequest's fields from required parameters

#### `UpdateExpirationForHITResponse`

``` purescript
newtype UpdateExpirationForHITResponse
  = UpdateExpirationForHITResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateExpirationForHITResponse _
Generic UpdateExpirationForHITResponse _
Show UpdateExpirationForHITResponse
Decode UpdateExpirationForHITResponse
Encode UpdateExpirationForHITResponse
```

#### `UpdateHITReviewStatusRequest`

``` purescript
newtype UpdateHITReviewStatusRequest
  = UpdateHITReviewStatusRequest { "HITId" :: EntityId, "Revert" :: NullOrUndefined (Boolean) }
```

##### Instances
``` purescript
Newtype UpdateHITReviewStatusRequest _
Generic UpdateHITReviewStatusRequest _
Show UpdateHITReviewStatusRequest
Decode UpdateHITReviewStatusRequest
Encode UpdateHITReviewStatusRequest
```

#### `newUpdateHITReviewStatusRequest`

``` purescript
newUpdateHITReviewStatusRequest :: EntityId -> UpdateHITReviewStatusRequest
```

Constructs UpdateHITReviewStatusRequest from required parameters

#### `newUpdateHITReviewStatusRequest'`

``` purescript
newUpdateHITReviewStatusRequest' :: EntityId -> ({ "HITId" :: EntityId, "Revert" :: NullOrUndefined (Boolean) } -> { "HITId" :: EntityId, "Revert" :: NullOrUndefined (Boolean) }) -> UpdateHITReviewStatusRequest
```

Constructs UpdateHITReviewStatusRequest's fields from required parameters

#### `UpdateHITReviewStatusResponse`

``` purescript
newtype UpdateHITReviewStatusResponse
  = UpdateHITReviewStatusResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateHITReviewStatusResponse _
Generic UpdateHITReviewStatusResponse _
Show UpdateHITReviewStatusResponse
Decode UpdateHITReviewStatusResponse
Encode UpdateHITReviewStatusResponse
```

#### `UpdateHITTypeOfHITRequest`

``` purescript
newtype UpdateHITTypeOfHITRequest
  = UpdateHITTypeOfHITRequest { "HITId" :: EntityId, "HITTypeId" :: EntityId }
```

##### Instances
``` purescript
Newtype UpdateHITTypeOfHITRequest _
Generic UpdateHITTypeOfHITRequest _
Show UpdateHITTypeOfHITRequest
Decode UpdateHITTypeOfHITRequest
Encode UpdateHITTypeOfHITRequest
```

#### `newUpdateHITTypeOfHITRequest`

``` purescript
newUpdateHITTypeOfHITRequest :: EntityId -> EntityId -> UpdateHITTypeOfHITRequest
```

Constructs UpdateHITTypeOfHITRequest from required parameters

#### `newUpdateHITTypeOfHITRequest'`

``` purescript
newUpdateHITTypeOfHITRequest' :: EntityId -> EntityId -> ({ "HITId" :: EntityId, "HITTypeId" :: EntityId } -> { "HITId" :: EntityId, "HITTypeId" :: EntityId }) -> UpdateHITTypeOfHITRequest
```

Constructs UpdateHITTypeOfHITRequest's fields from required parameters

#### `UpdateHITTypeOfHITResponse`

``` purescript
newtype UpdateHITTypeOfHITResponse
  = UpdateHITTypeOfHITResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateHITTypeOfHITResponse _
Generic UpdateHITTypeOfHITResponse _
Show UpdateHITTypeOfHITResponse
Decode UpdateHITTypeOfHITResponse
Encode UpdateHITTypeOfHITResponse
```

#### `UpdateNotificationSettingsRequest`

``` purescript
newtype UpdateNotificationSettingsRequest
  = UpdateNotificationSettingsRequest { "HITTypeId" :: EntityId, "Notification" :: NullOrUndefined (NotificationSpecification), "Active" :: NullOrUndefined (Boolean) }
```

##### Instances
``` purescript
Newtype UpdateNotificationSettingsRequest _
Generic UpdateNotificationSettingsRequest _
Show UpdateNotificationSettingsRequest
Decode UpdateNotificationSettingsRequest
Encode UpdateNotificationSettingsRequest
```

#### `newUpdateNotificationSettingsRequest`

``` purescript
newUpdateNotificationSettingsRequest :: EntityId -> UpdateNotificationSettingsRequest
```

Constructs UpdateNotificationSettingsRequest from required parameters

#### `newUpdateNotificationSettingsRequest'`

``` purescript
newUpdateNotificationSettingsRequest' :: EntityId -> ({ "HITTypeId" :: EntityId, "Notification" :: NullOrUndefined (NotificationSpecification), "Active" :: NullOrUndefined (Boolean) } -> { "HITTypeId" :: EntityId, "Notification" :: NullOrUndefined (NotificationSpecification), "Active" :: NullOrUndefined (Boolean) }) -> UpdateNotificationSettingsRequest
```

Constructs UpdateNotificationSettingsRequest's fields from required parameters

#### `UpdateNotificationSettingsResponse`

``` purescript
newtype UpdateNotificationSettingsResponse
  = UpdateNotificationSettingsResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateNotificationSettingsResponse _
Generic UpdateNotificationSettingsResponse _
Show UpdateNotificationSettingsResponse
Decode UpdateNotificationSettingsResponse
Encode UpdateNotificationSettingsResponse
```

#### `UpdateQualificationTypeRequest`

``` purescript
newtype UpdateQualificationTypeRequest
  = UpdateQualificationTypeRequest { "QualificationTypeId" :: EntityId, "Description" :: NullOrUndefined (String), "QualificationTypeStatus" :: NullOrUndefined (QualificationTypeStatus), "Test" :: NullOrUndefined (String), "AnswerKey" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "RetryDelayInSeconds" :: NullOrUndefined (Number), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) }
```

##### Instances
``` purescript
Newtype UpdateQualificationTypeRequest _
Generic UpdateQualificationTypeRequest _
Show UpdateQualificationTypeRequest
Decode UpdateQualificationTypeRequest
Encode UpdateQualificationTypeRequest
```

#### `newUpdateQualificationTypeRequest`

``` purescript
newUpdateQualificationTypeRequest :: EntityId -> UpdateQualificationTypeRequest
```

Constructs UpdateQualificationTypeRequest from required parameters

#### `newUpdateQualificationTypeRequest'`

``` purescript
newUpdateQualificationTypeRequest' :: EntityId -> ({ "QualificationTypeId" :: EntityId, "Description" :: NullOrUndefined (String), "QualificationTypeStatus" :: NullOrUndefined (QualificationTypeStatus), "Test" :: NullOrUndefined (String), "AnswerKey" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "RetryDelayInSeconds" :: NullOrUndefined (Number), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) } -> { "QualificationTypeId" :: EntityId, "Description" :: NullOrUndefined (String), "QualificationTypeStatus" :: NullOrUndefined (QualificationTypeStatus), "Test" :: NullOrUndefined (String), "AnswerKey" :: NullOrUndefined (String), "TestDurationInSeconds" :: NullOrUndefined (Number), "RetryDelayInSeconds" :: NullOrUndefined (Number), "AutoGranted" :: NullOrUndefined (Boolean), "AutoGrantedValue" :: NullOrUndefined (Int) }) -> UpdateQualificationTypeRequest
```

Constructs UpdateQualificationTypeRequest's fields from required parameters

#### `UpdateQualificationTypeResponse`

``` purescript
newtype UpdateQualificationTypeResponse
  = UpdateQualificationTypeResponse { "QualificationType" :: NullOrUndefined (QualificationType) }
```

##### Instances
``` purescript
Newtype UpdateQualificationTypeResponse _
Generic UpdateQualificationTypeResponse _
Show UpdateQualificationTypeResponse
Decode UpdateQualificationTypeResponse
Encode UpdateQualificationTypeResponse
```

#### `newUpdateQualificationTypeResponse`

``` purescript
newUpdateQualificationTypeResponse :: UpdateQualificationTypeResponse
```

Constructs UpdateQualificationTypeResponse from required parameters

#### `newUpdateQualificationTypeResponse'`

``` purescript
newUpdateQualificationTypeResponse' :: ({ "QualificationType" :: NullOrUndefined (QualificationType) } -> { "QualificationType" :: NullOrUndefined (QualificationType) }) -> UpdateQualificationTypeResponse
```

Constructs UpdateQualificationTypeResponse's fields from required parameters

#### `WorkerBlock`

``` purescript
newtype WorkerBlock
  = WorkerBlock { "WorkerId" :: NullOrUndefined (CustomerId), "Reason" :: NullOrUndefined (String) }
```

<p> The WorkerBlock data structure represents a Worker who has been blocked. It has two elements: the WorkerId and the Reason for the block. </p>

##### Instances
``` purescript
Newtype WorkerBlock _
Generic WorkerBlock _
Show WorkerBlock
Decode WorkerBlock
Encode WorkerBlock
```

#### `newWorkerBlock`

``` purescript
newWorkerBlock :: WorkerBlock
```

Constructs WorkerBlock from required parameters

#### `newWorkerBlock'`

``` purescript
newWorkerBlock' :: ({ "WorkerId" :: NullOrUndefined (CustomerId), "Reason" :: NullOrUndefined (String) } -> { "WorkerId" :: NullOrUndefined (CustomerId), "Reason" :: NullOrUndefined (String) }) -> WorkerBlock
```

Constructs WorkerBlock's fields from required parameters

#### `WorkerBlockList`

``` purescript
newtype WorkerBlockList
  = WorkerBlockList (Array WorkerBlock)
```

##### Instances
``` purescript
Newtype WorkerBlockList _
Generic WorkerBlockList _
Show WorkerBlockList
Decode WorkerBlockList
Encode WorkerBlockList
```


