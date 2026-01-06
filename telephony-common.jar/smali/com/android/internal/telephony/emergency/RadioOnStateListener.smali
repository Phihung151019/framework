.class public Lcom/android/internal/telephony/emergency/RadioOnStateListener;
.super Ljava/lang/Object;
.source "RadioOnStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;
    }
.end annotation


# static fields
.field private static blacklist MAX_NUM_RETRIES:I = 0x5

.field public static final blacklist MSG_IMS_CAPABILITY_CHANGED:I = 0x6

.field public static final blacklist MSG_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x5

.field public static final blacklist MSG_RADIO_ON:I = 0x4

.field public static final blacklist MSG_SATELLITE_ENABLED_CHANGED:I = 0x8

.field public static final blacklist MSG_SERVICE_STATE_CHANGED:I = 0x2

.field public static final blacklist MSG_TIMEOUT_ONTIMEOUT_CALLBACK:I = 0x7

.field private static blacklist TIME_BETWEEN_RETRIES_MILLIS:J = 0x1388L


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

.field private blacklist mForEmergencyCall:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mNumRetriesSoFar:I

.field private blacklist mOnTimeoutCallbackInterval:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mSatelliteCallback:Landroid/telephony/satellite/ISatelliteModemStateCallback;

.field private blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private blacklist mSelectedPhoneForEmergencyCall:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)Lcom/android/internal/telephony/satellite/SatelliteController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monImsCapabilityChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onImsCapabilityChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRadioOn(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onRadioOn()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRetryTimeout(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onRetryTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSatelliteEnabledChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onSatelliteEnabledChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeoutCallbackTimeout(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onTimeoutCallbackTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForRadioOn(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForRadioOn()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSequenceInternal(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;-><init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$2;-><init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteCallback:Landroid/telephony/satellite/ISatelliteModemStateCallback;

    return-void
.end method

.method private blacklist cancelRetryTimer()V
    .locals 1

    .line 478
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist isOkToCall(IZ)Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 358
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->isOkToCall(Lcom/android/internal/telephony/Phone;IZ)Z

    move-result p0

    return p0
.end method

.method private blacklist onComplete(Z)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 558
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    .line 559
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->onComplete(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Z)V

    :cond_0
    return-void
.end method

.method private blacklist onImsCapabilityChanged()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v0

    .line 262
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 261
    const-string v2, "onImsCapabilityChanged, capable = %s, Phone = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioOnStateListener"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const-string v0, "onImsCapabilityChanged: ok to call!"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 271
    :cond_1
    const-string p0, "onImsCapabilityChanged: not ready to call yet, keep waiting."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onRadioOn()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onRadioOn, state = %s, Phone = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioOnStateListener"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 333
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 336
    :cond_1
    const-string p0, "onRadioOn: not ready to call yet, keep waiting."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onRetryTimeout()V
    .locals 5

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 378
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 380
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 378
    const-string v3, "onRetryTimeout():  phone state = %s, service state = %d, retries = %d."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v2, "RadioOnStateListener"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 389
    const-string v0, "onRetryTimeout: Radio is on. Cleaning up."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 398
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumRetriesSoFar is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    sget v3, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->MAX_NUM_RETRIES:I

    if-le v0, v3, :cond_3

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    const-string p0, "Hit MAX_NUM_RETRIES; waiting onTimeout callback"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 406
    :cond_2
    const-string v0, "Hit MAX_NUM_RETRIES; giving up."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 409
    :cond_3
    const-string v0, "Trying (again) to turn the radio on and satellite modem off."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-boolean v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mForEmergencyCall:Z

    iget-boolean v3, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSelectedPhoneForEmergencyCall:Z

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPower(ZZZZ)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;-><init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 430
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startRetryTimer()V

    return-void
.end method

.method private blacklist onSatelliteEnabledChanged()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 345
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    .line 344
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 346
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 349
    :cond_1
    const-string p0, "RadioOnStateListener"

    const-string v0, "onSatelliteEnabledChanged: not ready to call yet, keep waiting."

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 304
    const-string v1, "onServiceStateChanged(), new state = %s, Phone = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioOnStateListener"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 316
    const-string p1, "onServiceStateChanged: ok to call!"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 322
    :cond_1
    const-string p0, "onServiceStateChanged: not ready to call yet, keep waiting."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onTimeout(IZ)Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 366
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->onTimeout(Lcom/android/internal/telephony/Phone;IZ)Z

    move-result p0

    return p0
.end method

.method private blacklist onTimeoutCallbackTimeout()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 281
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onTimeout(IZ)Z

    move-result v0

    const-string v1, "RadioOnStateListener"

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "onTimeout: ok to call!"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    sget v2, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->MAX_NUM_RETRIES:I

    if-le v0, v2, :cond_2

    .line 287
    const-string v0, "onTimeout: Hit MAX_NUM_RETRIES; giving up."

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 290
    :cond_2
    const-string v0, "onTimeout: not ready to call yet, keep waiting."

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startOnTimeoutCallbackTimer()V

    return-void
.end method

.method private blacklist registerForImsCapabilityChanged()V
    .locals 3

    .line 532
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForImsCapabilityChanged()V

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 534
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForImsCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerForRadioOff()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerForRadioOn()V
    .locals 3

    .line 510
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForRadioOff()V

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerForSatelliteEnabledChanged()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteCallback:Landroid/telephony/satellite/ISatelliteModemStateCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    return-void
.end method

.method private blacklist registerForServiceStateChanged()V
    .locals 3

    .line 485
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForServiceStateChanged()V

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist startOnTimeoutCallbackTimer()V
    .locals 4

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOnTimeoutCallbackTimer: mOnTimeoutCallbackInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mOnTimeoutCallbackInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioOnStateListener"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mOnTimeoutCallbackInterval:I

    if-lez v0, :cond_0

    .line 550
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private blacklist startRetryTimer()V
    .locals 3

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cancelRetryTimer()V

    .line 474
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    sget-wide v1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->TIME_BETWEEN_RETRIES_MILLIS:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private blacklist startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSequenceInternal: Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioOnStateListener"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    .line 231
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 232
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    .line 233
    iput-boolean p3, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mForEmergencyCall:Z

    .line 234
    iput-boolean p4, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSelectedPhoneForEmergencyCall:Z

    .line 235
    iput p5, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mOnTimeoutCallbackInterval:I

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForServiceStateChanged()V

    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForRadioOff()V

    .line 241
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForSatelliteEnabledChanged()V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startRetryTimer()V

    .line 250
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForImsCapabilityChanged()V

    .line 251
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startOnTimeoutCallbackTimer()V

    return-void
.end method

.method private blacklist unregisterForImsCapabilityChanged()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    .line 540
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForImsCapabilityChanged(Landroid/os/Handler;)V

    .line 542
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist unregisterForRadioOff()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 506
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist unregisterForRadioOn()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 519
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist unregisterForSatelliteEnabledChanged()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteCallback:Landroid/telephony/satellite/ISatelliteModemStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    .line 528
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist unregisterForServiceStateChanged()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 494
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public blacklist cleanup()V
    .locals 2

    .line 453
    const-string v0, "RadioOnStateListener"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 457
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 459
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForServiceStateChanged()V

    .line 460
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForRadioOff()V

    .line 461
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForRadioOn()V

    .line 462
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForSatelliteEnabledChanged()V

    .line 463
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cancelRetryTimer()V

    .line 464
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForImsCapabilityChanged()V

    const/4 v1, 0x0

    .line 467
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 468
    iput v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    .line 469
    iput v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mOnTimeoutCallbackInterval:I

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 582
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 585
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    .line 587
    iget v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    iget v3, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    if-eq v2, v3, :cond_2

    return v1

    .line 590
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 593
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    iget-object p0, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez p0, :cond_6

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0xd9

    .line 599
    iget v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 601
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public blacklist setMaxNumRetries(I)V
    .locals 0

    .line 570
    sput p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->MAX_NUM_RETRIES:I

    return-void
.end method

.method public blacklist setTimeBetweenRetriesMillis(J)V
    .locals 0

    .line 575
    sput-wide p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->TIME_BETWEEN_RETRIES_MILLIS:J

    return-void
.end method

.method public blacklist waitForRadioOn(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitForRadioOn: Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioOnStateListener"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 207
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 208
    iput-object p2, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 209
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    .line 210
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg4:Ljava/lang/Object;

    .line 211
    iput p5, v0, Lcom/android/internal/telephony/SomeArgs;->argi1:I

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
