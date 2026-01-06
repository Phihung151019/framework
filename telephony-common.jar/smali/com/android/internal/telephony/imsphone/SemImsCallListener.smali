.class public Lcom/android/internal/telephony/imsphone/SemImsCallListener;
.super Lcom/android/ims/ImsCall$Listener;
.source "SemImsCallListener.java"


# instance fields
.field private blacklist mListener:Lcom/android/ims/ImsCall$Listener;

.field private final blacklist mListenerType:I

.field private blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsCall$Listener;ILcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 59
    iput p2, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    .line 61
    iget-object p1, p3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-void
.end method

.method private varargs blacklist iLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    .line 725
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->listenerTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    move-object v5, p2

    .line 724
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->iLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist listenerTypeToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 714
    const-string p0, "CallListener"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    .line 715
    const-string p0, "UssdListener"

    return-object p0

    .line 716
    :cond_1
    const-string p0, "UnknownListener"

    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemImsCallListener"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist onCallCancelTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallCancelTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallCancelTransferred(Lcom/android/ims/ImsCall;)V
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallCancelTransferred(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V

    return-void
.end method

.method public blacklist onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "srcAccessTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "targetAccessTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, p4, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 515
    const-string v1, "onCallHandover"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "srcAccessTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "targetAccessTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, p4, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 567
    const-string v1, "onCallHandoverFailed"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 169
    const-string v0, "onCallHeld"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 182
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallHoldFailed"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 194
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallHoldReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallInitiating(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 75
    const-string v0, "onCallInitiating"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallInitiating(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 273
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallMergeFailed"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swapCalls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallMerged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->setImsCallList()V

    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 87
    const-string v0, "onCallProgressing"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallQualityChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V

    return-void
.end method

.method public blacklist onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 219
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallResumeFailed"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 231
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallResumeReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V

    .line 235
    iget v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    const-string v0, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    const-string p1, "onCallResumeReceived - Notify SuppServiceNotification for MT conference"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->log(Ljava/lang/String;)V

    .line 238
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 239
    iput v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v0, 0x4

    .line 240
    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 241
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    :cond_0
    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 206
    const-string v0, "onCallResumed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    .locals 2

    .line 625
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallSessionDtmfReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V

    return-void
.end method

.method public blacklist onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extension size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 649
    const-string v1, "onCallSessionRtpHeaderExtensionsReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V

    return-void
.end method

.method public blacklist onCallSessionSendAnbrQuery(Lcom/android/ims/ImsCall;III)V
    .locals 4

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitsPerSecond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 669
    const-string v1, "onCallSessionSendAnbrQuery"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallSessionSendAnbrQuery(Lcom/android/ims/ImsCall;III)V

    return-void
.end method

.method public blacklist onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 614
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallSessionTransferFailed"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 608
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallSessionTransferred"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferred(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .locals 2

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallSessionTtyModeReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V

    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 116
    const-string v0, "onCallStartFailed"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVendorTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->overrideImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    const-string p2, "onCallStartFailed - Override reasonInfo for TEST"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, v0

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 99
    const-string v0, "onCallStarted"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsUssdSession()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 101
    const-string v0, "onCallStarted - ImsCall is not USSD session"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->log(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallStateChanged(Lcom/android/ims/ImsCall;)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallStateChanged(Lcom/android/ims/ImsCall;I)V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;I)V

    return-void
.end method

.method public blacklist onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 2

    .line 487
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogUtils;->imsSuppServiceNotificationToString(Landroid/telephony/ims/ImsSuppServiceNotification;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 487
    const-string v1, "onCallSuppServiceReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 139
    const-string v0, "onCallTerminated"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsUssdSession()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 141
    const-string v0, "onCallTerminated - ImsCall is not USSD session"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->log(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVendorTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->overrideImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    const-string p2, "onCallTerminated - Override reasonInfo for TEST"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, v0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->isSimulateCallStartFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    const-string v0, "onCallTerminated - Call onCallStartFailed callback for TEST"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->log(Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 158
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 285
    const-string v0, "onCallUpdated"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .locals 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCallUssdMessageReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "participants size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 413
    const-string v1, "onConferenceParticipantsStateChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V

    .line 419
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->setImsCallList()V

    return-void
.end method

.method public blacklist onImsCallEvent(Lcom/android/ims/ImsCall;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onImsCallEvent"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onImsCallEvent(Lcom/android/ims/ImsCall;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onMultipartyStateChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V

    .line 586
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->setImsCallList()V

    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 597
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onRttAudioIndicatorChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public blacklist onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 2

    .line 552
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onRttMessageReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .locals 2

    .line 527
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onRttModifyRequestReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onRttModifyResponseReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V

    return-void
.end method
