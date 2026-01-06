.class public Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;
.super Ljava/lang/Object;
.source "SemTelephonyHandlerHelper.java"


# static fields
.field public static final blacklist CMD_CFRM_CPAI_FEATURE_INFO:I = 0x6c

.field public static final blacklist CMD_CHANGE_ICC_SIM_PERSO_PASSWORD:I = 0x53

.field public static final blacklist CMD_CHECK_CALL_CONTROL:I = 0x59

.field public static final blacklist CMD_DELETE_GUTI:I = 0x42

.field public static final blacklist CMD_EVT_CPAI_DATA_GATHERING:I = 0x70

.field public static final blacklist CMD_EXEC_CPAI_MODEL_UPDATE:I = 0x68

.field public static final blacklist CMD_GET_ACTIVATION_DATE:I = 0x4d

.field public static final blacklist CMD_GET_CELL_LOCATION:I = 0x4f

.field public static final blacklist CMD_GET_CPAI_FEATURE_INFO:I = 0x6a

.field public static final blacklist CMD_GET_CPAI_MODEL_VERSION:I = 0x66

.field public static final blacklist CMD_GET_DISABLE_2G:I = 0x47

.field public static final blacklist CMD_GET_MOBILE_QUALITY:I = 0x5b

.field public static final blacklist CMD_GET_MODEM_ACTIVITY_INFO:I = 0x5c

.field public static final blacklist CMD_GET_NR_MODE:I = 0x55

.field public static final blacklist CMD_GET_VONR_MODE:I = 0x60

.field public static final blacklist CMD_ICCPCSC_CONNECT:I = 0x38

.field public static final blacklist CMD_ICCPCSC_DISCONNECT:I = 0x3a

.field public static final blacklist CMD_ICCPCSC_POWERUP:I = 0x36

.field public static final blacklist CMD_ICCPCSC_TRANSMIT:I = 0x3c

.field public static final blacklist CMD_INVOKE_OEM_RIL_REQUEST_RAW:I = 0x1b

.field public static final blacklist CMD_SET_CPAI_DATA_GATHERING:I = 0x6e

.field public static final blacklist CMD_SET_CPAI_DEV_APP_MESSAGE:I = 0x72

.field public static final blacklist CMD_SET_DISABLE_2G:I = 0x49

.field public static final blacklist CMD_SET_ICC_SIM_PERSO_ENABLED:I = 0x51

.field public static final blacklist CMD_SET_NR_MODE:I = 0x56

.field public static final blacklist CMD_SET_SIM_ONOFF:I = 0x62

.field public static final blacklist CMD_SET_VONR_MODE:I = 0x5e

.field public static final blacklist CMD_SIM_CHECK:I = 0x64

.field public static final blacklist CMD_SIM_GET_ATR:I = 0x4b

.field public static final blacklist EVENT_GET_NR_MODE_DONE:I = 0x57

