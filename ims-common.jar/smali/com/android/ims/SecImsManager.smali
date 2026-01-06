.class public Lcom/android/ims/SecImsManager;
.super Lcom/android/ims/ImsManager;
.source "SecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/SecImsManager$WfcDataBaseManager;
    }
.end annotation


# static fields
.field private static final blacklist IMS_SERVICE_NAME:Ljava/lang/String; = "ims6"

.field private static blacklist MDEC_ACTIVATION:Ljava/lang/String; = null

.field private static blacklist MDEC_DEVICE_TYPE:Ljava/lang/String; = null

.field private static blacklist MDEC_DEVICE_TYPE_PD:Ljava/lang/String; = null

.field private static blacklist MDEC_DEVICE_TYPE_SD:Ljava/lang/String; = null

.field private static final blacklist SAMSUNG_IMS_SERVICE_NAME:Ljava/lang/String; = "ims6"

.field private static final blacklist TAG:Ljava/lang/String; = "SecImsManager"

.field private static blacklist VOICE_CS:I

.field private static blacklist VOICE_VOLTE:I

.field private static blacklist VT_DISABLED:I

.field private static blacklist VT_ENABLED:I


# instance fields
.field private final blacklist WAIT_TIMEOUT_MS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/android/ims/SecImsManager;->VOICE_VOLTE:I

    .line 63
    const/4 v1, 0x1

    sput v1, Lcom/android/ims/SecImsManager;->VOICE_CS:I

    .line 65
    sput v0, Lcom/android/ims/SecImsManager;->VT_ENABLED:I

    .line 66
    sput v1, Lcom/android/ims/SecImsManager;->VT_DISABLED:I

    .line 70
    const-string v0, "cmc_activation"

    sput-object v0, Lcom/android/ims/SecImsManager;->MDEC_ACTIVATION:Ljava/lang/String;

    .line 71
    const-string v0, "cmc_device_type"

    sput-object v0, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE:Ljava/lang/String;

    .line 72
    const-string v0, "pd"

    sput-object v0, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE_PD:Ljava/lang/String;

    .line 73
    const-string v0, "sd"

    sput-object v0, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE_SD:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/ims/SecImsManager;->WAIT_TIMEOUT_MS:I

    .line 80
    return-void
.end method

.method private blacklist getEnhanced4gLtePropName()Ljava/lang/String;
    .locals 2

    .line 208
    iget v0, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    const-string v0, "voicecall_type2"

    return-object v0

    .line 211
    :cond_0
    const-string v0, "voicecall_type"

    return-object v0
.end method

