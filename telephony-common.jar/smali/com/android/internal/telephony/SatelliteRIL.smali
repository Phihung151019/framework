.class public Lcom/android/internal/telephony/SatelliteRIL;
.super Lcom/android/internal/telephony/SatelliteBaseCommands;
.source "SatelliteRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/SatelliteCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;,
        Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final blacklist RILJ_LOGD:Z = true

.field public static final blacklist RILJ_LOGV:Z = false

.field public static final blacklist SEH_SATELLITE_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEH_SATELLITE_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mDeathRecipient:Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;

.field private final blacklist mDefaultWorkSource:Landroid/os/WorkSource;

.field private final greylist mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRilHandler:Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;

.field private blacklist mSatelliteIndication:Lcom/android/internal/telephony/SehSatelliteIndication;

.field private blacklist mSatelliteResponse:Lcom/android/internal/telephony/SehSatelliteResponse;

.field private final blacklist mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

.field private final blacklist mSehRadioSatelliteProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private blacklist mSehSatelliteHalVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HalVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSehRadioSatelliteProxyCookie(Lcom/android/internal/telephony/SatelliteRIL;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/SatelliteRIL;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 71
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/SatelliteRIL;->SEH_SATELLITE_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SatelliteRIL;->SEH_SATELLITE_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SatelliteRIL;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SatelliteBaseCommands;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehSatelliteHalVersion:Ljava/util/Map;

    .line 84
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    .line 104
    const-string p1, "SatelliteRIL: Constructor"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 107
    new-instance p1, Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;-><init>(Lcom/android/internal/telephony/SatelliteRIL;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRilHandler:Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;

    .line 108
    new-instance p1, Lcom/android/internal/telephony/SehSatelliteResponse;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SehSatelliteResponse;-><init>(Lcom/android/internal/telephony/SatelliteRIL;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSatelliteResponse:Lcom/android/internal/telephony/SehSatelliteResponse;

    .line 109
    new-instance p1, Lcom/android/internal/telephony/SehSatelliteIndication;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SehSatelliteIndication;-><init>(Lcom/android/internal/telephony/SatelliteRIL;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSatelliteIndication:Lcom/android/internal/telephony/SehSatelliteIndication;

    .line 110
    new-instance p1, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/SatelliteRIL;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDeathRecipient:Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;

    .line 111
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 112
    new-instance p1, Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-direct {p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    .line 113
    new-instance p1, Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    return-void
.end method

.method private blacklist clearRequestList(IZ)V
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestList: mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 183
    iget-object v3, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_1

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    .line 187
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 188
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 191
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 271
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .locals 0

    .line 256
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 257
    iget-object p2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p2

    .line 258
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mRequestList:Landroid/util/SparseArray;

    iget p3, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 259
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_0
    return-void
.end method

.method static greylist requestToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 423
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 421
    :pswitch_1
    const-string p0, "SET_COMBINED_CONFIG_MODE"

    return-object p0

    .line 391
    :pswitch_2
    const-string p0, "SAT_SEND_LOCATION_DATA"

    return-object p0

    .line 389
    :pswitch_3
    const-string p0, "SAT_SEND_LOCATION_USERPERMIT"

    return-object p0

    .line 419
    :pswitch_4
    const-string p0, "SAT_GET_IOT_REGISTRATION_STATE"

    return-object p0

    .line 417
    :pswitch_5
    const-string p0, "SAT_GET_IOT_MODE"

    return-object p0

    .line 415
    :pswitch_6
    const-string p0, "SAT_DISABLE_IOT_MODE"

    return-object p0

    .line 413
    :pswitch_7
    const-string p0, "SAT_ENABLE_IOT_MODE"

    return-object p0

    .line 411
    :pswitch_8
    const-string p0, "SAT_CLEANUP_NETWORK_INFO"

    return-object p0

    .line 409
    :pswitch_9
    const-string p0, "SAT_START_NETWORK_SEARCH"

    return-object p0

    .line 407
    :pswitch_a
    const-string p0, "SAT_SEND_RAW_AT_COMMAND"

    return-object p0

    .line 383
    :pswitch_b
    const-string p0, "SAT_SET_SMSC_ADDRESS"

    return-object p0

    .line 405
    :pswitch_c
    const-string p0, "SAT_SET_DSI_CONFIG"

    return-object p0

    .line 381
    :pswitch_d
    const-string p0, "SAT_GET_SATELLITE_ID"

    return-object p0

    .line 387
    :pswitch_e
    const-string p0, "SAT_SEND_SMS_EXPECT_MORE"

    return-object p0

    .line 385
    :pswitch_f
    const-string p0, "SAT_SEND_SMS"

    return-object p0

    .line 403
    :pswitch_10
    const-string p0, "SAT_GET_TXPOWER"

    return-object p0

    .line 401
    :pswitch_11
    const-string p0, "SAT_GET_ARFCN"

    return-object p0

    .line 399
    :pswitch_12
    const-string p0, "SAT_GET_SERIAL_NUMBER"

    return-object p0

    .line 397
    :pswitch_13
    const-string p0, "SAT_SET_IMEI"

    return-object p0

    .line 395
    :pswitch_14
    const-string p0, "SAT_SEND_ICC_SIM_AUTH"

    return-object p0

    .line 393
    :pswitch_15
    const-string p0, "SAT_SET_IMSI"

    return-object p0

    .line 379
    :pswitch_16
    const-string p0, "SAT_SET_GPS_INFO"

    return-object p0

    .line 377
    :pswitch_17
    const-string p0, "SAT_SET_POWER"

    return-object p0

    .line 375
    :pswitch_18
    const-string p0, "SAT_SET_SIGNAL_THRESHOLD_REPORTING"

    return-object p0

    .line 373
    :pswitch_19
    const-string p0, "SAT_SET_SIGNAL_STRENGTH_REPORTING"

    return-object p0

    .line 371
    :pswitch_1a
    const-string p0, "SAT_SET_NETWORK_QUERY_MODE"

    return-object p0

    .line 369
    :pswitch_1b
    const-string p0, "SAT_GET_SIGNAL_STRENGTH"

    return-object p0

    .line 367
    :pswitch_1c
    const-string p0, "SAT_GET_REGISTRATION_STATE"

    return-object p0

    .line 365
    :pswitch_1d
    const-string p0, "SAT_STOP_DTMF"

    return-object p0

    .line 363
    :pswitch_1e
    const-string p0, "SAT_START_DTMF"

    return-object p0

    .line 361
    :pswitch_1f
    const-string p0, "SAT_GET_CALL_STATE"

    return-object p0

    .line 359
    :pswitch_20
    const-string p0, "SAT_GET_CALL_END_REASON"

    return-object p0

    .line 357
    :pswitch_21
    const-string p0, "SAT_HANGUP"

    return-object p0

    .line 355
    :pswitch_22
    const-string p0, "SAT_DIAL"

    return-object p0

    .line 353
    :pswitch_23
    const-string p0, "SAT_ANSWER"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized blacklist resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    monitor-enter p0

    .line 195
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLoge(Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->clear()V

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteBaseCommands;->setRadioState(IZ)V

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    const/4 p1, 0x0

    .line 205
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->clearRequestList(IZ)V

    const/4 p1, 0x0

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static greylist responseToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 455
    const-string p0, ""

    return-object p0

    .line 453
    :pswitch_0
    const-string p0, "UNSOL_OEM_SAT_IOT_REGISTRATION_STATE_CHANGED"

    return-object p0

    .line 447
    :pswitch_1
    const-string p0, "RIL_UNSOL_OEM_SAT_NEW_SMS_STATUS_REPORT"

    return-object p0

    .line 451
    :pswitch_2
    const-string p0, "UNSOL_SAT_SIM_AUTH_FAILED"

    return-object p0

    .line 445
    :pswitch_3
    const-string p0, "RIL_UNSOL_OEM_SAT_NEW_SMS"

    return-object p0

    .line 449
    :pswitch_4
    const-string p0, "UNSOL_SAT_REQUEST_ICC_SIM_AUTH"

    return-object p0

    .line 443
    :pswitch_5
    const-string p0, "UNSOL_SAT_RADIO_STATE_CHANGED"

    return-object p0

    .line 441
    :pswitch_6
    const-string p0, "UNSOL_SAT_REQUEST_GPS_DATA"

    return-object p0

    .line 439
    :pswitch_7
    const-string p0, "UNSOL_SAT_SIGNAL_STRENGTH_CHANGED"

    return-object p0

    .line 437
    :pswitch_8
    const-string p0, "UNSOL_SAT_REGISTRATION_STATE_CHANGED"

    return-object p0

    .line 435
    :pswitch_9
    const-string p0, "UNSOL_SAT_CALL_NUMBER_DISPLAY_INFO_UPDATED"

    return-object p0

    .line 433
    :pswitch_a
    const-string p0, "UNSOL_SAT_CALL_END_REASON_UPDATED"

    return-object p0

    .line 431
    :pswitch_b
    const-string p0, "UNSOL_SAT_CALL_STATE_CHANGED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2b56
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static greylist retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    .line 1145
    const-string p0, ""

    return-object p0

    .line 1150
    :cond_0
    instance-of p0, p1, [I

    const-string v0, "}"

    const-string v1, ", "

    const/4 v2, 0x0

    const-string v3, "{"

    const/4 v4, 0x1

    if-eqz p0, :cond_2

    .line 1151
    check-cast p1, [I

    .line 1152
    array-length p0, p1

    .line 1153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p0, :cond_1

    .line 1156
    aget v2, p1, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v4, p0, :cond_1

    .line 1159
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    aget v3, p1, v4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_0

    .line 1162
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1164
    :cond_2
    instance-of p0, p1, [Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 1165
    check-cast p1, [Ljava/lang/String;

    .line 1166
    array-length p0, p1

    .line 1167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p0, :cond_3

    .line 1170
    aget-object v2, p1, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v4, p0, :cond_3

    .line 1172
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    aget-object v3, p1, v4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    .line 1175
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1178
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendAck()V
    .locals 0

    .line 0
    return-void
.end method

.method private blacklist updateSehRadioSatelliteProxy()V
    .locals 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    .line 234
    invoke-static {v0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setAidl(Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;)Lcom/android/internal/telephony/HalVersion;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "SehRadioSatellite is not supported with AIDL."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteRIL;->riljLoge(Ljava/lang/String;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDeathRecipient:Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getAidl()Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    move-result-object v1

    invoke-interface {v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getAidl()Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSatelliteResponse:Lcom/android/internal/telephony/SehSatelliteResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSatelliteIndication:Lcom/android/internal/telephony/SehSatelliteIndication;

    invoke-interface {v0, v1, v2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setResponseFunctions(Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse;Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteIndication;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 247
    :catch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->clear()V

    .line 248
    const-string v0, "SehRadioSatelliteProxy: failed to linkToDeath() or setResponseFunction()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteRIL;->riljLoge(Ljava/lang/String;)V

    .line 252
    :cond_2
    const-string v0, "getSehRadioSatelliteProxy: mSehRadioSatelliteProxy == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteRIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist acceptCall(Landroid/os/Message;)V
    .locals 3

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2744

    .line 487
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 491
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->answer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 493
    const-string v0, "acceptCall"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist cleanupNetworkInfo(Landroid/os/Message;)V
    .locals 3

    .line 1032
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2760

    .line 1035
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 1036
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 1043
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->cleanupNetworkInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1045
    const-string v0, "cleanupNetworkInfo"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 462
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SatelliteRIL;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0

    .line 469
    invoke-virtual {p0, p7}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object p2

    .line 470
    invoke-virtual {p2}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x2745

    .line 472
    iget-object p4, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, p3, p7, p4}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 473
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "> "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p5}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 476
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->dial(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 478
    const-string p2, "dial"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist disableIotMode(Landroid/os/Message;)V
    .locals 3

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2762

    .line 1073
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 1074
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 1081
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->disableIotMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1083
    const-string v0, "disableIotMode"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist enableIotMode(Landroid/os/Message;)V
    .locals 3

    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2761

    .line 1054
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 1055
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 1062
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->enableIotMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1064
    const-string v0, "enableIotMode"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getArfcn(Landroid/os/Message;)V
    .locals 3

    .line 935
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2756

    .line 938
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 939
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 946
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getArfcn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 948
    const-string v0, "getArfcn"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getCurrentCalls(Landroid/os/Message;)V
    .locals 3

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2748

    .line 568
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 572
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getCallState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 574
    const-string v0, "getCurrentCalls"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getIotMode(Landroid/os/Message;)V
    .locals 3

    .line 1089
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 1090
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2763

    .line 1092
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 1093
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 1100
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getIotMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1102
    const-string v0, "getIotMode"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getIotRegistrationState(Landroid/os/Message;)V
    .locals 3

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2764

    .line 1111
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 1112
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 1119
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getIotRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1121
    const-string v0, "getIotRegistrationState"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getLastCallFailCause(Landroid/os/Message;)V
    .locals 3

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2747

    .line 553
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 557
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getCallEndReason(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 559
    const-string v0, "getLastCallFailCause"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getSatelliteId(Landroid/os/Message;)V
    .locals 3

    .line 840
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x275a

    .line 843
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 848
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getSatelliteId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 850
    const-string v0, "getSatelliteId"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized blacklist getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;
    .locals 2

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 215
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteRIL;->updateSehRadioSatelliteProxy()V

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 219
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    const/4 v1, 0x0

    .line 218
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 220
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL;->mSehRadioSatelliteProxy:Lcom/android/internal/telephony/SehRadioSatelliteProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public blacklist getSerialNumber(Landroid/os/Message;)V
    .locals 3

    .line 916
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 917
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2755

    .line 919
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 920
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 927
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getSerialNumber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 929
    const-string v0, "getSerialNumber"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getSignalStrength(Landroid/os/Message;)V
    .locals 3

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x274c

    .line 632
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 637
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 639
    const-string v0, "getSignalStrength"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getTxPower(Landroid/os/Message;)V
    .locals 3

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2757

    .line 957
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 958
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 965
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getTxPower(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 967
    const-string v0, "getTxPower"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3

    .line 613
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x274b

    .line 616
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 621
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->getRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 623
    const-string v0, "getVoiceRegistrationState"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist hangupConnection(ILandroid/os/Message;)V
    .locals 3

    .line 499
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2746

    .line 502
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gsmIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 509
    :try_start_0
    iget p1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->hangup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 511
    const-string p2, "hangupConnection"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2746

    .line 520
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : hangupWaitingOrBackground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 527
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->hangup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 529
    const-string v0, "hangupWaitingOrBackground"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist processIndication(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteRIL;->sendAck()V

    .line 292
    const-string p1, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 4

    .line 303
    iget v0, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->serial:I

    .line 304
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    .line 305
    iget p1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->type:I

    if-eqz p1, :cond_0

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLoge(Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SatelliteRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    if-nez p1, :cond_1

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResponse: Unexpected response! serial: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V
    .locals 3

    .line 330
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1, p3}, Lcom/android/internal/telephony/SatelliteRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 338
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 340
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist rejectCall(Landroid/os/Message;)V
    .locals 3

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2746

    .line 538
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : rejectCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 542
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->hangup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 544
    const-string v0, "rejectCall"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method greylist riljLog(Ljava/lang/String;)V
    .locals 0

    .line 1185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [SATPHONE]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SATELLITE_RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLoge(Ljava/lang/String;)V
    .locals 0

    .line 1189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [SATPHONE]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SATELLITE_RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLogv(Ljava/lang/String;)V
    .locals 0

    .line 1193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [SATPHONE]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SATELLITE_RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendIccSimAuthentication(Landroid/telephony/satellite/SemSatSimAuthResultData;Landroid/os/Message;)V
    .locals 3

    .line 876
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2753

    .line 879
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 880
    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", authResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 888
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->sendIccSimAuthentication(ILandroid/telephony/satellite/SemSatSimAuthResultData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 890
    const-string p2, "sendIccSimAuthentication"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist sendLocationData(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 822
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2766

    .line 825
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 831
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->sendLocationData(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 833
    const-string p2, "sendLocationData"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist sendLocationUserPermit(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 804
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2765

    .line 807
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 813
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->sendLocationUserPermit(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 815
    const-string p2, "sendLocationUserPermit"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist sendRawAtCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 993
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x275e

    .line 996
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 997
    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 1005
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->sendRawAtCommand(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1007
    const-string p2, "sendRawAtCommand"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 750
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2758

    .line 753
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 759
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->sendSms(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 761
    const-string p2, "sendSms"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 768
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2759

    .line 771
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 777
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->sendSMSExpectMore(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 779
    const-string p2, "sendSMSExpectMore"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setCombinedConfigMode(ILandroid/os/Message;)V
    .locals 3

    .line 1127
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 1128
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2767

    .line 1130
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1133
    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1132
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 1137
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setCombinedConfigMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1139
    const-string p2, "setCombinedConfigMode"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setDsiConfig(ZILandroid/os/Message;)V
    .locals 3

    .line 973
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 974
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x275c

    .line 976
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 977
    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dsi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 985
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setDsiConfig(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 987
    const-string p2, "setDsiConfig"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setGpsInfo(IILandroid/os/Message;)V
    .locals 3

    .line 729
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2751

    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 733
    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 742
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setGpsInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 744
    const-string p2, "setGpsInfo"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setImei(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 896
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 897
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2754

    .line 899
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 900
    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imei: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 903
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 908
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setImei(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 910
    const-string p2, "setImei"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setImsi(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 856
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2752

    .line 859
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 860
    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imsi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 868
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setImsi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 870
    const-string p2, "setImsi"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setNetworkQueryMode(ILandroid/os/Message;)V
    .locals 3

    .line 645
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x274d

    .line 648
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 656
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setNetworkQueryMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 658
    const-string p2, "setNetworkQueryMode"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setRadioPower(ZZZLandroid/os/Message;)V
    .locals 3

    .line 705
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x2750

    .line 708
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 709
    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 715
    const-string v2, "ON"

    goto :goto_0

    :cond_1
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", forEmergencyCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", preferredForEmergencyCall: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 714
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 721
    :try_start_0
    iget p2, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setPower(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 723
    const-string p2, "setRadioPower"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public blacklist setSignalStrengthReport(ZLandroid/os/Message;)V
    .locals 3

    .line 664
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x274e

    .line 667
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 668
    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 676
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setSignalStrengthReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 678
    const-string p2, "setSignalStrengthReport"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setSignalThresholdReport(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 684
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x274f

    .line 687
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 688
    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 696
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setSignalThresholdReport(IILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 698
    const-string p2, "setSignalThresholdReport"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 786
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x275d

    .line 789
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 795
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->setSmscAddress(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 797
    const-string p2, "setSmscAddress"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist startDtmf(CLandroid/os/Message;)V
    .locals 3

    .line 580
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2749

    .line 583
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 584
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 589
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->startDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 591
    const-string p2, "startDtmf"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist startNetworkSearch(Landroid/os/Message;)V
    .locals 3

    .line 1013
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x275f

    .line 1016
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 1017
    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 1024
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->startNetworkSearch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1026
    const-string v0, "startNetworkSearch"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist stopDtmf(Landroid/os/Message;)V
    .locals 3

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->getSehRadioSatelliteProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteProxy;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x274a

    .line 600
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 605
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->stopDtmf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 607
    const-string v0, "stopDtmf"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method greylist unsljLog(I)V
    .locals 2

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteRIL;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogMore(ILjava/lang/String;)V
    .locals 2

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteRIL;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1212
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogvRet(ILjava/lang/Object;)V
    .locals 2

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1218
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLogv(Ljava/lang/String;)V

    return-void
.end method
