.class public Lcom/android/ims/ImsCall;
.super Ljava/lang/Object;
.source "ImsCall.java"

# interfaces
.implements Lcom/android/ims/internal/ICall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCall$Listener;,
        Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
    }
.end annotation


# static fields
.field private static final blacklist CONF_DBG:Z = true

.field private static final blacklist DBG:Z

.field private static final blacklist FORCE_DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ImsCall"

.field public static final blacklist UPDATE_CANCEL_TRANSFER_CALL:I = 0xb

.field private static final blacklist UPDATE_EXTEND_TO_CONFERENCE:I = 0x5

.field private static final blacklist UPDATE_HOLD:I = 0x1

.field private static final blacklist UPDATE_HOLD_MERGE:I = 0x2

.field private static final blacklist UPDATE_MERGE:I = 0x4

.field private static final blacklist UPDATE_NONE:I = 0x0

.field private static final blacklist UPDATE_RESUME:I = 0x3

.field public static final blacklist UPDATE_RESUME_MERGE:I = 0x9

.field public static final blacklist UPDATE_RTT:I = 0xc

.field public static final blacklist UPDATE_TRANSFER_CALL:I = 0xa

.field private static final blacklist UPDATE_UNSPECIFIED:I = 0x6

.field public static final blacklist USSD_MODE_NOTIFY:I = 0x0

.field public static final blacklist USSD_MODE_REQUEST:I = 0x1

.field private static final blacklist VDBG:Z

.field private static final blacklist sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mAnswerWithRtt:Z

.field private blacklist mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private blacklist mCallSessionMergePending:Z

.field private blacklist mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHold:Z

.field private blacklist mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

.field private blacklist mInCall:Z

.field private blacklist mIsConferenceHost:Z

.field private blacklist mIsMerged:Z

.field private blacklist mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mListener:Lcom/android/ims/ImsCall$Listener;

.field private blacklist mLockObj:Ljava/lang/Object;

.field private blacklist mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

.field private blacklist mMergeHost:Lcom/android/ims/ImsCall;

.field private blacklist mMergePeer:Lcom/android/ims/ImsCall;

.field private blacklist mMergeRequestedByConference:Z

.field private blacklist mMute:Z

.field private blacklist mOverrideReason:I

.field private blacklist mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private blacklist mResult:Landroid/os/Message;

.field private blacklist mSession:Landroid/telephony/ims/ImsCallSession;

.field private blacklist mSessionEndDuringMerge:Z

.field private blacklist mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mTerminationRequestPending:Z

.field private blacklist mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

.field private blacklist mUpdateRequest:I

.field private blacklist mWasVideoCall:Z