.method private blacklist getFeatureValue(II)Z
    .locals 7
    .param p1, "feature"    # I
    .param p2, "rat"    # I

    .line 384
    const-string v0, "getFeatureValue"

    const-string v1, "SecImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 386
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v2, [Z

    .line 387
    .local v2, "returnValue":[Z
    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 390
    :try_start_0
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/MmTelFeatureConnection;

    new-instance v5, Lcom/android/ims/SecImsManager$1;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/ims/SecImsManager$1;-><init>(Lcom/android/ims/SecImsManager;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, p1, p2, v5}, Lcom/android/ims/MmTelFeatureConnection;->queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 402
    :catch_0
    move-exception v4

    .line 404
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue : exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 410
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    goto :goto_1

    .line 411
    :catch_1
    move-exception v4

    .line 412
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 414
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFeatureValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-boolean v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    aget-boolean v1, v2, v3

    return v1
.end method

.method private blacklist getSamsungImsService()Lcom/android/ims/internal/IImsService;
    .locals 3

    .line 83
    const-string v0, "ims6"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 86
    const-string v1, "SecImsManager"

    const-string v2, "getSamsungImsService: binder does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_0
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getVtPropName()Ljava/lang/String;
    .locals 2

    .line 216
    iget v0, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    const-string v0, "videocall_type2"

    return-object v0

    .line 219
    :cond_0
    const-string v0, "videocall_type"

    return-object v0
.end method

.method private blacklist isSecEpdgNotSupported()Z
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v2, "epdg_support"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 379
    move v3, v1

    goto :goto_0

    :cond_0
    nop

    .line 380
    .local v3, "setting":Z
    :goto_0
    return v3
.end method

.method private blacklist isSubIdValid(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 315
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist changeAudioPath(I)V
    .locals 4
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 424
    :try_start_0
    const-string v0, "SecImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeAudioPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    .line 426
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->changeAudioPath(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    nop

    .line 432
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "changeAudioPath()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist getInitialCallNetworkType(I)I
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->getInitialCallNetworkType(I)I

    move-result v0

    .line 580
    .local v0, "networkType":I
    const-string v1, "SecImsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialCallNetworkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    return v0

    .line 582
    .end local v0    # "networkType":I
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getInitialCallNetworkType()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getTrn()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist getWfcMode(Z)I
    .locals 7
    .param p1, "roaming"    # Z

    .line 279
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-super {p0, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    return v0

    .line 284
    :cond_0
    const-string v0, "wifi_call_preferred"

    const-string v1, "SecImsManager"

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 285
    iget-object v3, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-static {v3, v0, v2, v4}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    .line 287
    .local v0, "mode":I
    invoke-static {v0, p1}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToGoogleWfcMode(IZ)I

    move-result v2

    .line 288
    .local v2, "setting":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWfcMode - setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0    # "mode":I
    goto :goto_1

    .line 294
    .end local v2    # "setting":I
    :cond_1
    iget-object v3, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    const-string v4, "wifi_call_when_roaming"

    iget v5, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const/4 v6, -0x1

    invoke-static {v3, v4, v6, v5}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    .line 296
    .local v3, "mode":I
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->overrideWfcRoamingModeWhileUsingNTN()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 297
    const-string v0, "getWfcMode (roaming) - override Wfc roaming mode to WIFI_PREFERRED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x2

    move v2, v0

    .local v0, "setting":I
    goto :goto_0

    .line 299
    .end local v0    # "setting":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->usewfcHomeNetworkModeInRoamingNetwork()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    const-string v0, "getWfcMode (roaming) - set Wfc roaming mode with same value "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/ims/SecImsManager;->getWfcMode(Z)I

    move-result v0

    move v2, v0

    .restart local v0    # "setting":I
    goto :goto_0

    .line 302
    .end local v0    # "setting":I
    :cond_3
    if-ne v3, v6, :cond_4

    .line 303
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-static {v4, v0, v2, v5}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    .line 305
    invoke-static {v3, v2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToGoogleWfcMode(IZ)I

    move-result v0

    move v2, v0

    .restart local v0    # "setting":I
    goto :goto_0

    .line 307
    .end local v0    # "setting":I
    :cond_4
    invoke-static {v3, p1}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToGoogleWfcMode(IZ)I

    move-result v0

    move v2, v0

    .line 309
    .restart local v2    # "setting":I
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWfcMode (roaming) - setting="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v3    # "mode":I
    :goto_1
    return v2
.end method

.method public blacklist isCmcEmergencyCallSupported()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->isCmcEmergencyCallSupported(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "isCmcEmergencyCallSupported()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist isEnhanced4gLteModeSettingEnabledByUser()Z
    .locals 6

    .line 128
    const-string v0, "SecImsManager"

    .line 129
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    .line 128
    const-string v3, "volte_vt_enabled"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 132
    .local v1, "setting":I
    sget v2, Lcom/android/ims/SecImsManager;->VOICE_CS:I

    .line 134
    .local v2, "propValue":I
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getEnhanced4gLtePropName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getEnhanced4gLtePropName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NotFound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnhanced4gLteModeSettingEnabledByUser : sub DB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", system prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget v0, Lcom/android/ims/SecImsManager;->VOICE_VOLTE:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public blacklist isMultiDeviceCallContinuityEnabledByUser()Z
    .locals 7

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "activated":Z
    const-string v1, ""

    .line 536
    .local v1, "devicetype":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/ims/SecImsManager;->MDEC_ACTIVATION:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v3, :cond_0

    .line 537
    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v0, v4

    .line 540
    goto :goto_1

    .line 538
    :catch_0
    move-exception v4

    .line 539
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/ims/SecImsManager;->MDEC_ACTIVATION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NotFound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecImsManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    if-eqz v0, :cond_1

    .line 542
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    :cond_1
    if-eqz v0, :cond_2

    sget-object v4, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE_SD:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public blacklist isVolteEnabledByPlatform()Z
    .locals 4

    .line 99
    const-string v0, "SecImsManager"

    const-string v1, "isVolteEnabledByPlatform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 106
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/ims/SecImsManager;->getFeatureValue(II)Z

    move-result v0

    return v0

    .line 108
    :cond_1
    :goto_0
    return v3
.end method

.method public blacklist isVolteProvisionedOnDevice()Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->isVolteProvisioned()Z

    move-result v0

    return v0
.end method

.method public blacklist isVtEnabledByPlatform()Z
    .locals 4

    .line 163
    const-string v0, "SecImsManager"

    const-string v1, "isVtEnabledByPlatformForSlot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "persist.dbg.vt_avail_ovr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 166
    return v2

    .line 169
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/ims/SecImsManager;->getFeatureValue(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    invoke-direct {p0, v0, v2}, Lcom/android/ims/SecImsManager;->getFeatureValue(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    .line 169
    :cond_2
    return v1
.end method

.method public blacklist isVtEnabledByUser()Z
    .locals 6

    .line 179
    const-string v0, "SecImsManager"

    .line 180
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    .line 179
    const-string v3, "vt_ims_enabled"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 183
    .local v1, "setting":I
    sget v2, Lcom/android/ims/SecImsManager;->VT_DISABLED:I

    .line 185
    .local v2, "propValue":I
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getVtPropName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v3

    .line 187
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getVtPropName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NotFound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVtEnabledByUser : sub DB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", system prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget v0, Lcom/android/ims/SecImsManager;->VT_ENABLED:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public blacklist isVtProvisionedOnDevice()Z
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->isVtProvisioned()Z

    move-result v0

    return v0
.end method

.method public blacklist isWfcEnabledByPlatform()Z
    .locals 5

    .line 247
    const-string v0, "SecImsManager"

    const-string v1, "isWfcEnabledByPlatform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 250
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    const-string v1, "epdg_support"

    iget v2, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 256
    goto :goto_0

    :cond_1
    move v3, v4

    .line 257
    .local v3, "setting":Z
    :goto_0
    return v3

    .line 252
    .end local v3    # "setting":Z
    :cond_2
    :goto_1
    return v3
.end method

.method public blacklist isWfcEnabledByUser()Z
    .locals 4

    .line 265
    const-string v0, "SecImsManager"

    const-string v1, "isWfcEnabledByUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-super {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    return v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    const-string v1, "wifi_call_enable"

    iget v2, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 270
    move v3, v1

    goto :goto_0

    :cond_1
    nop

    .line 271
    .local v3, "setting":Z
    :goto_0
    return v3
.end method

.method public blacklist isWfcProvisionedOnDevice()Z
    .locals 1

    .line 236
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-super {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    return v0

    .line 239
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist notifyEpsFallbackResult(I)V
    .locals 4
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->notifyEpsFallbackResult(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    nop

    .line 624
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "notifyEpsFallbackResult()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist sendDtmfEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "dtmfEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->sendDtmfEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    nop

    .line 487
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "sendDtmfEvent()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist sendMmsProcType(Z)V
    .locals 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->sendMmsProcType(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    nop

    .line 637
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "sendMmsProcType()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/PublishDialog;)V
    .locals 4
    .param p1, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    nop

    .line 513
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "sendPublishDialog()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setEnhanced4gLteModeSetting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnhanced4gLteModeSetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v0

    .line 152
    invoke-static {p1}, Lcom/android/ims/SecImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v2, "volte_vt_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getEnhanced4gLtePropName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    sget v2, Lcom/android/ims/SecImsManager;->VOICE_VOLTE:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/ims/SecImsManager;->VOICE_CS:I

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return-void
.end method

.method public blacklist setRetryCount(II)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->setRetryCount(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    nop

    .line 598
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setRetryCount()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setSmsc(Ljava/lang/String;)V
    .locals 4
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->setSmsc(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    nop

    .line 611
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setSmsc()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setTtyMode(I)V
    .locals 4
    .param p1, "ttyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 566
    :try_start_0
    const-string v0, "SecImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtyMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->setTtyMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    nop

    .line 571
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setTtyMode()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setVideoCrtAudio(Z)V
    .locals 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 466
    :try_start_0
    const-string v0, "SecImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoCrtAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 467
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    .line 468
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->setVideoCrtAudio(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    nop

    .line 474
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setVideoCrtAudio()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setVtSetting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVtSetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v0

    .line 201
    invoke-static {p1}, Lcom/android/ims/SecImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v2, "vt_ims_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getVtPropName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    sget v2, Lcom/android/ims/SecImsManager;->VT_ENABLED:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/ims/SecImsManager;->VT_DISABLED:I

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    return-void
.end method

.method public blacklist setWfcMode(IZ)V
    .locals 6
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 343
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v0

    .line 344
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/SecImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const-string v1, "SecImsManager"

    if-nez p2, :cond_0

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWfcMode - setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    nop

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    const-string v2, "wfc_ims_mode"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWfcMode(roaming) - setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    nop

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v2, "wfc_ims_roaming_mode"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    return-void

    .line 361
    :cond_2
    if-eqz p2, :cond_3

    .line 362
    iget-object v1, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v3, "wifi_call_when_roaming"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4, v2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 364
    .local v1, "mode":I
    if-eq v1, v4, :cond_3

    .line 366
    invoke-static {p1, p2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToSecWfcMode(IZ)I

    move-result v2

    .line 367
    .local v2, "setting":I
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-static {v4, v3, v2, v5}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 368
    return-void

    .line 372
    .end local v1    # "mode":I
    .end local v2    # "setting":I
    :cond_3
    const/4 p2, 0x0

    .line 373
    invoke-static {p1, p2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToSecWfcMode(IZ)I

    move-result v1

    .line 374
    .local v1, "setting":I
    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi_call_preferred"

    iget v4, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-static {v2, v3, v1, v4}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 375
    return-void
.end method

.method public blacklist setWfcSetting(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 324
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v0

    .line 325
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/SecImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    nop

    .line 327
    invoke-static {p1}, Lcom/android/ims/SecImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 326
    const-string v2, "wfc_ims_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    return-void

    .line 334
    :cond_1
    move v1, p1

    .line 335
    .local v1, "setting":I
    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi_call_enable"

    iget v4, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-static {v2, v3, v1, v4}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 336
    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->startLocalRingBackTone(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "startLocalRingBackTone()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist stopLocalRingBackTone()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->stopLocalRingBackTone()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "stopLocalRingBackTone()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist triggerAutoConfigurationForApp(I)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 553
    :try_start_0
    const-string v0, "SecImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAutoConfigurationForApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->triggerAutoConfigurationForApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    nop

    .line 558
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "triggerAutoConfigurationForApp()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
