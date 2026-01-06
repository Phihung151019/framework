.class public final Lcom/android/internal/telephony/SemSimErrorMonitor;
.super Ljava/lang/Object;
.source "SemSimErrorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;
    }
.end annotation


# instance fields
.field private blacklist mApptype:I

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mErrSimSlot:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mOldSimError:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSimErrorNotiDisplayed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemSimErrorMonitor;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimErrorNotiDisplayed(Lcom/android/internal/telephony/SemSimErrorMonitor;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mSimErrorNotiDisplayed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCardSwapped(Lcom/android/internal/telephony/SemSimErrorMonitor;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->handleCardSwapped(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogSimErrorCount(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->logSimErrorCount(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmakeSIMErrorNotification(Lcom/android/internal/telephony/SemSimErrorMonitor;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemSimErrorMonitor;->makeSIMErrorNotification(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterDefaultNetworkCb(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->registerDefaultNetworkCb(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSIMErrorNotification(Lcom/android/internal/telephony/SemSimErrorMonitor;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemSimErrorMonitor;->removeSIMErrorNotification(ZI)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mSimErrorNotiDisplayed:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mOldSimError:Z

    const/4 v2, -0x1

    .line 71
    iput v2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    .line 72
    iput v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mApptype:I

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 86
    new-instance v1, Lcom/android/internal/telephony/SemSimErrorMonitor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SemSimErrorMonitor$1;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    .line 104
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 106
    const-string p1, "Creating"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 108
    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.SIM_COMMAND_ERROR"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v2, "com.samsung.intent.action.SIM_AUTH_SUCCESS"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v2, "com.samsung.intent.action.SIM_RECOVERY_COMPLETE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v2, "com.samsung.intent.action.SIM_NOSIM_ERROR"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x64

    invoke-interface {p1, v1, v2, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private blacklist checkUiccOldState(I)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    const-string v3, "checkUiccOldState()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 385
    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 387
    const-string p1, "logSimErrorCount() iccId is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x6

    .line 391
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-static {}, Lcom/android/internal/telephony/SemSimErrorMonitor;->getCurrentYear()I

    move-result v5

    add-int/lit16 v5, v5, -0x7d0

    .line 394
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "checkUiccOldState() currentYear : "

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_0
    move v2, v9

    goto :goto_1

    :sswitch_0
    const-string v2, "898230"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string v2, "898206"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v10, "898205"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v0, 0xa

    .line 396
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ktYear : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 400
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v5, p1

    const/4 p1, 0x5

    if-lt v5, p1, :cond_4

    .line 401
    invoke-direct {p0, v8, v8}, Lcom/android/internal/telephony/SemSimErrorMonitor;->makeSIMErrorNotification(II)V

    return-void

    :pswitch_1
    const/16 v0, 0xb

    .line 416
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->isLguOldSim(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 419
    invoke-direct {p0, v8, v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->makeSIMErrorNotification(II)V

    return-void

    .line 406
    :pswitch_2
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sktYear : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v5, p1

    const/4 p1, 0x7

    if-lt v5, p1, :cond_4

    .line 411
    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->makeSIMErrorNotification(II)V

    :cond_4
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x62ccd500 -> :sswitch_2
        0x62ccd501 -> :sswitch_1
        0x62ccd558 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getCurrentYear()I
    .locals 2

    .line 377
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 378
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private blacklist handleCardSwapped(Landroid/os/Message;)V
    .locals 3

    .line 271
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 272
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 273
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCardSwapped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 277
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->removeSIMErrorNotification(ZI)V

    return-void
.end method

.method private blacklist isLguOldSim(Ljava/lang/String;)Z
    .locals 9

    .line 371
    const-string v7, "85190"

    const-string v8, "85290"

    const-string v0, "67110"

    const-string v1, "75110"

    const-string v2, "75120"

    const-string v3, "75300"

    const-string v4, "75390"

    const-string v5, "85110"

    const-string v6, "85120"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    .line 373
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSimErrorMonitor"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logSimErrorCount(I)V
    .locals 6

    .line 426
    iget v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logSimErrorCount() mSubId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 431
    const-string p1, "logSimErrorCount() invalid subid"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    return-void

    .line 435
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.radio.sim.cardErr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    const-string v3, "0"

    invoke-static {p1, v1, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 439
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 441
    const-string v4, "RCR_ERROR"

    goto :goto_1

    :cond_2
    const-string v4, "NOS_ERROR"

    .line 442
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simErrProp : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mErrCnt : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errType : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    add-int/2addr v3, v2

    .line 445
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 447
    iget v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    const-string v3, "KOR"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p1, v2, :cond_3

    .line 448
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->checkUiccOldState(I)V

    :cond_3
    return-void
.end method

.method private blacklist makeSIMErrorNotification(II)V
    .locals 10

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeSIMErrorNotification() cmdType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operator : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    const-string v1, "tablet"

    const-string v2, "ro.build.characteristics"

    const v3, 0x1040f06

    const-string v4, "NG"

    const-string v5, "ril.sim.dignosis.status"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne p2, v9, :cond_4

    .line 288
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v3, 0x1040f03

    if-ne p1, v9, :cond_1

    .line 290
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 291
    iput v7, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mApptype:I

    :cond_0
    :goto_0
    move-object p1, v8

    move-object v8, p2

    goto/16 :goto_4

    :cond_1
    if-ne p1, v7, :cond_3

    .line 293
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x1040efe

    .line 294
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v8, p1

    goto :goto_2

    :cond_2
    const p1, 0x1040efd

    .line 295
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    const/4 p1, 0x5

    .line 296
    iput p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mApptype:I

    goto :goto_0

    :cond_3
    if-ne p1, v6, :cond_0

    .line 298
    iput-boolean v9, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mOldSimError:Z

    .line 299
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 300
    iget p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    invoke-static {p1, v5, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne p2, v7, :cond_7

    if-ne p1, v6, :cond_5

    .line 304
    iput-boolean v9, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mOldSimError:Z

    const p1, 0x1040ef8

    .line 305
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const p1, 0x1040ef6

    .line 306
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 307
    iget p2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    invoke-static {p2, v5, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 309
    :cond_5
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x1040f05

    .line 310
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const p1, 0x1040f04

    .line 311
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 312
    :goto_3
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    if-ne p2, v6, :cond_9

    .line 316
    iput v7, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mApptype:I

    if-ne p1, v6, :cond_8

    .line 318
    iput-boolean v9, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mOldSimError:Z

    const p1, 0x1040ef7

    .line 319
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const p1, 0x1040ef5

    .line 320
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 321
    iget p2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    invoke-static {p2, v5, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 323
    :cond_8
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const p1, 0x1040f02

    .line 324
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    move-object p1, v8

    .line 327
    :goto_4
    iput-boolean v9, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mSimErrorNotiDisplayed:Z

    .line 328
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {p2, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 330
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v0, 0x1080624

    .line 331
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 332
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-wide/16 v0, 0x0

    .line 333
    invoke-virtual {p2, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 334
    invoke-virtual {p2, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 335
    invoke-virtual {p2, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 336
    const-string p1, "sim"

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 337
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 338
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.showSmallIcon"

    invoke-virtual {p1, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p1, 0x111

    .line 340
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private blacklist registerDefaultNetworkCb(I)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 130
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterDefaultNetworkCb for slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p1

    .line 134
    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$2;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 145
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 146
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 152
    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$3;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 163
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x4

    .line 164
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 165
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 166
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private blacklist removeSIMErrorNotification(ZI)V
    .locals 3

    .line 344
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mSimErrorNotiDisplayed:Z

    if-nez v0, :cond_0

    .line 345
    const-string p1, "mSimErrorNotiDisplayed is false"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    return-void

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mOldSimError:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_1

    .line 351
    const-string p1, "keep old SIM notifications because the SIM card has not been replaced"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    return-void

    .line 354
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mOldSimError:Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 356
    iget p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mApptype:I

    if-eq p2, p1, :cond_3

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authSimtype and mApptype are different. authSimtype : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mApptype : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mApptype:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    return-void

    .line 362
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->unregisterDefaultNetworkCb()V

    .line 363
    const-string p1, "mSimErrorNotiDisplayed is true, remove NO_SIM_NOTIFICATION"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 364
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mSimErrorNotiDisplayed:Z

    const/4 p1, -0x1

    .line 365
    iput p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mErrSimSlot:I

    .line 366
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mContext:Landroid/content/Context;

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p1, 0x111

    .line 367
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private blacklist unregisterDefaultNetworkCb()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "unregisterDefaultNetworkCb - mNetworkCallback"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 179
    iput-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 183
    const-string v0, "unregisterDefaultNetworkCb - mImsNetworkCallback"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->log(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 185
    iput-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_1
    return-void
.end method