.field public final blacklist uniqueId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsConferenceHost(Lcom/android/ims/ImsCall;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLockObj(Lcom/android/ims/ImsCall;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I
    .locals 0

    iget p0, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallSession;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTerminationRequestPending(Lcom/android/ims/ImsCall;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I
    .locals 0

    iget p0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsConferenceHost(Lcom/android/ims/ImsCall;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastReasonInfo(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProposedCallProfile(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateHoldMediaProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateNewCall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateResumeMediaProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misMergeHost(Lcom/android/ims/ImsCall;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misMergePeer(Lcom/android/ims/ImsCall;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmergeInternal(Lcom/android/ims/ImsCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->mergeInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessMergeComplete(Lcom/android/ims/ImsCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVDBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 82
    const/4 v0, 0x3

    const-string v1, "ImsCall"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    .line 83
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    .line 702
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 612
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 614
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mMute:Z

    .line 616
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 618
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 621
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 623
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 627
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    .line 629
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 632
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 636
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 637
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 640
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 644
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 650
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 654
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 658
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 664
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 673
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 686
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 688
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mResult:Landroid/os/Message;

    .line 697
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    .line 721
    iput v0, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    .line 727
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    .line 736
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    .line 737
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 738
    sget-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsCall;->uniqueId:I

    .line 739
    return-void
.end method

.method private blacklist appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 4290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4291
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4292
    const-string v1, " ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4293
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist clearMergeInfo()V
    .locals 3

    .line 4010
    const-string v0, "clearMergeInfo :: clearing all merge info"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 4014
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-object v1, v0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 4016
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 4017
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-boolean v2, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 4019
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_1

    .line 4020
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-object v1, v0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 4021
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 4022
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v2, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 4024
    :cond_1
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 4025
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 4026
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 4027
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 4028
    return-void
.end method

.method private blacklist clearSessionTerminationFlags()V
    .locals 1

    .line 2694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2696
    return-void
.end method

.method private blacklist createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1

    .line 2130
    new-instance v0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    .line 2131
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method private blacklist createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 2168
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 2170
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 2171
    return-object v0

    .line 2174
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 2175
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 2176
    const/4 v1, 0x2

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2178
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 2179
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 2182
    :cond_1
    return-object v0
.end method

.method private blacklist createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2151
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2154
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    goto :goto_0

    .line 2155
    :catch_0
    move-exception v1

    .line 2156
    .local v1, "e":Lcom/android/ims/ImsException;
    nop

    .line 2157
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 2158
    const/4 v0, 0x0

    .line 2164
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-object v0
.end method

.method private blacklist createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 2186
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 2188
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 2189
    return-object v0

    .line 2192
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 2193
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 2194
    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2196
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 2197
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 2200
    :cond_1
    return-object v0
.end method

.method private blacklist enforceConversationMode()V
    .locals 1

    .line 2204
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_0

    .line 2205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2206
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2208
    :cond_0
    return-void
.end method

.method private blacklist isMergeHost()Z
    .locals 1

    .line 4111
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isMergePeer()Z
    .locals 1

    .line 4120
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isMerging()Z
    .locals 1

    .line 4102
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z
    .locals 1
    .param p0, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 796
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z
    .locals 1
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2388
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-ne p1, v0, :cond_0

    .line 2389
    const/4 v0, 0x1

    return v0

    .line 2391
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isUpdatePending(Lcom/android/ims/ImsCall;)Z
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1590
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_0

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge :: update is in progress; request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1592
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1591
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1593
    const/4 v0, 0x1

    return v0

    .line 1595
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 4435
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 4451
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 4460
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4461
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 4427
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4428
    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 4443
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    return-void
.end method

.method private blacklist markCallAsMerged(Z)V
    .locals 4
    .param p1, "playDisconnectTone"    # Z

    .line 2407
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2410
    const-string v0, "markCallAsMerged"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2412
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2417
    const/16 v0, 0xc8

    .line 2418
    .local v0, "extraCode":I
    const/4 v1, 0x0

    .line 2419
    .local v1, "reasonCode":I
    if-eqz p1, :cond_0

    .line 2420
    const/16 v1, 0x1fe

    .line 2421
    const/16 v0, 0x450

    .line 2422
    const-string v2, "Call ended by network"

    .local v2, "reasonInfo":Ljava/lang/String;
    goto :goto_0

    .line 2424
    .end local v2    # "reasonInfo":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x6c

    .line 2425
    const-string v2, "Call ended during conference merge process."

    .line 2427
    .restart local v2    # "reasonInfo":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v1, v0, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2431
    .end local v0    # "extraCode":I
    .end local v1    # "reasonCode":I
    .end local v2    # "reasonInfo":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private blacklist merge()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1605
    const-string v0, "merge :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1610
    :try_start_0
    invoke-direct {p0, p0}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1611
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1612
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1613
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1614
    :cond_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1620
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 1628
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_9

    .line 1636
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11102e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1656
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1659
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->merge()V

    goto :goto_2

    .line 1665
    :cond_5
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1666
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1667
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    goto :goto_2

    .line 1639
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    const/4 v2, 0x4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1647
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1648
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v2, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    goto :goto_1

    .line 1649
    :cond_7
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1650
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1651
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput v2, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1654
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 1669
    :goto_2
    monitor-exit v0

    .line 1670
    return-void

    .line 1629
    :cond_9
    const-string v1, "merge :: no call session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1630
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1621
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_a
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1622
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1623
    :cond_b
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1624
    :cond_c
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "Peer or host call update is in progress"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1669
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist mergeInternal()V
    .locals 1

    .line 2212
    const-string v0, "mergeInternal :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2215
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 2216
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2217
    return-void
.end method

.method private blacklist notifyConferenceSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2220
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2221
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->clear(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2223
    if-eqz v0, :cond_0

    .line 2225
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    goto :goto_0

    .line 2226
    :catchall_0
    move-exception v1

    .line 2227
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "notifyConferenceSessionTerminated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2230
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist notifyConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 2233
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2237
    :cond_0
    invoke-static {p1}, Lcom/android/ims/ImsCall;->parseConferenceState(Landroid/telephony/ims/ImsConferenceState;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    .line 2239
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    if-eqz v0, :cond_1

    .line 2241
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    goto :goto_0

    .line 2242
    :catchall_0
    move-exception v0

    .line 2243
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "notifyConferenceStateUpdated :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2246
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2234
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist notifySessionTerminatedDuringMerge()V
    .locals 5

    .line 2666
    const/4 v0, 0x0

    .line 2667
    .local v0, "notifyFailure":Z
    const/4 v1, 0x0

    .line 2669
    .local v1, "notifyFailureReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-enter p0

    .line 2670
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2671
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-boolean v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v3, :cond_0

    .line 2676
    const-string v3, "notifySessionTerminatedDuringMerge ::reporting terminate during merge"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2678
    const/4 v0, 0x1

    .line 2679
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    move-object v1, v3

    .line 2681
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 2682
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2684
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2686
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2689
    goto :goto_0

    .line 2687
    :catchall_0
    move-exception v3

    .line 2688
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "notifySessionTerminatedDuringMerge :: "

    invoke-direct {p0, v4, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2691
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2682
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static blacklist parseConferenceState(Landroid/telephony/ims/ImsConferenceState;)Ljava/util/List;
    .locals 18
    .param p0, "state"    # Landroid/telephony/ims/ImsConferenceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/ImsConferenceState;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 2249
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2251
    .local v1, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-nez v1, :cond_0

    .line 2252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2255
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2256
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2257
    .local v3, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/internal/ConferenceParticipant;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2260
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2261
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 2262
    .local v6, "confInfo":Landroid/os/Bundle;
    const-string v7, "status"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2263
    .local v7, "status":Ljava/lang/String;
    const-string v8, "user"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2264
    .local v8, "user":Ljava/lang/String;
    const-string v9, "display-text"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2265
    .local v13, "displayName":Ljava/lang/String;
    const-string v9, "endpoint"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2268
    .local v9, "endpoint":Ljava/lang/String;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2269
    .local v11, "partiExtra":Landroid/os/Bundle;
    const-string v10, "key"

    invoke-virtual {v11, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v10, "cna"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const-string v10, "cnap"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2272
    const-string v10, "oir"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2273
    nop

    .line 2274
    const-string v10, "audioQuality"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2273
    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2275
    nop

    .line 2276
    const-string v10, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 2275
    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2277
    nop

    .line 2278
    const-string v10, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2277
    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    nop

    .line 2280
    const-string v10, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2279
    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2281
    nop

    .line 2282
    const-string v10, "sipError"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2281
    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2285
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyConferenceStateUpdated :: key="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "ImsCall"

    invoke-static {v12, v5}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ", status="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ", user="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2287
    invoke-static {v12, v8}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ", displayName= "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2288
    invoke-static {v12, v13}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ", endpoint="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2289
    invoke-static {v12, v9}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2285
    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const-string v10, "uriType"

    const-string v12, "tel"

    invoke-virtual {v6, v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2295
    .local v10, "uriType":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-static {v10, v8, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2297
    .local v12, "handle":Landroid/net/Uri;
    if-nez v9, :cond_1

    .line 2298
    const-string v9, ""

    .line 2300
    :cond_1
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 2301
    .local v14, "endpointUri":Landroid/net/Uri;
    invoke-static {v7}, Landroid/telephony/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    move-result v15

    .line 2306
    .local v15, "connectionState":I
    move-object/from16 v16, v10

    .end local v10    # "uriType":Ljava/lang/String;
    .local v16, "uriType":Ljava/lang/String;
    new-instance v10, Lcom/android/ims/internal/ConferenceParticipant;

    move-object/from16 v17, v16

    .end local v16    # "uriType":Ljava/lang/String;
    .local v17, "uriType":Ljava/lang/String;
    const/16 v16, -0x1

    invoke-direct/range {v10 .. v16}, Lcom/android/ims/internal/ConferenceParticipant;-><init>(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 2308
    .local v10, "conferenceParticipant":Lcom/android/ims/internal/ConferenceParticipant;
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2312
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "confInfo":Landroid/os/Bundle;
    .end local v7    # "status":Ljava/lang/String;
    .end local v8    # "user":Ljava/lang/String;
    .end local v9    # "endpoint":Ljava/lang/String;
    .end local v10    # "conferenceParticipant":Lcom/android/ims/internal/ConferenceParticipant;
    .end local v11    # "partiExtra":Landroid/os/Bundle;
    .end local v12    # "handle":Landroid/net/Uri;
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v14    # "endpointUri":Landroid/net/Uri;
    .end local v15    # "connectionState":I
    .end local v17    # "uriType":Ljava/lang/String;
    goto/16 :goto_0

    .line 2313
    :cond_2
    return-object v3
.end method

.method private blacklist processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallTerminated :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userInitiated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2329
    const/4 v0, 0x0

    .line 2330
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-enter p0

    .line 2335
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    if-nez v1, :cond_2

    .line 2343
    const-string v1, "processCallTerminated :: burying termination during ongoing merge."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2345
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2346
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2348
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 2349
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCallTerminated :: call termianted during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2350
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2349
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2351
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2354
    :cond_1
    monitor-exit p0

    return-void

    .line 2358
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2359
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2360
    monitor-exit p0

    return-void

    .line 2362
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object v0, v1

    .line 2363
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->clear(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2365
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2367
    if-eqz v0, :cond_4

    .line 2369
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2372
    goto :goto_0

    .line 2370
    :catchall_0
    move-exception v1

    .line 2371
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processCallTerminated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2374
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    return-void

    .line 2365
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist processMergeComplete()V
    .locals 7

    .line 2472
    const-string v0, "processMergeComplete :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2476
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2477
    const-string v0, "processMergeComplete :: We are not the merge host!"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2478
    return-void

    .line 2482
    :cond_0
    const/4 v0, 0x0

    .line 2487
    .local v0, "swapRequired":Z
    monitor-enter p0

    .line 2488
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2489
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2492
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    if-nez v1, :cond_1

    .line 2495
    iput-boolean v3, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2496
    const/4 v0, 0x1

    .line 2498
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2499
    move-object v1, p0

    .line 2500
    .local v1, "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .local v3, "finalPeerCall":Lcom/android/ims/ImsCall;
    goto/16 :goto_1

    .line 2507
    .end local v1    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_3

    .line 2508
    const-string v1, "processMergeComplete :: No transient session!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2509
    monitor-exit p0

    return-void

    .line 2511
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_4

    .line 2512
    const-string v1, "processMergeComplete :: No merge peer!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2513
    monitor-exit p0

    return-void

    .line 2518
    :cond_4
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2519
    .local v1, "transientConferenceSession":Landroid/telephony/ims/ImsCallSession;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2523
    invoke-virtual {v1, v4, v4}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 2533
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2542
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v3, v4, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2543
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2544
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2545
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    iput-object v5, v4, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    .line 2554
    :cond_5
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2555
    .local v4, "finalHostCall":Lcom/android/ims/ImsCall;
    move-object v5, p0

    .line 2556
    .local v5, "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v0, 0x1

    .line 2557
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2558
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v6, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2560
    const-string v3, "processMergeComplete :: transient will transfer to merge peer"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    .line 2562
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_6
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2563
    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2568
    move-object v4, p0

    .line 2569
    .restart local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2570
    .restart local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v0, 0x0

    .line 2571
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2572
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v6, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2574
    const-string v3, "processMergeComplete :: transient will stay with the merge host"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    .line 2581
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_7
    move-object v4, p0

    .line 2583
    .restart local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    iput-boolean v3, v4, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2585
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2586
    .restart local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v6, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2587
    const/4 v0, 0x0

    .line 2588
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2589
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v2}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2591
    const-string v3, "processMergeComplete :: transient will stay with us (I\'m the host)."

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    .line 2596
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .restart local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMergeComplete :: call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is the final host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2601
    invoke-direct {v4, v1}, Lcom/android/ims/ImsCall;->setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V

    move-object v1, v4

    .line 2604
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .local v1, "finalHostCall":Lcom/android/ims/ImsCall;
    :goto_1
    iget-object v4, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2606
    .local v4, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    .line 2607
    invoke-static {v1}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    .line 2610
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 2614
    invoke-direct {v3}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 2617
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 2623
    iput-boolean v2, v1, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 2624
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2625
    if-eqz v4, :cond_8

    .line 2630
    :try_start_1
    invoke-virtual {v4, v1, v3, v0}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2633
    goto :goto_2

    .line 2631
    :catchall_0
    move-exception v2

    .line 2632
    .local v2, "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-direct {p0, v5, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2634
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2636
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v4, v1, v2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2640
    goto :goto_3

    .line 2638
    :catchall_1
    move-exception v2

    .line 2639
    .restart local v2    # "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-direct {p0, v5, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2643
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_8
    :goto_3
    return-void

    .line 2624
    .end local v1    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .end local v4    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private blacklist processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMergeFailed :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2711
    monitor-enter p0

    .line 2714
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2715
    const-string v0, "processMergeFailed :: We are not the merge host!"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2716
    monitor-exit p0

    return-void

    .line 2720
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_1

    .line 2721
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 2722
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2725
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2729
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2730
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2731
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 2734
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v3, :cond_2

    .line 2735
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v3, v1}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2736
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2737
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    goto :goto_0

    .line 2739
    :cond_2
    const-string v1, "processMergeFailed :: No merge peer!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2743
    :goto_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2744
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    const/16 v2, 0xc2b

    if-ne v1, v2, :cond_3

    .line 2745
    const-string v1, "processMergeFailed :: clearMergeInfo() will be called after back to original call status."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 2749
    :cond_3
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 2751
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2752
    if-eqz v0, :cond_4

    .line 2754
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2757
    goto :goto_2

    .line 2755
    :catchall_0
    move-exception v1

    .line 2756
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processMergeFailed :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2760
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    return-void

    .line 2751
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private blacklist setCallSessionMergePending(Z)V
    .locals 0
    .param p1, "callSessionMergePending"    # Z

    .line 4139
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 4140
    return-void
.end method

.method private blacklist setMergePeer(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergePeer"    # Lcom/android/ims/ImsCall;

    .line 4075
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 4076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 4078
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 4079
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 4080
    return-void
.end method

.method private blacklist setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "transientSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 2395
    monitor-enter p0

    .line 2397
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_0

    .line 2399
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 2401
    :cond_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 2402
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 2403
    monitor-exit p0

    .line 2404
    return-void

    .line 2403
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist shouldProcessConferenceResult()Z
    .locals 5

    .line 4157
    const/4 v0, 0x0

    .line 4159
    .local v0, "areMergeTriggersDone":Z
    monitor-enter p0

    .line 4163
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4165
    const-string v1, "shouldProcessConferenceResult :: no merge in progress"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 4167
    monitor-exit p0

    return v2

    .line 4173
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 4175
    const-string v1, "shouldProcessConferenceResult :: We are a merge host"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 4176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge peer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 4178
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 4179
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move v0, v2

    .line 4180
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4182
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_2

    .line 4184
    :cond_2
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4186
    const-string v1, "shouldProcessConferenceResult :: We are a merge peer"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 4187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge host="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 4189
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 4190
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move v0, v2

    .line 4191
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4193
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_2

    .line 4205
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    .end local v0    # "areMergeTriggersDone":Z
    .local v1, "areMergeTriggersDone":Z
    goto :goto_2

    .line 4209
    .end local v1    # "areMergeTriggersDone":Z
    .restart local v0    # "areMergeTriggersDone":Z
    :cond_5
    const-string v1, "shouldProcessConferenceResult : merge in progress but call is neither host nor peer."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 4213
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessConferenceResult :: returning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4214
    if-eqz v0, :cond_7

    const-string v2, "true"

    goto :goto_3

    :cond_7
    const-string v2, "false"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4213
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 4216
    monitor-exit p0

    .line 4217
    return v0

    .line 4216
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist terminateMergeSessions(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 4041
    const-string v0, "terminateMergeSessions :: terminating all sessions which are merging into conference"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 4045
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4046
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4047
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    .line 4049
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4050
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 4051
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    goto :goto_0

    .line 4053
    :cond_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4054
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4055
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    .line 4057
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4058
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 4059
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4064
    :cond_3
    :goto_0
    goto :goto_1

    .line 4062
    :catch_0
    move-exception v0

    .line 4063
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "terminateMergeSessions : NPE occurred in an unknown session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 4065
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method

.method private blacklist throwImsException(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 4277
    instance-of v0, p1, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_0

    .line 4278
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsException;

    throw v0

    .line 4280
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method private blacklist trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4304
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4305
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    .line 4307
    return-void
.end method

.method private blacklist updateCallProfile()V
    .locals 2

    .line 2653
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2654
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 2655
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2657
    :cond_0
    monitor-exit v0

    .line 2658
    return-void

    .line 2657
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist updateCallProfile(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "call"    # Lcom/android/ims/ImsCall;

    .line 2647
    if-eqz p0, :cond_0

    .line 2648
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->updateCallProfile()V

    .line 2650
    :cond_0
    return-void
.end method

.method private blacklist updateRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "updateRequest"    # I

    .line 3974
    packed-switch p1, :pswitch_data_0

    .line 4000
    :pswitch_0
    const-string v0, "UNKNOWN"

    return-object v0

    .line 3997
    :pswitch_1
    const-string v0, "UPDATE_RTT"

    return-object v0

    .line 3995
    :pswitch_2
    const-string v0, "UPDATE_CANCEL_TRANSFER_CALL"

    return-object v0

    .line 3993
    :pswitch_3
    const-string v0, "UPDATE_TRANSFER_CALL"

    return-object v0

    .line 3991
    :pswitch_4
    const-string v0, "RESUME_MERGE"

    return-object v0

    .line 3988
    :pswitch_5
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 3986
    :pswitch_6
    const-string v0, "EXTEND_TO_CONFERENCE"

    return-object v0

    .line 3984
    :pswitch_7
    const-string v0, "MERGE"

    return-object v0

    .line 3982
    :pswitch_8
    const-string v0, "RESUME"

    return-object v0

    .line 3980
    :pswitch_9
    const-string v0, "HOLD_MERGE"

    return-object v0

    .line 3978
    :pswitch_a
    const-string v0, "HOLD"

    return-object v0

    .line 3976
    :pswitch_b
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 1
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1287
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1288
    return-void
.end method

.method public blacklist accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept :: callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1301
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    if-eqz v0, :cond_0

    .line 1302
    const/4 v0, 0x1

    iput v0, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1303
    const-string v0, "accept :: changing media profile RTT mode to full"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1307
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    .line 1313
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/ImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    nop

    .line 1319
    :try_start_2
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v2, :cond_2

    .line 1320
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_1

    .line 1321
    const-string v2, "accept :: call profile will be updated"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1324
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1325
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1326
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1330
    :cond_2
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1331
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1333
    :cond_3
    monitor-exit v0

    .line 1334
    return-void

    .line 1314
    :catchall_0
    move-exception v2

    .line 1315
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "accept :: "

    invoke-direct {p0, v3, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1316
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "accept()"

    invoke-direct {v3, v4, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v3

    .line 1308
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_4
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to answer"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v1

    .line 1333
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist attachSession(Landroid/telephony/ims/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachSession :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1206
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1209
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    goto :goto_0

    .line 1210
    :catchall_0
    move-exception v1

    .line 1211
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "attachSession :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1212
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    .line 1214
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    .line 1215
    return-void

    .line 1214
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionNotifyAnbr(III)V
    .locals 2
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 953
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 954
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession;->callSessionNotifyAnbr(III)V

    goto :goto_0

    .line 957
    :cond_0
    const-string v1, "callSessionNotifyAnbr : session - null"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 959
    :goto_0
    monitor-exit v0

    .line 960
    return-void

    .line 959
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist cancelTransferCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2062
    const-string v0, "transferCall"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2064
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2065
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 2070
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->cancelTransferCall()V

    .line 2071
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2072
    monitor-exit v0

    .line 2073
    return-void

    .line 2066
    :cond_0
    const-string v1, "cancelTransferCall :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2067
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 2072
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist checkIfRemoteUserIsSame(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .line 769
    if-nez p1, :cond_0

    .line 770
    const/4 v0, 0x0

    return v0

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "remote_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist clear(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "lastReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 2121
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2122
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2123
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2124
    return-void
.end method

.method public blacklist close()V
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->close()V

    .line 749
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    goto :goto_0

    .line 751
    :cond_0
    const-string v1, "close :: Cannot close Null call session!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 754
    :goto_0
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 755
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 756
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 757
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 758
    monitor-exit v0

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 3953
    monitor-enter p0

    .line 3954
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3955
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3956
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3958
    if-eqz v0, :cond_0

    .line 3960
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3963
    goto :goto_0

    .line 3961
    :catchall_0
    move-exception v1

    .line 3962
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "callSessionConferenceStateUpdated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3965
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3956
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist consultativeTransfer(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "transferToImsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consultativeTransfer :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", other call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/16 v2, 0x94

    if-eqz v1, :cond_1

    .line 1446
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1447
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1454
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->transfer(Landroid/telephony/ims/ImsCallSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    nop

    .line 1460
    :try_start_2
    monitor-exit v0

    .line 1461
    return-void

    .line 1456
    :catchall_0
    move-exception v1

    .line 1457
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "consultativeTransfer :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1458
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "consultativeTransfer()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    throw v2

    .line 1448
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    :cond_0
    const-string v1, "consultativeTransfer :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1449
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No transferToImsCall session"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    throw v1

    .line 1442
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    :cond_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call to transfer"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    throw v1

    .line 1460
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-r deflect(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deflect :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "deflect()"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Not Support"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    throw v1

    .line 1363
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist equalsTo(Lcom/android/ims/internal/ICall;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .line 784
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 785
    return v0

    .line 788
    :cond_0
    instance-of v1, p1, Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_1

    .line 789
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 792
    :cond_1
    return v0
.end method

.method public blacklist extendToConference([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1766
    const-string v0, "extendToConference ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_1

    .line 1769
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1770
    const-string v0, "extendToConference :: call is on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1772
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Not in a call to extend a call to conference"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1776
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    :try_start_0
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v2, :cond_3

    .line 1786
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1793
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 1795
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    .line 1796
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1797
    monitor-exit v0

    .line 1798
    return-void

    .line 1787
    :cond_2
    const-string v1, "extendToConference :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1788
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1779
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendToConference :: update is in progress; request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1780
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1779
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1782
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v2

    .line 1797
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 973
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 974
    :catchall_0
    move-exception v1

    .line 975
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getCallExtra :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 976
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getCallExtra()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "name":Ljava/lang/String;
    throw v2

    .line 968
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "name":Ljava/lang/String;
    throw v1

    .line 978
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    .line 807
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getCallSession()Landroid/telephony/ims/ImsCallSession;
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    .line 926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getCmcType()I
    .locals 2

    .line 4331
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 4332
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4335
    :cond_0
    const/4 v1, 0x0

    .line 4344
    .local v1, "cmcType":I
    monitor-exit v0

    return v1

    .line 4333
    .end local v1    # "cmcType":I
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 4345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getConferenceParticipants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConferenceParticipants :: mConferenceParticipants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 891
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-nez v1, :cond_0

    .line 892
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v0

    return-object v1

    .line 897
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 898
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method public blacklist getLastReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    monitor-exit v0

    return-object v1

    .line 989
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getListener()Lcom/android/ims/ImsCall$Listener;
    .locals 1

    .line 2147
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method public blacklist getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 837
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 838
    :catchall_0
    move-exception v1

    .line 839
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getLocalCallProfile :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 840
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getLocalCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v2

    .line 832
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 842
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist getMediaSession()Lcom/android/ims/internal/ImsStreamMediaSession;
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    monitor-exit v0

    return-object v1

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getNetworkType()I
    .locals 5

    .line 4381
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 4382
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4383
    monitor-exit v0

    return v2

    .line 4385
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v1

    .line 4387
    .local v1, "networkType":I
    if-nez v1, :cond_2

    .line 4389
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallRadioTech"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4390
    .local v2, "oldRatType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4391
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "callRadioTech"

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4394
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4395
    .local v3, "oldRatTypeConverted":I
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 4398
    .end local v3    # "oldRatTypeConverted":I
    goto :goto_0

    .line 4396
    :catch_0
    move-exception v3

    .line 4397
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 4400
    .end local v2    # "oldRatType":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v0

    return v1

    .line 4401
    .end local v1    # "networkType":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getProposedCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 874
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    .line 878
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 858
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 859
    :catchall_0
    move-exception v1

    .line 860
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getRemoteCallProfile :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 861
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getRemoteCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v2

    .line 853
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 863
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist getSession()Landroid/telephony/ims/ImsCallSession;
    .locals 2

    .line 2460
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2461
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    .line 2462
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getState()I
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 910
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 914
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist hasPendingUpdate()Z
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1000
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist hold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1522
    const-string v0, "hold :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1525
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1526
    const-string v0, "hold :: call is already on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1528
    :cond_0
    return-void

    .line 1531
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1532
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_3

    .line 1539
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1546
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1547
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1548
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1549
    monitor-exit v0

    .line 1550
    return-void

    .line 1540
    :cond_2
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1533
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hold :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1534
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1533
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1535
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1549
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist inviteParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1805
    const-string v0, "inviteParticipants ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1807
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1808
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1815
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 1817
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1818
    monitor-exit v0

    .line 1819
    return-void

    .line 1809
    :cond_0
    const-string v1, "inviteParticipants :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1810
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1818
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCallSessionMergePending()Z
    .locals 1

    .line 4129
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    return v0
.end method

.method public blacklist isConferenceHost()Z
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCrossSimCall()Z
    .locals 4

    .line 4412
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 4413
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4414
    monitor-exit v0

    return v2

    .line 4416
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4419
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isInCall()Z
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    monitor-exit v0

    return v1

    .line 1022
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isMergeRequestedByConf()Z
    .locals 2

    .line 2439
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2440
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    monitor-exit v0

    return v1

    .line 2441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isMerged()Z
    .locals 1

    .line 1091
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    return v0
.end method

.method public greylist-max-r isMultiparty()Z
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1056
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1059
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->isMultiparty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1060
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isMuted()Z
    .locals 2

    .line 1031
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    monitor-exit v0

    return v1

    .line 1033
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isOnHold()Z
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    monitor-exit v0

    return v1

    .line 1044
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isPendingHold()Z
    .locals 3

    .line 1009
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1011
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isVideoCall()Z
    .locals 2

    .line 4321
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 4322
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 4323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isVideoCrbt()Z
    .locals 4

    .line 4352
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 4353
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "com.samsung.telephony.extra.VIDEO_CRBT"

    invoke-virtual {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    .line 4354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isWifiCall()Z
    .locals 4

    .line 4368
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 4369
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4370
    monitor-exit v0

    return v2

    .line 4372
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 4373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist merge(Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge(1) :: bgImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1682
    if-eqz p1, :cond_6

    .line 1687
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1688
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_5

    .line 1692
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1694
    invoke-direct {p0, p0}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1699
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1701
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1702
    invoke-direct {p1, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1704
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1710
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setMergePeer(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1713
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setMergeHost(Lcom/android/ims/ImsCall;)V

    .line 1715
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1717
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1718
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    goto :goto_1

    .line 1720
    :cond_3
    const-string v0, "merge : mMergeRequestedByConference not set"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1722
    :goto_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->merge()V

    .line 1723
    return-void

    .line 1715
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1695
    :cond_4
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "merge(1) :: Peer or host call update is in progress"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1689
    :cond_5
    :try_start_3
    const-string v1, "merge(1) :: no call session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1690
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "bgCall":Lcom/android/ims/ImsCall;
    throw v1

    .line 1692
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "bgCall":Lcom/android/ims/ImsCall;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1683
    :cond_6
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "No background call"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public blacklist needResumeHostAndMerge()Z
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1100
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "ResumeHostAndMerge"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist notifyReadyToHandleImsCallbacks()V
    .locals 2

    .line 1971
    const-string v0, "notifyReadyToHandleImsCallbacks"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1973
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1974
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1975
    const-string v1, "notifyReadyToHandleImsCallbacks::no session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1976
    monitor-exit v0

    return-void

    .line 1978
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->notifyReadyToHandleImsCallbacks()V

    .line 1979
    monitor-exit v0

    .line 1980
    return-void

    .line 1979
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r reject(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->reject(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    :cond_0
    nop

    .line 1387
    :try_start_1
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 1388
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_1

    .line 1389
    const-string v1, "reject :: call profile is not updated; destroy it..."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1392
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1396
    :cond_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1397
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1399
    :cond_3
    monitor-exit v0

    .line 1400
    return-void

    .line 1382
    :catchall_0
    move-exception v1

    .line 1383
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Reject Failed"

    const/16 v4, 0x640

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "reason":I
    throw v2

    .line 1399
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "reason":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public blacklist removeParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeParticipants :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1827
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1828
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1834
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->removeParticipants([Ljava/lang/String;)V

    .line 1836
    monitor-exit v0

    .line 1837
    return-void

    .line 1829
    :cond_0
    const-string v1, "removeParticipants :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1830
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1836
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist resetIsMergeRequestedByConf(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 2449
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2450
    :try_start_0
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    .line 2451
    monitor-exit v0

    .line 2452
    return-void

    .line 2451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1559
    const-string v0, "resume :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1563
    const-string v0, "resume :: call is not being held"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1565
    :cond_0
    return-void

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_3

    .line 1576
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1584
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1585
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1586
    monitor-exit v0

    .line 1587
    return-void

    .line 1577
    :cond_2
    const-string v1, "resume :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1578
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1570
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1571
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1570
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1572
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1586
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1849
    const-string v0, "sendDtmf :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1853
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1854
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->sendDtmf(CLandroid/os/Message;)V

    .line 1856
    :cond_0
    monitor-exit v0

    .line 1857
    return-void

    .line 1856
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2079
    const-string v0, "sendCallEvent"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2082
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 2087
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2088
    monitor-exit v0

    .line 2089
    return-void

    .line 2083
    :cond_0
    const-string v1, "sendImsCallEvent :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2084
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "eventType":Ljava/lang/String;
    .end local p2    # "extras":Landroid/os/Bundle;
    throw v1

    .line 2088
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "eventType":Ljava/lang/String;
    .restart local p2    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 2107
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRtpHeaderExtensions; extensionsSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2108
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2109
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 2110
    const-string v1, "sendRtpHeaderExtensions::no session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2112
    monitor-exit v0

    return-void

    .line 2115
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRtpHeaderExtensions(Ljava/util/Set;)V

    .line 2116
    monitor-exit v0

    .line 2117
    return-void

    .line 2116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendRttMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1910
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1911
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1912
    const-string v1, "sendRttMessage::no session, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1913
    monitor-exit v0

    return-void

    .line 1915
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1919
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1920
    const-string v1, "sendRttMessage::Not an rtt call, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1921
    monitor-exit v0

    return-void

    .line 1923
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttMessage(Ljava/lang/String;)V

    .line 1924
    monitor-exit v0

    .line 1925
    return-void

    .line 1916
    :cond_3
    :goto_0
    const-string v1, "sendRttMessage:: no valid call profile, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1917
    monitor-exit v0

    return-void

    .line 1924
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendRttModifyRequest()V
    .locals 5

    .line 1932
    const-string v0, "sendRttModifyRequest"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1935
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1936
    const-string v1, "sendRttModifyRequest::no session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1937
    monitor-exit v0

    return-void

    .line 1940
    :cond_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v1, :cond_1

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttModifyRequest :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1942
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1941
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1943
    monitor-exit v0

    return-void

    .line 1946
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1947
    const-string v1, "sendRttModifyRequest::Already RTT call, ignoring."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1948
    monitor-exit v0

    return-void

    .line 1951
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1953
    .local v1, "p":Landroid/os/Parcel;
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1954
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1955
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(Landroid/os/Parcel;)V

    .line 1956
    .local v2, "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v3, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1958
    const/16 v3, 0xc

    iput v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1959
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1961
    .end local v2    # "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1962
    nop

    .line 1963
    .end local v1    # "p":Landroid/os/Parcel;
    monitor-exit v0

    .line 1964
    return-void

    .line 1961
    .restart local v1    # "p":Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1962
    nop

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v2

    .line 1963
    .end local v1    # "p":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist sendRttModifyRequest(Z)V
    .locals 5
    .param p1, "rttOn"    # Z

    .line 1988
    const-string v0, "sendRttModifyRequest"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1991
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1992
    const-string v1, "sendRttModifyRequest::no session, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1993
    monitor-exit v0

    return-void

    .line 1995
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_1

    goto :goto_1

    .line 1999
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2000
    const-string v1, "sendRttModifyRequest::Already RTT call, ignoring request to turn on."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2001
    monitor-exit v0

    return-void

    .line 2002
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2003
    const-string v1, "sendRttModifyRequest::Not RTT call, ignoring request to turn off."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2004
    monitor-exit v0

    return-void

    .line 2007
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2008
    .local v1, "p":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2009
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2010
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(Landroid/os/Parcel;)V

    .line 2011
    .local v2, "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v4, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz p1, :cond_4

    .line 2012
    const/4 v3, 0x1

    goto :goto_0

    .line 2013
    :cond_4
    nop

    .line 2011
    :goto_0
    invoke-virtual {v4, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 2015
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2016
    .end local v1    # "p":Landroid/os/Parcel;
    .end local v2    # "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    monitor-exit v0

    .line 2017
    return-void

    .line 1996
    :cond_5
    :goto_1
    const-string v1, "sendRttModifyRequest:: no valid call profile, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1997
    monitor-exit v0

    return-void

    .line 2016
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendRttModifyResponse(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 2026
    const-string v0, "sendRttModifyResponse"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2029
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 2030
    const-string v1, "sendRttModifyResponse::no session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2031
    monitor-exit v0

    return-void

    .line 2033
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_1

    goto :goto_0

    .line 2048
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyResponse(Z)V

    .line 2049
    monitor-exit v0

    .line 2050
    return-void

    .line 2034
    :cond_2
    :goto_0
    const-string v1, "sendRttModifyResponse:: no valid call profile, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2035
    monitor-exit v0

    return-void

    .line 2049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUssd :: ussdMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1899
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1905
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendUssd(Ljava/lang/String;)V

    .line 1906
    monitor-exit v0

    .line 1907
    return-void

    .line 1900
    :cond_0
    const-string v1, "sendUssd :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1901
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "ussdMessage":Ljava/lang/String;
    throw v1

    .line 1906
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "ussdMessage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setAnswerWithRtt()V
    .locals 1

    .line 2053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    .line 2054
    return-void
.end method

.method public blacklist setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 818
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 820
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V

    .line 821
    monitor-exit v0

    .line 822
    return-void

    .line 821
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setIsMerged(Z)V
    .locals 0
    .param p1, "isMerged"    # Z

    .line 1084
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 1085
    return-void
.end method

.method public blacklist setListener(Lcom/android/ims/ImsCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;

    .line 1112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;Z)V

    .line 1113
    return-void
.end method

.method public blacklist setListener(Lcom/android/ims/ImsCall$Listener;Z)V
    .locals 6
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .param p2, "callbackImmediately"    # Z

    .line 1130
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1131
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1133
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    .line 1137
    :cond_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1138
    .local v1, "inCall":Z
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1139
    .local v2, "onHold":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getState()I

    move-result v3

    .line 1140
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1141
    .local v4, "lastReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1144
    if-eqz v4, :cond_1

    .line 1145
    :try_start_1
    invoke-virtual {p1, p0, v4}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 1170
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1146
    :cond_1
    if-eqz v1, :cond_3

    .line 1147
    if-eqz v2, :cond_2

    .line 1148
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    goto :goto_1

    .line 1150
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    goto :goto_1

    .line 1153
    :cond_3
    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 1159
    :sswitch_0
    if-nez v4, :cond_4

    .line 1160
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    move-object v4, v0

    .line 1163
    :cond_4
    invoke-virtual {p1, p0, v4}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1164
    goto :goto_1

    .line 1155
    :sswitch_1
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    goto :goto_1

    .line 1171
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    const-string v5, "setListener() :: "

    invoke-direct {p0, v5, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1172
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    nop

    .line 1173
    :goto_2
    return-void

    .line 1134
    .end local v1    # "inCall":Z
    .end local v2    # "onHold":Z
    .end local v3    # "state":I
    .end local v4    # "lastReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_5
    :goto_3
    :try_start_2
    monitor-exit v0

    return-void

    .line 1141
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setMergeHost(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergeHost"    # Lcom/android/ims/ImsCall;

    .line 4089
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 4090
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 4092
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 4093
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 4094
    return-void
.end method

.method public blacklist setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    if-eq v1, p1, :cond_1

    .line 1183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute :: turning mute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1184
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1187
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->setMute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    goto :goto_1

    .line 1188
    :catchall_0
    move-exception v1

    .line 1189
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "setMute :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1190
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    .line 1193
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1194
    return-void

    .line 1193
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(1) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1230
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1233
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 1234
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Landroid/telephony/ims/ImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1236
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1237
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->updateCallProfile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    :cond_0
    nop

    .line 1244
    :try_start_2
    monitor-exit v0

    .line 1245
    return-void

    .line 1240
    :catchall_0
    move-exception v1

    .line 1241
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "start(1) :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "start(1)"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .end local p2    # "callee":Ljava/lang/String;
    throw v2

    .line 1244
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .restart local p2    # "callee":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(n) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 1261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1264
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 1265
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Landroid/telephony/ims/ImsCallSession;->start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1267
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1268
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->updateCallProfile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    :cond_0
    nop

    .line 1275
    :try_start_2
    monitor-exit v0

    .line 1276
    return-void

    .line 1271
    :catchall_0
    move-exception v1

    .line 1272
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "start(n) :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1273
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "start(n)"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .end local p2    # "participants":[Ljava/lang/String;
    throw v2

    .line 1275
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .restart local p2    # "participants":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1868
    const-string v0, "startDtmf :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1871
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->startDtmf(C)V

    .line 1874
    :cond_0
    monitor-exit v0

    .line 1875
    return-void

    .line 1874
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist stopDtmf()V
    .locals 2

    .line 1881
    const-string v0, "stopDtmf :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1884
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->stopDtmf()V

    .line 1887
    :cond_0
    monitor-exit v0

    .line 1888
    return-void

    .line 1887
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1480
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 1483
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_1

    .line 1504
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1505
    const-string v1, "terminate :: terminate other sessions before terminating the foreground call"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->terminateMergeSessions(I)V

    .line 1509
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    .line 1511
    :cond_1
    monitor-exit v0

    .line 1512
    return-void

    .line 1511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist terminate(II)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "overrideReason"    # I

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; overrideReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1465
    iput p2, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    .line 1466
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 1467
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 4228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4229
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCall objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4230
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4231
    const-string v1, " onHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4232
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v1

    const-string v2, "Y"

    const-string v3, "N"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4233
    const-string v1, " mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4235
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 4236
    .local v1, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v1, :cond_2

    .line 4237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mCallProfile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4238
    const-string v4, " networkType:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4239
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4241
    :cond_2
    const-string v4, " updateRequest:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4242
    iget v4, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v4}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    const-string v4, " merging:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4244
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4246
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4247
    const-string v4, "P"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4249
    :cond_4
    const-string v4, "H"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4252
    :cond_5
    :goto_3
    const-string v4, " merge action pending:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4253
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v2

    goto :goto_4

    :cond_6
    move-object v4, v3

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4254
    const-string v4, " merged:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4255
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v2

    goto :goto_5

    :cond_7
    move-object v4, v3

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4256
    const-string v4, " multiParty:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4257
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v2

    goto :goto_6

    :cond_8
    move-object v4, v3

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4258
    const-string v4, " confHost:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4259
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v2

    goto :goto_7

    :cond_9
    move-object v4, v3

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4260
    const-string v4, " buried term:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4261
    iget-boolean v4, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v4, :cond_a

    move-object v4, v2

    goto :goto_8

    :cond_a
    move-object v4, v3

    :goto_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4262
    const-string v4, " isVideo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4263
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v2

    goto :goto_9

    :cond_b
    move-object v4, v3

    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    const-string v4, " wasVideo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4265
    iget-boolean v4, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    if-eqz v4, :cond_c

    move-object v4, v2

    goto :goto_a

    :cond_c
    move-object v4, v3

    :goto_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4266
    const-string v4, " isWifi: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4267
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_b

    :cond_d
    move-object v2, v3

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4268
    const-string v2, " session:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4269
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4270
    const-string v2, " transientSession:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4271
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4272
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transfer :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConfirmationRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1414
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1420
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->transfer(Ljava/lang/String;Z)V

    .line 1422
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1427
    nop

    .line 1428
    :try_start_2
    monitor-exit v0

    .line 1429
    return-void

    .line 1424
    :catchall_0
    move-exception v1

    .line 1425
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "transfer :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1426
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "transfer()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    .end local p2    # "isConfirmationRequired":Z
    throw v2

    .line 1415
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    .restart local p2    # "isConfirmationRequired":Z
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to transfer"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    .end local p2    # "isConfirmationRequired":Z
    throw v1

    .line 1428
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    .restart local p2    # "isConfirmationRequired":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update :: callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_1

    .line 1732
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1733
    const-string v0, "update :: call is on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1735
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Not in a call to update call"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1739
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1740
    :try_start_0
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v2, :cond_3

    .line 1741
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_2

    .line 1742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update :: update is in progress; request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1743
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1742
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1745
    :cond_2
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v2

    .line 1749
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_4

    .line 1755
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1756
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1757
    monitor-exit v0

    .line 1758
    return-void

    .line 1750
    :cond_4
    const-string v1, "update :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1751
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v1

    .line 1757
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist wasVideoCall()Z
    .locals 1

    .line 4314
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    return v0
.end method
