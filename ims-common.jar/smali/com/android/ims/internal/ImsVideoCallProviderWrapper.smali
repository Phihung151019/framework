.class public Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.super Landroid/telecom/Connection$VideoProvider;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;,
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final blacklist MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final blacklist MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final blacklist MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final blacklist MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final blacklist MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final blacklist MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field private blacklist mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

.field private final blacklist mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentVideoState:I

.field private blacklist mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsVideoEnabled:Z

.field private blacklist mUseVideoPauseWorkaround:Z

.field private blacklist mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

.field private blacklist mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentVideoState(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)I
    .locals 0

    iget p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataUsageUpdateRegistrants(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/RegistrantList;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVideoEnabled(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoCallProvider(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-r <init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V
    .locals 4
    .param p1, "videoProvider"    # Lcom/android/ims/internal/IImsVideoCallProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    .line 74
    new-instance v0, Lcom/android/ims/RegistrantList;

    invoke-direct {v0}, Lcom/android/ims/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    .line 77
    new-instance v0, Lcom/android/ims/internal/VideoPauseTracker;

    invoke-direct {v0}, Lcom/android/ims/internal/VideoPauseTracker;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    .line 80
    iput-boolean v3, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    .line 82
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V

    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 161
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    .line 247
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    .line 248
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 251
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Lcom/android/ims/internal/ImsVideoCallProviderWrapper-IA;)V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    .line 252
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    goto :goto_0

    .line 254
    :cond_0
    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    .line 256
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsVideoCallProvider;Lcom/android/ims/internal/VideoPauseTracker;)V
    .locals 0
    .param p1, "videoProvider"    # Lcom/android/ims/internal/IImsVideoCallProvider;
    .param p2, "videoPauseTracker"    # Lcom/android/ims/internal/VideoPauseTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    .line 263
    iput-object p2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    .line 264
    return-void
.end method

.method public static blacklist isPauseRequest(II)Z
    .locals 3
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 403
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    .line 404
    .local v0, "fromPaused":Z
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    .line 406
    .local v1, "toPaused":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static blacklist isResumeRequest(II)Z
    .locals 3
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 418
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    .line 419
    .local v0, "fromPaused":Z
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    .line 421
    .local v1, "toPaused":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static blacklist isTurnOffCameraRequest(II)Z
    .locals 1
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 432
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0
.end method

.method public static blacklist isTurnOnCameraRequest(II)Z
    .locals 1
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 444
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist addImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    .line 153
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public blacklist close()V
    .locals 4

    .line 653
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 656
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 658
    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 660
    :cond_0
    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 664
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    .line 665
    return-void
.end method

.method public blacklist maybeFilterPauseResume(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;I)Landroid/telecom/VideoProfile;
    .locals 10
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "source"    # I

    .line 468
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 469
    .local v0, "fromVideoState":I
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 479
    .local v1, "toVideoState":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 480
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 483
    .local v4, "isPauseSpecialCase":Z
    :goto_0
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isPauseRequest(II)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    .line 484
    .local v2, "isPauseRequest":Z
    :cond_2
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isResumeRequest(II)Z

    move-result v3

    .line 485
    .local v3, "isResumeRequest":Z
    if-eqz v2, :cond_3

    .line 486
    sget-object v5, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    .line 487
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v6

    .line 488
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 486
    const-string v7, "maybeFilterPauseResume: isPauseRequest (from=%s, to=%s)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v5, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v5, p3}, Lcom/android/ims/internal/VideoPauseTracker;->shouldPauseVideoFor(I)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 496
    and-int/lit8 v1, v1, -0x5

    .line 497
    new-instance v5, Landroid/telecom/VideoProfile;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v6

    invoke-direct {v5, v1, v6}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object p2, v5

    goto :goto_1

    .line 499
    :cond_3
    if-eqz v3, :cond_6

    .line 500
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isTurnOffCameraRequest(II)Z

    move-result v5

    .line 501
    .local v5, "isTurnOffCameraRequest":Z
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isTurnOnCameraRequest(II)Z

    move-result v6

    .line 513
    .local v6, "isTurnOnCameraRequest":Z
    iget-boolean v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    if-eqz v7, :cond_5

    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    .line 514
    :cond_4
    sget-object v7, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    .line 516
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v8

    .line 517
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 514
    const-string v9, "maybeFilterPauseResume: isResumeRequest, but camera turning on/off so skipping (from=%s, to=%s)"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object p2

    .line 520
    :cond_5
    sget-object v7, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    .line 521
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v8

    .line 522
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 520
    const-string v9, "maybeFilterPauseResume: isResumeRequest (from=%s, to=%s)"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v7, p3}, Lcom/android/ims/internal/VideoPauseTracker;->shouldResumeVideoFor(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 527
    or-int/lit8 v1, v1, 0x4

    .line 528
    new-instance v7, Landroid/telecom/VideoProfile;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v8

    invoke-direct {v7, v1, v8}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object p2, v7

    .line 532
    .end local v5    # "isTurnOffCameraRequest":Z
    .end local v6    # "isTurnOnCameraRequest":Z
    :cond_6
    :goto_1
    return-object p2
.end method

.method public whitelist onRequestCameraCapabilities()V
    .locals 1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 372
    :goto_0
    return-void
.end method

.method public whitelist onRequestConnectionDataUsage()V
    .locals 1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 382
    :goto_0
    return-void
.end method

.method public whitelist onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 322
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 328
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isResumeRequest(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 329
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSendSessionModifyRequest: fromVideoState=%s, toVideoState=%s; skipping resume request - already resumed."

    .line 334
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 331
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->maybeFilterPauseResume(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;I)Landroid/telecom/VideoProfile;

    move-result-object v0

    move-object p2, v0

    .line 342
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 343
    .local v0, "fromVideoState":I
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 344
    .local v1, "toVideoState":I
    sget-object v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onSendSessionModifyRequest: fromVideoState=%s, toVideoState=%s; "

    .line 346
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 344
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v0    # "fromVideoState":I
    .end local v1    # "toVideoState":I
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 353
    :goto_0
    return-void

    .line 323
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSendSessionModifyRequest: null profile in request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method public whitelist onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 362
    :goto_0
    return-void
.end method

.method public whitelist onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCamera(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 274
    :goto_0
    return-void
.end method

.method public whitelist onSetDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 304
    :goto_0
    return-void
.end method

.method public whitelist onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 294
    :goto_0
    return-void
.end method

.method public whitelist onSetPauseImage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 392
    :goto_0
    return-void
.end method

.method public whitelist onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 284
    :goto_0
    return-void
.end method

.method public whitelist onSetZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 314
    :goto_0
    return-void
.end method

.method public blacklist onVideoStateChanged(I)V
    .locals 3
    .param p1, "newVideoState"    # I

    .line 611
    iget v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 615
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 613
    const-string v2, "onVideoStateChanged: currentVideoState=%s, newVideoState=%s, clearing pending pause requests."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0}, Lcom/android/ims/internal/VideoPauseTracker;->clearPauseRequests()V

    goto :goto_0

    .line 619
    :cond_0
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 621
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 620
    const-string v2, "onVideoStateChanged: currentVideoState=%s, newVideoState=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :goto_0
    iput p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 625
    return-void
.end method

.method public blacklist pauseVideo(II)V
    .locals 6
    .param p1, "fromVideoState"    # I
    .param p2, "source"    # I

    .line 543
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p2}, Lcom/android/ims/internal/VideoPauseTracker;->shouldPauseVideoFor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 546
    .local v0, "fromProfile":Landroid/telecom/VideoProfile;
    new-instance v1, Landroid/telecom/VideoProfile;

    or-int/lit8 v2, p1, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 549
    .local v1, "toProfile":Landroid/telecom/VideoProfile;
    :try_start_0
    sget-object v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "pauseVideo: fromVideoState=%s, toVideoState=%s"

    .line 550
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 549
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    goto :goto_0

    .line 554
    :catch_0
    move-exception v2

    .line 557
    .end local v0    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v1    # "toProfile":Landroid/telecom/VideoProfile;
    :goto_0
    goto :goto_1

    .line 558
    :cond_0
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pauseVideo: video already paused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_1
    return-void
.end method

.method public blacklist registerForDataUsageUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    return-void
.end method

.method public blacklist removeImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    .line 157
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public blacklist resumeVideo(II)V
    .locals 6
    .param p1, "fromVideoState"    # I
    .param p2, "source"    # I

    .line 570
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p2}, Lcom/android/ims/internal/VideoPauseTracker;->shouldResumeVideoFor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 573
    .local v0, "fromProfile":Landroid/telecom/VideoProfile;
    new-instance v1, Landroid/telecom/VideoProfile;

    and-int/lit8 v2, p1, -0x5

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 576
    .local v1, "toProfile":Landroid/telecom/VideoProfile;
    :try_start_0
    sget-object v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resumeVideo: fromVideoState=%s, toVideoState=%s"

    .line 577
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 576
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    goto :goto_0

    .line 581
    :catch_0
    move-exception v2

    .line 584
    .end local v0    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v1    # "toProfile":Landroid/telecom/VideoProfile;
    :goto_0
    goto :goto_1

    .line 585
    :cond_0
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resumeVideo: remaining paused (paused from other sources)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_1
    return-void
.end method

.method public blacklist setIsVideoEnabled(Z)V
    .locals 0
    .param p1, "isVideoEnabled"    # Z

    .line 634
    iput-boolean p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    .line 635
    return-void
.end method

.method public blacklist setUseVideoPauseWorkaround(Z)V
    .locals 0
    .param p1, "useVideoPauseWorkaround"    # Z

    .line 600
    iput-boolean p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    .line 601
    return-void
.end method

.method public blacklist tearDown()V
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 648
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist unregisterForDataUsageUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 149
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/ims/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 150
    return-void
.end method

.method public blacklist wasVideoPausedFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 596
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->wasVideoPausedFromSource(I)Z

    move-result v0

    return v0
.end method
