.class public Lcom/android/internal/telephony/SatelliteServiceRIL;
.super Lcom/android/internal/telephony/SatelliteServiceBaseCommands;
.source "SatelliteServiceRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;,
        Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioSatelliteServiceBinderServiceDeathRecipient;,
        Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field static final blacklist AIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final blacklist RILJ_LOGD:Z = true

.field public static final blacklist RILJ_LOGV:Z = false

.field public static final blacklist SEH_SATELLITE_SERVICE_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEH_SATELLITE_SERVICE_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SHIP_BUILD:Z

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mDeathRecipient:Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioSatelliteServiceBinderServiceDeathRecipient;

.field private final blacklist mDefaultWorkSource:Landroid/os/WorkSource;

.field blacklist mPhoneId:I

.field private final greylist mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRilHandler:Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;

.field private blacklist mSatelliteServiceIndication:Lcom/android/internal/telephony/SehSatelliteServiceIndication;

.field private blacklist mSatelliteServiceResponse:Lcom/android/internal/telephony/SehSatelliteServiceResponse;

.field private final blacklist mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

.field private final blacklist mSehRadioSatelliteServiceProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSehRadioSatelliteServiceProxyCookie(Lcom/android/internal/telephony/SatelliteServiceRIL;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/SatelliteServiceRIL;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 66
    const-string v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->SHIP_BUILD:Z

    .line 71
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->SEH_SATELLITE_SERVICE_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->SEH_SATELLITE_SERVICE_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 97
    const-string v0, "slot2"

    const-string v1, "slot3"

    const-string v2, "slot1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->AIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Integer;Landroid/content/Context;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mPhoneId:I

    .line 153
    const-string p1, "SatelliteServiceRIL: Constructor"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 155
    new-instance p1, Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;-><init>(Lcom/android/internal/telephony/SatelliteServiceRIL;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRilHandler:Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;

    .line 156
    new-instance p1, Lcom/android/internal/telephony/SehSatelliteServiceResponse;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;-><init>(Lcom/android/internal/telephony/SatelliteServiceRIL;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSatelliteServiceResponse:Lcom/android/internal/telephony/SehSatelliteServiceResponse;

    .line 157
    new-instance p1, Lcom/android/internal/telephony/SehSatelliteServiceIndication;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SehSatelliteServiceIndication;-><init>(Lcom/android/internal/telephony/SatelliteServiceRIL;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSatelliteServiceIndication:Lcom/android/internal/telephony/SehSatelliteServiceIndication;

    .line 158
    new-instance p1, Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioSatelliteServiceBinderServiceDeathRecipient;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioSatelliteServiceBinderServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/SatelliteServiceRIL;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDeathRecipient:Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioSatelliteServiceBinderServiceDeathRecipient;

    .line 159
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 160
    new-instance p1, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-direct {p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    .line 161
    new-instance p1, Landroid/os/WorkSource;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 162
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    return-void
.end method

.method private blacklist clearRequestList(IZ)V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestList: mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 196
    iget-object v3, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_1

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    .line 200
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 201
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 204
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

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 280
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 282
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

    .line 267
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 268
    iget-object p2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p2

    .line 269
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p3

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 270
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

    .line 355
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_0
    return-void
.end method

.method static greylist requestToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 488
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

    .line 486
    :pswitch_0
    const-string p0, "OEM_ABORT_SENDING_SATELLITE_DATAGRAMS"

    return-object p0

    .line 484
    :pswitch_1
    const-string p0, "OEM_STOP_SENDING_SATELLITE_POINTING_INFO"

    return-object p0

    .line 482
    :pswitch_2
    const-string p0, "OEM_START_SENDING_SATELLITE_POINTING_INFO"

    return-object p0

    .line 480
    :pswitch_3
    const-string p0, "OEM_ENABLE_TERRESTRIAL_NETWORK_SCAN_WHILE_SATELLITE_MODE_IS_ON"

    return-object p0

    .line 478
    :pswitch_4
    const-string p0, "OEM_NTN_SIGNAL_STRENGTH"

    return-object p0

    .line 476
    :pswitch_5
    const-string p0, "OEM_SATELLITE_MODEM_STATE"

    return-object p0

    .line 474
    :pswitch_6
    const-string p0, "OEM_SEND_SATELLITE_DATAGRAM"

    return-object p0

    .line 472
    :pswitch_7
    const-string p0, "OEM_SATELLITE_CAPABILITIES"

    return-object p0

    .line 470
    :pswitch_8
    const-string p0, "OEM_IS_SATELLITE_SUPPORTED"

    return-object p0

    .line 468
    :pswitch_9
    const-string p0, "OEM_IS_SATELLITE_ENABLED"

    return-object p0

    .line 466
    :pswitch_a
    const-string p0, "OEM_SATELLITE_ENABLED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2768
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

.method private declared-synchronized blacklist resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    .line 208
    :try_start_0
    const-string v0, "SATSVC_RIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->clear()V

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->clearRequestList(IZ)V

    const/4 p1, 0x0

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
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

    .line 513
    const-string p0, ""

    return-object p0

    .line 510
    :pswitch_0
    const-string p0, "UNSOL_OEM_TERRESTRIAL_NETWORK_AVAILABLE_CHANGED"

    return-object p0

    .line 508
    :pswitch_1
    const-string p0, "UNSOL_OEM_SATELLITE_REGISTRATION_FAILURE"

    return-object p0

    .line 506
    :pswitch_2
    const-string p0, "UNSOL_OEM_SATELLITE_SUPPORTED_STATE_CHANGED"

    return-object p0

    .line 504
    :pswitch_3
    const-string p0, "UNSOL_OEM_SATELLITE_CAPABILITIES_CHANGED"

    return-object p0

    .line 502
    :pswitch_4
    const-string p0, "UNSOL_OEM_SATELLITE_ECEF_POSITION_RECEIVED"

    return-object p0

    .line 500
    :pswitch_5
    const-string p0, "UNSOL_OEM_NTN_SIGNAL_STRENGTH_CHANGED"

    return-object p0

    .line 498
    :pswitch_6
    const-string p0, "UNSOL_OEM_SATELLITE_MODEM_STATE_CHANGED"

    return-object p0

    .line 496
    :pswitch_7
    const-string p0, "UNSOL_OEM_SATELLITE_DATAGRAM_RECEIVED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2b62
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
    .locals 9

    if-nez p1, :cond_0

    .line 361
    const-string p0, ""

    return-object p0

    .line 366
    :cond_0
    instance-of p0, p1, [I

    const-string v0, "{"

    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, "}"

    if-eqz p0, :cond_2

    .line 367
    check-cast p1, [I

    .line 368
    array-length p0, p1

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 370
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p0, :cond_1

    .line 373
    aget v0, p1, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_1

    .line 376
    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    aget v0, p1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 381
    :cond_2
    instance-of p0, p1, Landroid/telephony/satellite/stub/NtnSignalStrength;

    if-eqz p0, :cond_3

    .line 382
    check-cast p1, Landroid/telephony/satellite/stub/NtnSignalStrength;

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 384
    const-string v0, "{level:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/telephony/satellite/stub/NtnSignalStrength;->signalStrengthLevel:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 386
    :cond_3
    instance-of p0, p1, Landroid/telephony/satellite/stub/PointingInfo;

    if-eqz p0, :cond_4

    .line 387
    check-cast p1, Landroid/telephony/satellite/stub/PointingInfo;

    .line 388
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 389
    const-string v0, "{satelliteAzimuth:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/telephony/satellite/stub/PointingInfo;->satelliteAzimuth:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 390
    const-string v0, " satelliteElevation:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/telephony/satellite/stub/PointingInfo;->satelliteElevation:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 393
    :cond_4
    instance-of p0, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    const/16 v1, 0x100

    if-eqz p0, :cond_6

    .line 394
    check-cast p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 396
    const-string v0, "{isEnabled:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isDemoMode:"

    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isDemoMode:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isEmergencyMode:"

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEmergencyMode:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 399
    sget-boolean v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->SHIP_BUILD:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    if-eqz v0, :cond_5

    .line 400
    const-string v0, " satelliteSubscriptionInfo:{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "iccId:"

    .line 401
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    iget-object v0, v0, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->iccId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " niddApn:"

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    iget-object p1, p1, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->niddApn:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 407
    :cond_6
    instance-of p0, p1, Landroid/telephony/satellite/stub/SatelliteDatagram;

    const-string v4, "]"

    if-eqz p0, :cond_8

    .line 408
    check-cast p1, Landroid/telephony/satellite/stub/SatelliteDatagram;

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 410
    const-string v0, "{length:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    sget-boolean v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->SHIP_BUILD:Z

    if-nez v0, :cond_7

    .line 412
    const-string v0, " data:["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 416
    :cond_8
    instance-of p0, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    if-eqz p0, :cond_12

    .line 417
    check-cast p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    .line 418
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 419
    const-string v1, "{supportedRadioTech:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v1, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    const-string v5, "null"

    const-string v6, " "

    const-string v7, "["

    if-eqz v1, :cond_b

    .line 421
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 422
    :goto_1
    iget-object v8, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    array-length v8, v8

    if-ge v1, v8, :cond_a

    if-eqz v1, :cond_9

    .line 423
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_9
    iget-object v8, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    aget v8, v8, v1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 426
    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 428
    :cond_b
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :goto_2
    const-string v1, " isPointingRequired:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, " maxBytesPerOutgoingDatagram:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, " antennaPositionKeys:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v1, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    if-eqz v1, :cond_e

    .line 434
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 435
    :goto_3
    iget-object v8, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    array-length v8, v8

    if-ge v1, v8, :cond_d

    if-eqz v1, :cond_c

    .line 436
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_c
    iget-object v8, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    aget v8, v8, v1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 439
    :cond_d
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 441
    :cond_e
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :goto_4
    const-string v1, " antennaPositionValues:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget-object v1, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    if-eqz v1, :cond_11

    .line 445
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :goto_5
    iget-object v1, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    array-length v1, v1

    if-ge v2, v1, :cond_10

    if-eqz v2, :cond_f

    .line 447
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/telephony/satellite/AntennaPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 450
    :cond_10
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 452
    :cond_11
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :goto_6
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 457
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendAck()V
    .locals 0

    .line 0
    return-void
.end method

.method private blacklist updateSehRadioSatelliteServiceProxy()V
    .locals 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/SatelliteServiceRIL;->AIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mPhoneId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    .line 245
    invoke-static {v0}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    move-result-object v0

    .line 244
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->setAidl(Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;)Lcom/android/internal/telephony/HalVersion;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string v0, "SATSVC_RIL"

    const-string v1, "SehRadioSatelliteService is not supported with AIDL."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDeathRecipient:Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioSatelliteServiceBinderServiceDeathRecipient;

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->getAidl()Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    move-result-object v1

    invoke-interface {v1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioSatelliteServiceBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->getAidl()Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSatelliteServiceResponse:Lcom/android/internal/telephony/SehSatelliteServiceResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSatelliteServiceIndication:Lcom/android/internal/telephony/SehSatelliteServiceIndication;

    invoke-interface {v0, v1, v2}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->setResponseFunctions(Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceResponse;Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceIndication;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 258
    :catch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->clear()V

    .line 259
    const-string v0, "SehRadioSatelliteProxy: failed to linkToDeath() or setResponseFunction()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLoge(Ljava/lang/String;)V

    .line 263
    :cond_2
    const-string v0, "updateSehRadioSatelliteServiceProxy: mSehRadioSatelliteProxy == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagrams(Landroid/os/Message;)V
    .locals 3

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2772

    .line 695
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 701
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->abortSendingSatelliteDatagrams(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 703
    const-string v0, "abortSendingSatelliteDatagrams"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/os/Message;)V
    .locals 3

    .line 539
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x276f

    .line 542
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 548
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 550
    const-string p2, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized blacklist getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;
    .locals 2

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 226
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->updateSehRadioSatelliteServiceProxy()V

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 230
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 231
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mSehRadioSatelliteServiceProxy:Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;
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

.method public blacklist processIndication(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->sendAck()V

    .line 303
    const-string p1, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 4

    .line 314
    iget v0, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->serial:I

    .line 315
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    .line 316
    iget p1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->type:I

    if-eqz p1, :cond_0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLoge(Ljava/lang/String;)V

    .line 322
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    if-nez p1, :cond_1

    .line 324
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

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V
    .locals 3

    .line 340
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/internal/telephony/SatelliteServiceRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 348
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 350
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/os/Message;)V
    .locals 3

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2769

    .line 559
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 565
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->requestIsSatelliteEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 567
    const-string v0, "requestIsSatelliteEnabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/os/Message;)V
    .locals 3

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x276a

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 582
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->requestIsSatelliteSupported(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 584
    const-string v0, "requestIsSatelliteSupported"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist requestNtnSignalStrength(Landroid/os/Message;)V
    .locals 3

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x276e

    .line 644
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 650
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->requestNtnSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 652
    const-string v0, "requestNtnSignalStrength"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/os/Message;)V
    .locals 3

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x276b

    .line 593
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 599
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->requestSatelliteCapabilities(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 601
    const-string v0, "requestSatelliteCapabilities"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/os/Message;)V
    .locals 7

    .line 519
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2768

    .line 522
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 528
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result v1

    iget-boolean v2, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    iget-boolean v3, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isDemoMode:Z

    iget-boolean v4, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEmergencyMode:Z

    iget-object p1, p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    iget-object v5, p1, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->iccId:Ljava/lang/String;

    iget-object v6, p1, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->niddApn:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->requestSatelliteEnabled(IZZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 533
    const-string p2, "requestSatelliteEnabled"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist requestSatelliteModemState(Landroid/os/Message;)V
    .locals 3

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x276d

    .line 627
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 633
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->requestSatelliteModemState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 635
    const-string v0, "requestSatelliteModemState"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method greylist riljLog(Ljava/lang/String;)V
    .locals 1

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SATSVC_RIL"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLoge(Ljava/lang/String;)V
    .locals 1

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SATSVC_RIL"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/os/Message;)V
    .locals 3

    .line 607
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x276c

    .line 610
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 616
    :try_start_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p3

    iget-object p1, p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->sendSatelliteDatagram(I[BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 618
    const-string p2, "sendSatelliteDatagram"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist startSendingSatellitePointingInfo(Landroid/os/Message;)V
    .locals 3

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2770

    .line 661
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 667
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->startSendingSatellitePointingInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 669
    const-string v0, "startSendingSatellitePointingInfo"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(Landroid/os/Message;)V
    .locals 3

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->getSehRadioSatelliteServiceProxy(Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2771

    .line 678
    iget-object v2, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 684
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->stopSendingSatellitePointingInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 686
    const-string v0, "stopSendingSatellitePointingInfo"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method greylist unsljLog(I)V
    .locals 2

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 727
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[UNSL]< "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method