.field public static final blacklist EVENT_SET_NR_MODE_DONE:I = 0x58


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field private blacklist mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSemMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$r7J7ZyIdEwqIJLkMhVssDw6b0y4(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->lambda$getCallback$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1232
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1233
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 139
    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    return-void
.end method

.method private blacklist cfrmCpaiFeatureInfo(Landroid/os/Message;)V
    .locals 5

    .line 1559
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_CPAI_CFRM_FEATURE_INFO"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1562
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1563
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1565
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1566
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 1567
    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    .line 1568
    aget-object v1, v1, v4

    check-cast v1, [B

    if-eqz p0, :cond_0

    .line 1571
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v2, v3, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->cfrmCpaiFeatureInfo(II[BLandroid/os/Message;)V

    return-void

    .line 1573
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "cfrmCpaiFeatureInfo: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1575
    monitor-enter p1

    .line 1576
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1577
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist cfrmCpaiFeatureInfoDone(Landroid/os/Message;)V
    .locals 1

    .line 1582
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_CFRM_CPAI_FEATURE_INFO_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1585
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1586
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1587
    monitor-enter p1

    .line 1588
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1589
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist changeIccSimPersoPassword(Landroid/os/Message;)V
    .locals 2

    .line 928
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_CHANGE_ICC_SIM_PERSO_PASSWORD"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 931
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 933
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/telephony/SemIccCardBase;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 937
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist checkCallControl(Landroid/os/Message;)V
    .locals 3

    .line 1117
    const-string v0, "CMD_CHECK_CALL_CONTROL"

    const-string v1, "SemTelephonyHandlerHelper"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1122
    iget-object v2, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1124
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->checkCallControl(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 1128
    const-string p0, "checkCallControl: fail to check call control"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1129
    invoke-static {v0, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1130
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private blacklist connectIccPcsc(Landroid/os/Message;)V
    .locals 2

    .line 729
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_ICCPCSC_CONNECT"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x39

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 733
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 735
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private blacklist deepCopyModemActivitySpecificInfo([Landroid/telephony/ActivityStatsTechSpecificInfo;)[Landroid/telephony/ActivityStatsTechSpecificInfo;
    .locals 8

    .line 1359
    array-length p0, p1

    .line 1360
    new-array v0, p0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1362
    new-instance v2, Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, p1, v1

    .line 1363
    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v4

    aget-object v5, p1, v1

    .line 1364
    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object v5

    aget-object v6, p1, v1

    .line 1365
    invoke-virtual {v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private blacklist deleteGuti(Landroid/os/Message;)V
    .locals 5

    .line 596
    const-string v0, "CMD_DELETE_GUTI"

    const-string v1, "SemTelephonyHandlerHelper"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 600
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 601
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 604
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x68

    .line 605
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 606
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    const-string v3, "IOException in open channel"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    const-string v3, "DELETE_GUTI-TEST"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x43

    .line 612
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 611
    invoke-virtual {v3, v0, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 615
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CMD_DELETE_GUTI : close fail - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private blacklist disconnectIccPcsc(Landroid/os/Message;)V
    .locals 2

    .line 692
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_ICCPCSC_DISCONNECT"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 695
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 697
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private blacklist evtCpaiDataGathering(Landroid/os/Message;)V
    .locals 4

    .line 1628
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_EVT_CPAI_DATA_GATHERING"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1632
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1634
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1635
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 1636
    aget-object v1, v1, v3

    check-cast v1, [B

    if-eqz p0, :cond_0

    .line 1639
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v2, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->evtCpaiDataGathering(I[BLandroid/os/Message;)V

    return-void

    .line 1641
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "evtCpaiDataGathering: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1643
    monitor-enter p1

    .line 1644
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1645
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist evtCpaiDataGatheringDone(Landroid/os/Message;)V
    .locals 1

    .line 1650
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_EVT_CPAI_DATA_GATHERING_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1653
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1654
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1655
    monitor-enter p1

    .line 1656
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1657
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist execCpaiModelUpdate(Landroid/os/Message;)V
    .locals 2

    .line 1497
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_EXEC_CPAI_MODEL_UPDATE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1501
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1503
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p0, :cond_0

    .line 1506
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->execCpaiModelUpdate(ILandroid/os/Message;)V

    return-void

    .line 1508
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "execCpaiModelUpdate: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1510
    monitor-enter p1

    .line 1511
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1512
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist execCpaiModelUpdateDone(Landroid/os/Message;)V
    .locals 1

    .line 1517
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_EXEC_CPAI_MODEL_UPDATE_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1520
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1521
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1522
    monitor-enter p1

    .line 1523
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1524
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getActivationDate(Landroid/os/Message;)V
    .locals 5

    .line 795
    const-string v0, "CMD_GET_ACTIVATION_DATE"

    const-string v1, "SemTelephonyHandlerHelper"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 799
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 800
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    .line 803
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xd

    .line 804
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    .line 805
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 806
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 808
    const-string v4, "writeByte failed"

    invoke-static {v1, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 814
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 816
    const-string p1, "close failed"

    invoke-static {v1, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private blacklist getAtr(Landroid/os/Message;)V
    .locals 2

    .line 495
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SIM_GET_ATR"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 497
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getUiccProfileFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 500
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getAtr: No UICC"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string p0, ""

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 502
    monitor-enter p1

    .line 503
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 506
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x4c

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 507
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getAtr(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getCellLocation(Landroid/os/Message;)V
    .locals 2

    .line 884
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_CELL_LOCATION"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 887
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Landroid/os/WorkSource;

    .line 889
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 891
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/Phone;->getCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void

    .line 893
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist getCpaiFeatureInfo(Landroid/os/Message;)V
    .locals 2

    .line 1528
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_CPAI_GET_FEATURE_INFO"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1532
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1534
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p0, :cond_0

    .line 1537
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->getCpaiFeatureInfo(ILandroid/os/Message;)V

    return-void

    .line 1539
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getCpaiFeatureInfo: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1541
    monitor-enter p1

    .line 1542
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1543
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getCpaiFeatureInfoDone(Landroid/os/Message;)V
    .locals 1

    .line 1548
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_GET_CPAI_FEATURE_INFO_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1551
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1552
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1553
    monitor-enter p1

    .line 1554
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1555
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getCpaiModelVersion(Landroid/os/Message;)V
    .locals 2

    .line 1468
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_CPAI_GET_MODEL_VERSION"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1472
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1475
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->getCpaiModelVersion(Landroid/os/Message;)V

    return-void

    .line 1477
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getCpaiModelVersion: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1479
    monitor-enter p1

    .line 1480
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1481
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getCpaiModelVersionDone(Landroid/os/Message;)V
    .locals 1

    .line 1486
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_GET_CPAI_MODEL_VERSION_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1489
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1490
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1491
    monitor-enter p1

    .line 1492
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1493
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 413
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getDefaultSubscription()I
    .locals 0

    .line 408
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result p0

    return p0
.end method

.method private blacklist getDisable2G(Landroid/os/Message;)V
    .locals 2

    .line 466
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_DISABLE_2G"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 469
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->getDisable2g(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getMobileQuality(Landroid/os/Message;)V
    .locals 6

    .line 1201
    const-string v0, "getMobileQuality - close failed. "

    const-string v1, "SemTelephonyHandlerHelper"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1202
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x2

    .line 1205
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, -0x7b

    .line 1206
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x0

    .line 1207
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    .line 1208
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1210
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1211
    iget-object v4, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1212
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1213
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1216
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    .line 1219
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1225
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 1227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1221
    :goto_2
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileQuality - writeByte failed. "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1224
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1225
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 1227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_3
    return-void

    .line 1224
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1225
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_5
    throw p0
.end method

.method private blacklist getModemActivityInfo(Landroid/os/Message;)V
    .locals 7

    .line 1236
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1238
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1240
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void

    .line 1242
    :cond_0
    iget-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p0, Landroid/os/ResultReceiver;

    .line 1243
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1244
    new-instance v0, Landroid/telephony/ModemActivityInfo;

    .line 1245
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    new-array v5, v1, [I

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    .line 1244
    const-string v1, "controller_activity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 1246
    invoke-virtual {p0, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private blacklist getNrMode(Landroid/os/Message;)V
    .locals 2

    .line 958
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_NR_MODE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 962
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 964
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->getNrDisableMode(Landroid/os/Message;)V

    return-void

    .line 966
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getNrMode: getPhone is null or not support NR"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 967
    filled-new-array {p0}, [I

    move-result-object p0

    .line 968
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 969
    monitor-enter p1

    .line 970
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 971
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 400
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 401
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 404
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;
    .locals 2

    .line 780
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 781
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0

    .line 782
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->phoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 783
    iget-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->phoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0

    .line 785
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method private blacklist getUiccProfileFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 0

    .line 789
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 791
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getVoNrMode(Landroid/os/Message;)V
    .locals 3

    .line 1100
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_VONR_MODE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1104
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x61

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/Phone;->isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void

    .line 1108
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getVoNrMode: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    new-instance p0, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, v1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1110
    monitor-enter p1

    .line 1111
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1112
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist invokeOemRilRequestRaw(Landroid/os/Message;)V
    .locals 3

    .line 1176
    const-string v0, "CMD_INVOKE_OEM_RIL_REQUEST_RAW"

    const-string v1, "SemTelephonyHandlerHelper"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1180
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1182
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    .line 1184
    :cond_0
    const-string p0, "invokeOemRilRequestRaw: getPhone is null"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist isModemActivityInfoValid(Landroid/telephony/ModemActivityInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1257
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p0, v1

    add-int/lit8 p0, p0, 0x32

    .line 1260
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1261
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v1

    int-to-long v3, p0

    cmp-long p0, v1, v3

    if-gtz p0, :cond_1

    .line 1262
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide p0

    cmp-long p0, p0, v3

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private synthetic blacklist lambda$getCallback$0(Landroid/os/Message;)Z
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage - message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephonyHandlerHelper"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_2

    const/16 v2, 0x42

    if-eq v0, v2, :cond_1

    const/16 v2, 0x43

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemMainThreadHandler - Unexpected message code: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setCpaiDevAppMessageDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 383
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setCpaiDevAppMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 379
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->evtCpaiDataGatheringDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 375
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->evtCpaiDataGathering(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 371
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setCpaiDataGatheringDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 367
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setCpaiDataGathering(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 363
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->cfrmCpaiFeatureInfoDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 359
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->cfrmCpaiFeatureInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 355
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getCpaiFeatureInfoDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 351
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getCpaiFeatureInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 347
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->execCpaiModelUpdateDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 343
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->execCpaiModelUpdate(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 339
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getCpaiModelVersionDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 335
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getCpaiModelVersion(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 331
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSimCheck(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 327
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->simCheck(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 323
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetSimOnOffDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 319
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setSimOnOff(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 307
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetVoNrModeDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 303
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getVoNrMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 299
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetVoNrModeDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 295
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setVoNrMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 315
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetModemActivityInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 311
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getModemActivityInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 291
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getMobileQuality(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 287
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onCheckCallControlDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 283
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->checkCallControl(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 279
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetNrModeDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 275
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetNrModeDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 271
    :pswitch_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setNrMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 267
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getNrMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 263
    :pswitch_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onChangeIccSimPersoPassword(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 259
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->changeIccSimPersoPassword(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 255
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetIccSimPersoEnabled(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 251
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setIccSimPersoEnabled(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 247
    :pswitch_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetCellLocationDone(Landroid/os/Message;)V

    goto :goto_0

    .line 243
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getCellLocation(Landroid/os/Message;)V

    goto :goto_0

    .line 239
    :pswitch_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetActivationDateDone(Landroid/os/Message;)V

    goto :goto_0

    .line 235
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getActivationDate(Landroid/os/Message;)V

    goto :goto_0

    .line 215
    :pswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetAtrDone(Landroid/os/Message;)V

    goto :goto_0

    .line 211
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getAtr(Landroid/os/Message;)V

    goto :goto_0

    .line 231
    :pswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetDisable2GDone(Landroid/os/Message;)V

    goto :goto_0

    .line 227
    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setDisable2G(Landroid/os/Message;)V

    goto :goto_0

    .line 223
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetDisable2GDone(Landroid/os/Message;)V

    goto :goto_0

    .line 219
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getDisable2G(Landroid/os/Message;)V

    goto :goto_0

    .line 199
    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onTransmitIccPcscDone(Landroid/os/Message;)V

    goto :goto_0

    .line 195
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->transmitIccPcsc(Landroid/os/Message;)V

    goto :goto_0

    .line 191
    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onDisconnectIccPcscDone(Landroid/os/Message;)V

    goto :goto_0

    .line 187
    :pswitch_30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->disconnectIccPcsc(Landroid/os/Message;)V

    goto :goto_0

    .line 183
    :pswitch_31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onConnectIccPcscDone(Landroid/os/Message;)V

    goto :goto_0

    .line 179
    :pswitch_32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->connectIccPcsc(Landroid/os/Message;)V

    goto :goto_0

    .line 175
    :pswitch_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onPowerUpIccPcscDone(Landroid/os/Message;)V

    goto :goto_0

    .line 171
    :pswitch_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->powerUpIccPcsc(Landroid/os/Message;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onDeleteGutiDone(Landroid/os/Message;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->deleteGuti(Landroid/os/Message;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onInvokeOemRilRequestRawDone(Landroid/os/Message;)V

    goto :goto_0

    .line 163
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->invokeOemRilRequestRaw(Landroid/os/Message;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist mergeModemActivityInfo(Landroid/telephony/ModemActivityInfo;)V
    .locals 11

    .line 1301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1304
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1306
    invoke-virtual {p1, v2}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoRat(I)I

    move-result v3

    .line 1307
    invoke-virtual {p1, v2}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoFrequencyRange(I)I

    move-result v4

    move v5, v1

    move v6, v5

    .line 1311
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v7, v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_2

    .line 1312
    iget-object v7, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v7, v5}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoRat(I)I

    move-result v7

    if-ne v3, v7, :cond_1

    if-nez v6, :cond_1

    const/4 v7, 0x6

    if-ne v3, v7, :cond_0

    .line 1315
    iget-object v7, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v7, v5}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoFrequencyRange(I)I

    move-result v7

    if-ne v4, v7, :cond_1

    .line 1316
    invoke-direct {p0, p1, v3, v4}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->updateLastModemActivityInfo(Landroid/telephony/ModemActivityInfo;II)V

    :goto_2
    move v6, v8

    goto :goto_3

    .line 1320
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->updateLastModemActivityInfo(Landroid/telephony/ModemActivityInfo;I)V

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    .line 1327
    new-instance v5, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1331
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v6

    .line 1332
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v9

    long-to-int v7, v9

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    .line 1333
    new-array v3, v8, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    aput-object v5, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1336
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1339
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ModemActivityInfo;->setTimestamp(J)V

    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1343
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1344
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1342
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ModemActivityInfo;->setSleepTimeMillis(J)V

    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1346
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1347
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1345
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ModemActivityInfo;->setIdleTimeMillis(J)V

    .line 1349
    new-instance v3, Landroid/telephony/ModemActivityInfo;

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1351
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1352
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v6

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1353
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-direct/range {v3 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    iput-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    return-void
.end method

.method private blacklist onChangeIccSimPersoPassword(Landroid/os/Message;)V
    .locals 1

    .line 942
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onChangeIccSimPersoPassword"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 945
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 947
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    .line 948
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 950
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 952
    :goto_0
    monitor-enter p1

    .line 953
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 954
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onCheckCallControlDone(Landroid/os/Message;)V
    .locals 4

    .line 1135
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_CHECK_CALL_CONTROL_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1138
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1139
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1141
    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_8

    .line 1142
    check-cast p0, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1143
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 1144
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_0

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x91

    if-ne v2, p0, :cond_7

    :cond_1
    if-eqz v1, :cond_6

    .line 1145
    array-length p0, v1

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    aget-byte p0, v1, p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne p0, v2, :cond_3

    .line 1149
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onCheckCallControlDone, not allowed"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string p0, "NotAllowed"

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-ne p0, v2, :cond_5

    const/4 p0, 0x3

    .line 1152
    aget-byte p0, v1, p0

    const/4 v0, 0x4

    invoke-static {v1, v0, p0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object p0

    .line 1153
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckCallControlDone, allowed with modification, modifiedNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_4

    move-object v2, p0

    goto :goto_0

    :cond_4
    const-string v2, "xxxx"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    .line 1157
    :cond_5
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v1, "onCheckCallControlDone, undefined result"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    .line 1146
    :cond_6
    :goto_1
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v1, "onCheckCallControlDone, allowed with no modification"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    .line 1161
    :cond_7
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v1, "onCheckCallControlDone, error status word "

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    .line 1166
    :cond_8
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v1, "onCheckCallControlDone, failed to check call control"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1170
    :goto_2
    monitor-enter p1

    .line 1171
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1172
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onConnectIccPcscDone(Landroid/os/Message;)V
    .locals 4

    .line 702
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_ICCPCSC_CONNECT_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 704
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 707
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 708
    check-cast v0, [B

    .line 710
    array-length p0, v0

    if-lez p0, :cond_0

    .line 711
    array-length p0, v0

    new-array p0, p0, [B

    .line 712
    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT response :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 716
    :cond_1
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in EVENT_ICCPCSC_CONNECT_DONE with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 717
    new-array p0, p0, [B

    const/16 v0, 0x6f

    .line 718
    aput-byte v0, p0, v1

    .line 721
    :goto_0
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 723
    monitor-enter p1

    .line 724
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 725
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onDeleteGutiDone(Landroid/os/Message;)V
    .locals 3

    .line 581
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 582
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 584
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_DELETE_GUTI_DONE response came, ar.exception and ar.result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    .line 586
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 588
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 590
    :goto_0
    monitor-enter p1

    .line 591
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 592
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onDisconnectIccPcscDone(Landroid/os/Message;)V
    .locals 4

    .line 663
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_ICCPCSC_DISCONNECT_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 665
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 669
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 670
    check-cast v0, [B

    .line 672
    array-length p0, v0

    if-lez p0, :cond_0

    .line 673
    array-length p0, v0

    new-array p0, p0, [B

    .line 674
    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISCONNECT response :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 679
    :cond_1
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in EVENT_ICCPCSC_DISCONNECT_DONE with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 680
    new-array p0, p0, [B

    const/16 v0, 0x6f

    .line 681
    aput-byte v0, p0, v1

    .line 684
    :goto_0
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 686
    monitor-enter p1

    .line 687
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 688
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onGetActivationDateDone(Landroid/os/Message;)V
    .locals 12

    const/4 p0, 0x2

    const/4 v0, 0x1

    .line 821
    const-string v1, "SemTelephonyHandlerHelper"

    const-string v2, "onGetActivationDateDone"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 823
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 826
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    .line 846
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v2, :cond_1

    .line 826
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 827
    check-cast v2, [B

    .line 830
    aget-byte p1, v2, v0

    .line 831
    aget-byte v4, v2, v3

    new-array v5, p0, [B

    aput-byte p1, v5, v3

    aput-byte v4, v5, v0

    move p1, v3

    :goto_0
    if-ge v3, p0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    .line 834
    aget-byte v4, v5, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr p1, v4

    add-int/2addr v3, v0

    goto :goto_0

    .line 838
    :cond_0
    aget-byte p0, v2, p0

    const/4 v0, 0x3

    .line 839
    aget-byte v0, v2, v0

    const/4 v3, 0x4

    .line 840
    aget-byte v3, v2, v3

    const/4 v4, 0x5

    .line 841
    aget-byte v4, v2, v4

    const/4 v5, 0x6

    .line 842
    aget-byte v2, v2, v5

    .line 843
    const-string v5, "%04d-%02d-%02d %02d:%02d:%02d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 845
    :cond_1
    const-string p0, "SemTelephonyHandlerHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in EVENT_GET_ACTIVATION_DATE_DONE with exception"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string p0, "%04d-%02d-%02d %02d:%02d:%02d"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 848
    :goto_1
    iput-object p0, v1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 849
    monitor-enter v1

    .line 850
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 851
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onGetAtrDone(Landroid/os/Message;)V
    .locals 3

    .line 473
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SIM_GET_ATR_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 475
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 476
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 477
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 479
    :cond_0
    const-string v1, ""

    iput-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 481
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getAtr: Empty Response"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :cond_1
    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    .line 483
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAtr: CommandException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :cond_2
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getAtr: Unknown exception"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_0
    monitor-enter p1

    .line 490
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 491
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onGetCellLocationDone(Landroid/os/Message;)V
    .locals 4

    .line 855
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "onGetCellLocationDone"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 858
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 860
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 861
    iput-object v1, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_3

    .line 863
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 864
    const-string p1, "SemTelephonyHandlerHelper"

    const-string v1, "onGetCellLocationDone is fail. Empty response"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    :cond_1
    const-string v1, "SemTelephonyHandlerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetCellLocationDone is fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 871
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    goto :goto_1

    .line 873
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mContext:Landroid/content/Context;

    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    iget-object p1, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result p0

    :goto_1
    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    .line 876
    new-instance p0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {p0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    goto :goto_2

    :cond_3
    new-instance p0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {p0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    :goto_2
    iput-object p0, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 878
    :goto_3
    monitor-enter v0

    .line 879
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 880
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onGetDisable2GDone(Landroid/os/Message;)V
    .locals 3

    .line 444
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_GET_DISABLE_2G_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 447
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 449
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 450
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 452
    filled-new-array {v0}, [I

    move-result-object v0

    .line 453
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 455
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "disable2g is fail. Empty response"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_1
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable2g is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    monitor-enter p1

    .line 461
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 462
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onGetModemActivityInfo(Landroid/os/Message;)V
    .locals 12

    .line 1371
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1372
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1373
    iget-object v0, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Landroid/os/ResultReceiver;

    .line 1378
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1379
    new-array v1, v1, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1380
    new-instance v3, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1384
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v4

    new-array v4, v4, [I

    invoke-direct {v3, v2, v2, v4, v2}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v3, v1, v2

    .line 1386
    new-instance v5, Landroid/telephony/ModemActivityInfo;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    iput-object v5, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1390
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1392
    check-cast v3, Landroid/telephony/ModemActivityInfo;

    .line 1393
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->isModemActivityInfoValid(Landroid/telephony/ModemActivityInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1394
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mergeModemActivityInfo(Landroid/telephony/ModemActivityInfo;)V

    .line 1399
    :cond_1
    new-instance v4, Landroid/telephony/ModemActivityInfo;

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1400
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v5

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1401
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v7

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1402
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v9

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1403
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->deepCopyModemActivitySpecificInfo([Landroid/telephony/ActivityStatsTechSpecificInfo;)[Landroid/telephony/ActivityStatsTechSpecificInfo;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Landroid/telephony/ModemActivityInfo;-><init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    :goto_0
    move p0, v2

    goto :goto_1

    .line 1405
    :cond_2
    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const-string p1, "SemTelephonyHandlerHelper"

    const/4 v4, 0x0

    if-nez p0, :cond_3

    .line 1406
    const-string p0, " Empty response "

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    goto :goto_1

    .line 1409
    :cond_3
    instance-of p0, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz p0, :cond_4

    .line 1410
    const-string p0, " CommandException "

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    goto :goto_1

    .line 1414
    :cond_4
    const-string p0, " Unknown exception "

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1420
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz v4, :cond_5

    .line 1422
    const-string p0, "controller_activity"

    invoke-virtual {p1, p0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 1426
    :cond_5
    const-string v1, "exception"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1428
    :goto_2
    invoke-virtual {v0, v2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private blacklist onGetNrModeDone(Landroid/os/Message;)V
    .locals 3

    .line 976
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_GET_NR_MODE_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 979
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 981
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 982
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 984
    filled-new-array {v0}, [I

    move-result-object v0

    .line 985
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 986
    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 987
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getNrMode is fail. Empty response"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 989
    :cond_1
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNrMode is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_0
    monitor-enter p1

    .line 993
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 994
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onGetVoNrModeDone(Landroid/os/Message;)V
    .locals 3

    .line 1075
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_GET_VONR_MODE_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1078
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1080
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    .line 1084
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_1

    .line 1080
    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1081
    instance-of p0, v0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 1082
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1084
    :cond_0
    iput-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1087
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1088
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    .line 1089
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVoNrModeDone: CommandException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
    :cond_2
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onGetVoNrModeDone: Unknown exception"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_0
    monitor-enter p1

    .line 1095
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1096
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onInvokeOemRilRequestRawDone(Landroid/os/Message;)V
    .locals 1

    .line 1190
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_INVOKE_OEM_RIL_REQUEST_RAW_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1193
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1194
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1195
    monitor-enter p1

    .line 1196
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1197
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onPowerUpIccPcscDone(Landroid/os/Message;)V
    .locals 4

    .line 740
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_ICCPCSC_POWERUP_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 744
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 746
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 747
    check-cast v0, [B

    .line 749
    const-string p0, "SemTelephonyHandlerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATR Length :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    array-length p0, v0

    if-lez p0, :cond_0

    .line 751
    array-length p0, v0

    new-array p0, p0, [B

    .line 752
    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATR info :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 757
    :cond_1
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in EVENT_ICCPCSC_POWERUP_DONE with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 758
    new-array p0, p0, [B

    const/16 v0, 0x6f

    .line 759
    aput-byte v0, p0, v1

    .line 762
    :goto_0
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 764
    monitor-enter p1

    .line 765
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 766
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onSetDisable2GDone(Landroid/os/Message;)V
    .locals 3

    .line 417
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SET_DISABLE_2G_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 420
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 422
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 423
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 425
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 426
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisable2g is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    monitor-enter p1

    .line 429
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 430
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onSetIccSimPersoEnabled(Landroid/os/Message;)V
    .locals 1

    .line 912
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onSetIccSimPersoEnabled"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 915
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 917
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    .line 918
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 920
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 922
    :goto_0
    monitor-enter p1

    .line 923
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 924
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onSetNrModeDone(Landroid/os/Message;)V
    .locals 3

    .line 1019
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SET_NR_MODE_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1022
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1024
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1025
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1027
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1028
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrMode is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    monitor-enter p1

    .line 1031
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1032
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onSetSimOnOffDone(Landroid/os/Message;)V
    .locals 3

    .line 1452
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1453
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1455
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1456
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1458
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1459
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimOnOff is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :goto_0
    monitor-enter p1

    .line 1463
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1464
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onSetVoNrModeDone(Landroid/os/Message;)V
    .locals 3

    .line 1036
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SET_VONR_MODE_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1039
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1041
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1042
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1044
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1045
    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 1046
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoNrMode: CommandException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    :cond_1
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setVoNrMode: Unknown exception"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :goto_0
    monitor-enter p1

    .line 1052
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1053
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onSimCheck(Landroid/os/Message;)V
    .locals 7

    .line 547
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onSimCheck"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 550
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 553
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 554
    check-cast v0, [B

    .line 556
    const-string p0, "SemTelephonyHandlerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result Length :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    array-length p0, v0

    const/4 v4, 0x2

    if-le p0, v4, :cond_1

    aget-byte p0, v0, v3

    if-ne p0, v2, :cond_1

    .line 558
    const-string p0, "SemTelephonyHandlerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result data :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    aget-byte p0, v0, v2

    if-lez p0, :cond_1

    .line 560
    array-length v2, v0

    add-int/lit8 v5, p0, 0x2

    if-lt v2, v5, :cond_1

    .line 561
    invoke-static {v0, v4, p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object p0

    .line 562
    const-string v2, "SemTelephonyHandlerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, p0, v4, v1, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    goto :goto_0

    .line 568
    :cond_0
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimCheck exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-array v0, v2, [B

    .line 570
    aput-byte v1, v0, v3

    .line 572
    :cond_1
    :goto_0
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 574
    monitor-enter p1

    .line 575
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 576
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onTransmitIccPcscDone(Landroid/os/Message;)V
    .locals 4

    .line 622
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_ICCPCSC_TRANSMIT_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 625
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 628
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 629
    check-cast v0, [B

    .line 631
    const-string p0, "SemTelephonyHandlerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result Length :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    array-length p0, v0

    if-lez p0, :cond_0

    .line 633
    array-length p0, v0

    new-array p0, p0, [B

    .line 634
    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 640
    :cond_1
    const-string v0, "SemTelephonyHandlerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 641
    new-array p0, p0, [B

    const/16 v0, 0x6f

    .line 642
    aput-byte v0, p0, v1

    .line 645
    :goto_0
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 647
    monitor-enter p1

    .line 648
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 649
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist powerUpIccPcsc(Landroid/os/Message;)V
    .locals 2

    .line 770
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_ICCPCSC_POWERUP"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 773
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 775
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private blacklist setCpaiDataGathering(Landroid/os/Message;)V
    .locals 8

    .line 1593
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_CPAI_DATA_GATHERING"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1596
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1597
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1599
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    .line 1600
    aget v3, v0, v1

    const/4 v1, 0x1

    .line 1601
    aget v4, v0, v1

    const/4 v1, 0x2

    .line 1602
    aget v5, v0, v1

    const/4 v1, 0x3

    .line 1603
    aget v6, v0, v1

    if-eqz p0, :cond_0

    .line 1606
    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/SemCommandsInterface;->setCpaiDataGathering(IIIILandroid/os/Message;)V

    return-void

    .line 1608
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setCpaiDataGathering: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1610
    monitor-enter p1

    .line 1611
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1612
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist setCpaiDataGatheringDone(Landroid/os/Message;)V
    .locals 1

    .line 1617
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SET_CPAI_DATA_GATHERING_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1620
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1621
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1622
    monitor-enter p1

    .line 1623
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1624
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist setCpaiDevAppMessage(Landroid/os/Message;)V
    .locals 5

    .line 1661
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_CPAI_DEV_APP_MESSAGE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1664
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1665
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1667
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1668
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 1669
    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    .line 1670
    aget-object v1, v1, v4

    check-cast v1, [B

    if-eqz p0, :cond_0

    .line 1673
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v2, v3, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setCpaiDevAppMessage(II[BLandroid/os/Message;)V

    return-void

    .line 1675
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setCpaiDevAppMessage: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1677
    monitor-enter p1

    .line 1678
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1679
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist setCpaiDevAppMessageDone(Landroid/os/Message;)V
    .locals 1

    .line 1684
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SET_CPAI_DEV_APP_MESSAGE_DONE"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1687
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1688
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1689
    monitor-enter p1

    .line 1690
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1691
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist setDisable2G(Landroid/os/Message;)V
    .locals 2

    .line 434
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_DISABLE_2G"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 439
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 440
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setDisable2g(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist setIccSimPersoEnabled(Landroid/os/Message;)V
    .locals 2

    .line 898
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_ICC_SIM_PERSO_ENABLED"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 901
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 903
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/telephony/SemIccCardBase;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 907
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist setNrMode(Landroid/os/Message;)V
    .locals 5

    .line 998
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_NR_MODE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1003
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x0

    .line 1004
    aget v3, v1, v2

    const/4 v4, 0x1

    .line 1005
    aget v1, v1, v4

    if-ne v1, v4, :cond_0

    move v2, v4

    .line 1006
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1008
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v3, v2, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setNrDisableMode(IZLandroid/os/Message;)V

    return-void

    .line 1010
    :cond_1
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setNrMode: getPhone is null or not support NR"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1012
    monitor-enter p1

    .line 1013
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1014
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist setSimOnOff(Landroid/os/Message;)V
    .locals 3

    .line 1432
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1433
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v0, 0x63

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1435
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    .line 1436
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 1437
    aget v0, v0, v2

    .line 1438
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1441
    iget-object p1, v1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimOnOff(ILandroid/os/Message;)V

    return-void

    .line 1443
    :cond_0
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setSimOnOff: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1445
    monitor-enter p1

    .line 1446
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1447
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist setVoNrMode(Landroid/os/Message;)V
    .locals 4

    .line 1057
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_VoNR_MODE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1061
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, [I

    .line 1062
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 1064
    aget v1, v1, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move p1, v3

    :cond_0
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/telephony/Phone;->setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V

    return-void

    .line 1066
    :cond_1
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setVoNrMode: getPhone is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance p0, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, v2, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1068
    monitor-enter p1

    .line 1069
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1070
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist simCheck(Landroid/os/Message;)V
    .locals 4

    .line 512
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "simCheck"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 514
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v2, v1

    .line 515
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 516
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 518
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v1, 0xa1

    .line 519
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v1, 0x5

    .line 520
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 521
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    const-string v1, "SemTelephonyHandlerHelper"

    const-string v2, "IOException in open channel"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_0
    const-string v1, "SemTelephonyHandlerHelper"

    const-string v2, "simCheck req"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    .line 529
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 528
    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_1

    .line 531
    :cond_1
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "simCheck phone null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 532
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 533
    monitor-enter p1

    .line 534
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 535
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 541
    const-string p1, "SemTelephonyHandlerHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simCheck : close fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 535
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private blacklist transmitIccPcsc(Landroid/os/Message;)V
    .locals 2

    .line 653
    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_ICCPCSC_TRANSMIT"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 656
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 658
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private blacklist updateLastModemActivityInfo(Landroid/telephony/ModemActivityInfo;I)V
    .locals 7

    .line 1283
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    new-array v1, v0, [I

    .line 1284
    invoke-virtual {p1, p2}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(I)[I

    move-result-object v2

    .line 1285
    iget-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v3, p2}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(I)[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 1288
    aget v5, v2, v4

    aget v6, v3, v4

    add-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0, p2, v1}, Landroid/telephony/ModemActivityInfo;->setTransmitTimeMillis(I[I)V

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1293
    invoke-virtual {p1, p2}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p0, p2}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide p0

    add-long/2addr v1, p0

    .line 1291
    invoke-virtual {v0, p2, v1, v2}, Landroid/telephony/ModemActivityInfo;->setReceiveTimeMillis(IJ)V

    return-void
.end method

.method private blacklist updateLastModemActivityInfo(Landroid/telephony/ModemActivityInfo;II)V
    .locals 7

    .line 1266
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    new-array v1, v0, [I

    .line 1267
    invoke-virtual {p1, p2, p3}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v2

    .line 1268
    iget-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v3, p2, p3}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 1271
    aget v5, v2, v4

    aget v6, v3, v4

    add-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0, p2, p3, v1}, Landroid/telephony/ModemActivityInfo;->setTransmitTimeMillis(II[I)V

    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1278
    invoke-virtual {p1, p2, p3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1279
    invoke-virtual {p0, p2, p3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide p0

    add-long/2addr v1, p0

    .line 1275
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/telephony/ModemActivityInfo;->setReceiveTimeMillis(IIJ)V

    return-void
.end method


# virtual methods
.method blacklist getCallback()Landroid/os/Handler$Callback;
    .locals 1

    .line 159
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;)V

    return-object v0
.end method

.method blacklist setSemMainThreadHandler(Landroid/os/Handler;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    return-void
.end method
