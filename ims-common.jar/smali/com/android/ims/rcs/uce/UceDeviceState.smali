.class public Lcom/android/ims/rcs/uce/UceDeviceState;
.super Ljava/lang/Object;
.source "UceDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;,
        Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateType;
    }
.end annotation


# static fields
.field private static final blacklist DEVICE_STATE_BAD_EVENT:I = 0x3

.field private static final blacklist DEVICE_STATE_DESCRIPTION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEVICE_STATE_FORBIDDEN:I = 0x1

.field private static final blacklist DEVICE_STATE_NO_RETRY:I = 0x4

.field private static final blacklist DEVICE_STATE_OK:I = 0x0

.field private static final blacklist DEVICE_STATE_PROVISION_ERROR:I = 0x2

.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceState:I

.field private blacklist mErrorCode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExitStateTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestRetryTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubId:I

.field private final blacklist mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEVICE_STATE_DESCRIPTION()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->DEVICE_STATE_DESCRIPTION:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UceDeviceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->LOG_TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->DEVICE_STATE_DESCRIPTION:Ljava/util/Map;

    .line 85
    sget-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->DEVICE_STATE_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DEVICE_STATE_OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->DEVICE_STATE_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DEVICE_STATE_FORBIDDEN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->DEVICE_STATE_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DEVICE_STATE_PROVISION_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->DEVICE_STATE_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DEVICE_STATE_BAD_EVENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->DEVICE_STATE_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DEVICE_STATE_NO_RETRY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/Context;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uceCtrlCallback"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mSubId:I

    .line 195
    iput-object p2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mContext:Landroid/content/Context;

    .line 196
    iput-object p3, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "restoreFromPref":Z
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/ims/rcs/uce/util/UceUtils;->restoreDeviceState(Landroid/content/Context;I)Ljava/util/Optional;

    move-result-object v1

    .line 201
    .local v1, "deviceState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 203
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getDeviceState()I

    move-result v2

    iput v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mDeviceState:I

    .line 204
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mErrorCode:Ljava/util/Optional;

    .line 205
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryTime()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mRequestRetryTime:Ljava/util/Optional;

    .line 206
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getExitStateTime()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    goto :goto_0

    .line 208
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mDeviceState:I

    .line 209
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mErrorCode:Ljava/util/Optional;

    .line 210
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mRequestRetryTime:Ljava/util/Optional;

    .line 211
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    .line 213
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UceDeviceState: restore from sharedPref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/UceDeviceState;->logd(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .line 436
    sget-object v0, Lcom/android/ims/rcs/uce/UceDeviceState;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method private blacklist removeDeviceStateFromPreference()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/util/UceUtils;->removeDeviceStateFromPreference(Landroid/content/Context;I)Z

    move-result v0

    .line 432
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDeviceStateFromPreference: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceDeviceState;->logd(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method private blacklist removeExitStateTimer()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    .line 413
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->clearResetDeviceStateTimer()V

    .line 415
    :cond_0
    return-void
.end method

.method private blacklist removeRequestRetryTime()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mRequestRetryTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mRequestRetryTime:Ljava/util/Optional;

    .line 391
    :cond_0
    return-void
.end method

.method private blacklist resetErrorCode()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mErrorCode:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mErrorCode:Ljava/util/Optional;

    .line 374
    :cond_0
    return-void
.end method

.method private blacklist resetInternal()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->setDeviceState(I)V

    .line 351
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->resetErrorCode()V

    .line 352
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeRequestRetryTime()V

    .line 353
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeExitStateTimer()V

    .line 354
    return-void
.end method

.method private blacklist saveDeviceStateToPreference(Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;)V
    .locals 3
    .param p1, "deviceState"    # Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    .line 422
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mSubId:I

    invoke-static {v0, v1, p1}, Lcom/android/ims/rcs/uce/util/UceUtils;->saveDeviceStateToPreference(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;)Z

    move-result v0

    .line 423
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDeviceStateToPreference: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceDeviceState;->logd(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private blacklist setDeviceState(I)V
    .locals 1
    .param p1, "latestState"    # I

    .line 357
    iget v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mDeviceState:I

    if-eq v0, p1, :cond_0

    .line 358
    iput p1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mDeviceState:I

    .line 360
    :cond_0
    return-void
.end method

.method private blacklist setupExitStateTimer()V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/util/UceUtils;->getNonRcsCapabilitiesCacheExpiration(Landroid/content/Context;I)J

    move-result-wide v0

    .line 399
    .local v0, "expirySec":J
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupExitStateTimer: expirationSec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/UceDeviceState;->logd(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v2, v0, v1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->setupResetDeviceStateTimer(J)V

    .line 405
    .end local v0    # "expirySec":J
    :cond_0
    return-void
.end method

.method private blacklist setupRequestRetryTime()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mRequestRetryTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mRequestRetryTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/util/UceUtils;->getRequestRetryInterval(Landroid/content/Context;I)J

    move-result-wide v0

    .line 383
    .local v0, "retryInterval":J
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mRequestRetryTime:Ljava/util/Optional;

    .line 385
    .end local v0    # "retryInterval":J
    :cond_1
    return-void
.end method

.method private blacklist updateErrorCode(ILjava/lang/String;I)V
    .locals 2
    .param p1, "sipCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "requestType"    # I

    .line 363
    invoke-static {p1, p2, p3}, Lcom/android/ims/rcs/uce/util/NetworkSipCode;->getCapabilityErrorFromSipCode(ILjava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 365
    .local v0, "newErrorCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mErrorCode:Ljava/util/Optional;

    invoke-virtual {v1, v0}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mErrorCode:Ljava/util/Optional;

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist checkSendResetDeviceStateTimer()V
    .locals 4

    monitor-enter p0

    .line 222
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSendResetDeviceStateTimer: time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->logd(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 224
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/Temporal;

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v0

    .line 227
    .local v0, "expirySec":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 228
    const-wide/16 v0, 0x0

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v2, v0, v1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->setupResetDeviceStateTimer(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 221
    .end local v0    # "expirySec":J
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceDeviceState;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    .locals 5

    monitor-enter p0

    .line 238
    :try_start_0
    new-instance v0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    iget v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mDeviceState:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mErrorCode:Ljava/util/Optional;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mRequestRetryTime:Ljava/util/Optional;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mExitStateTime:Ljava/util/Optional;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;-><init>(ILjava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 238
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceDeviceState;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist refreshDeviceState(ILjava/lang/String;I)V
    .locals 4
    .param p1, "sipCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "requestType"    # I

    monitor-enter p0

    .line 249
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshDeviceState: sipCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestResponseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/ims/rcs/uce/UceController;->REQUEST_TYPE_DESCRIPTION:Ljava/util/Map;

    .line 250
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->logd(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 256
    .local v0, "previousState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceDeviceState;
    goto :goto_0

    .line 283
    .restart local p0    # "this":Lcom/android/ims/rcs/uce/UceDeviceState;
    :sswitch_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/UceDeviceState;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/ims/rcs/uce/util/UceUtils;->isRequestForbiddenBySip489(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceDeviceState;->setDeviceState(I)V

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/UceDeviceState;->updateErrorCode(ILjava/lang/String;I)V

    .line 287
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->setupRequestRetryTime()V

    .line 289
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->setupExitStateTimer()V

    goto :goto_0

    .line 306
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceDeviceState;
    :sswitch_1
    if-ne p3, v2, :cond_0

    .line 307
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceDeviceState;->setDeviceState(I)V

    .line 309
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeRequestRetryTime()V

    .line 311
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeExitStateTimer()V

    goto :goto_0

    .line 272
    :sswitch_2
    if-ne p3, v2, :cond_0

    .line 273
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceDeviceState;->setDeviceState(I)V

    .line 274
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/UceDeviceState;->updateErrorCode(ILjava/lang/String;I)V

    .line 276
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeRequestRetryTime()V

    .line 278
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeExitStateTimer()V

    goto :goto_0

    .line 259
    :sswitch_3
    if-ne p3, v2, :cond_0

    .line 261
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceDeviceState;->setDeviceState(I)V

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/UceDeviceState;->updateErrorCode(ILjava/lang/String;I)V

    .line 264
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeRequestRetryTime()V

    .line 266
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeExitStateTimer()V

    goto :goto_0

    .line 296
    :sswitch_4
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->resetInternal()V

    .line 297
    nop

    .line 317
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v1

    .line 322
    .local v1, "currentState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeDeviceStateFromPreference()V

    goto :goto_1

    .line 324
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isDeviceStateEqual(Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 325
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceDeviceState;->saveDeviceStateToPreference(Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;)V

    .line 328
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshDeviceState: previous: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/UceDeviceState;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 248
    .end local v0    # "previousState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    .end local v1    # "currentState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    .end local p1    # "sipCode":I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "requestType":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_4
        0xca -> :sswitch_4
        0x193 -> :sswitch_3
        0x194 -> :sswitch_2
        0x19d -> :sswitch_1
        0x1e0 -> :sswitch_1
        0x1e6 -> :sswitch_1
        0x1e9 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x1f7 -> :sswitch_1
        0x1f8 -> :sswitch_3
        0x258 -> :sswitch_1
        0x25b -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized blacklist resetDeviceState()V
    .locals 4

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 337
    .local v0, "previousState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->resetInternal()V

    .line 338
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v1

    .line 341
    .local v1, "currentState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceDeviceState;->removeDeviceStateFromPreference()V

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetDeviceState: previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/UceDeviceState;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 335
    .end local v0    # "previousState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    .end local v1    # "currentState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceDeviceState;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
