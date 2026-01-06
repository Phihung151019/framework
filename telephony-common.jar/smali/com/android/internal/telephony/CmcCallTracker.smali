.class public Lcom/android/internal/telephony/CmcCallTracker;
.super Landroid/os/Handler;
.source "CmcCallTracker.java"


# instance fields
.field private blacklist mCmcActivationChangeObserver:Landroid/database/ContentObserver;

.field private blacklist mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/ImsCall;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContext:Landroid/content/Context;

.field private blacklist mImsCmcCallListener:Lcom/android/ims/ImsCall$Listener;

.field blacklist mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private blacklist mImsPullListener:Lcom/android/ims/ImsCall$Listener;

.field blacklist mNeedConfirm:Z

.field blacklist mPendingSdPull:Z

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPublishDialog:Lcom/android/internal/telephony/PublishDialog;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcheckMdecEnabled(Lcom/android/internal/telephony/CmcCallTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->checkMdecEnabled()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misImsPhoneInCall(Lcom/android/internal/telephony/CmcCallTracker;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    .line 1287
    new-instance v1, Lcom/android/internal/telephony/CmcCallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CmcCallTracker$2;-><init>(Lcom/android/internal/telephony/CmcCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsCmcCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 1409
    new-instance v1, Lcom/android/internal/telephony/CmcCallTracker$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CmcCallTracker$3;-><init>(Lcom/android/internal/telephony/CmcCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPullListener:Lcom/android/ims/ImsCall$Listener;

    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 102
    iput-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    .line 105
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 p2, 0x65

    invoke-virtual {p1, p0, p2, p1}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x64

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x66

    invoke-interface {p1, p0, v2, v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1, p0, p2, p1}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->checkMdecEnabled()V

    .line 116
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "cmc_activation"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/CmcCallTracker$1;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CmcCallTracker$1;-><init>(Lcom/android/internal/telephony/CmcCallTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcActivationChangeObserver:Landroid/database/ContentObserver;

    const/4 p0, 0x1

    .line 116
    invoke-virtual {p1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 3

    .line 928
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 932
    const-string v0, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 935
    const-string v2, "sdPull"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 936
    new-instance v0, Landroid/util/Pair;

    const-string v2, "com.samsung.telecom.event.CALL_SECONDARY_DEVICE_PULL"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 937
    :cond_0
    const-string v2, "sdPullComplete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    const-string v0, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 939
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_1
    new-instance v0, Landroid/util/Pair;

    const-string v2, "com.samsung.telephony.event.EVENT_CALL_CMC_SECONDARY_DEVICE_PULL_COMPLETED"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    :cond_2
    :goto_0
    const-string v0, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 946
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 947
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_3

    .line 949
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_3
    new-instance p1, Landroid/util/Pair;

    const-string v0, "com.samsung.telephony.event.EVENT_CALL_CMC_SECONDARY_DEVICE_REQUEST_TYPE"

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method private blacklist checkMdecEnabled()V
    .locals 2

    .line 1276
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->isMultiDeviceCallContinuityEnabledByUser()Z

    move-result p0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMultiDeviceCallContinuityEnabledByUser failure. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CmcCallTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1281
    :goto_0
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setUseMdecEnabled(Z)V

    return-void
.end method

.method private blacklist getClirGSmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I
    .locals 3

    .line 965
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz p0, :cond_0

    .line 966
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 972
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 973
    aget-object v2, p0, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 974
    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getNumberPresentation()I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method private blacklist getClirImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I
    .locals 4

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 989
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 990
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 991
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 995
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClirImsPhoneConnection - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method private blacklist getClirfromConnection(Lcom/android/internal/telephony/Call$State;)I
    .locals 1

    .line 957
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getClirImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p0

    return p0

    .line 960
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getClirGSmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p0

    return p0
.end method

.method private blacklist getCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1096
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1097
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    const/4 v1, 0x0

    .line 1099
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 1100
    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    .line 1101
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1102
    const-string v3, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_5

    .line 1103
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    .line 1104
    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_4

    .line 1105
    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p0, :cond_1

    goto :goto_2

    .line 1107
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p0, :cond_4

    .line 1108
    :cond_2
    const-string p0, "sdTerminate"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 1106
    :cond_3
    :goto_2
    const-string p0, "answer"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private blacklist getCmcCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)Landroid/os/Bundle;
    .locals 5

    .line 1049
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1050
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 1055
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1056
    aget-object v2, p0, v1

    if-eqz v2, :cond_2

    .line 1057
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1058
    const-string v3, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1059
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v3, v4, v3

    if-ne p1, v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private blacklist getCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1120
    const-string v0, "com.samsung.telephony.extra.CMC_SESSION_ID"

    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1121
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz p1, :cond_7

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v3, 0x0

    .line 1127
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1128
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1129
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1130
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 1131
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    .line 1132
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    .line 1133
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    if-eq p1, v0, :cond_4

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2

    goto :goto_3

    .line 1135
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    .line 1136
    :cond_3
    :goto_2
    const-string p1, "sdTerminate"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1134
    :cond_4
    :goto_3
    const-string p1, "answer"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return-object v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1144
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcCallInfoImsPhoneConnection - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-object v2
.end method

.method private blacklist getCmcCallInfoImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)Landroid/os/Bundle;
    .locals 7

    .line 1070
    const-string v0, "com.samsung.telephony.extra.CMC_CALL_STATE"

    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1071
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v3, 0x0

    .line 1077
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1078
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1079
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1080
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1081
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v5, :cond_2

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v2

    .line 1089
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcCallInfo - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-object v2
.end method

.method private blacklist getCmcSessionIdGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I
    .locals 6

    .line 1001
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz p0, :cond_0

    .line 1002
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, -0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 1007
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1008
    aget-object v2, p0, v1

    if-eqz v2, :cond_2

    .line 1009
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1011
    const-string v3, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1012
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    const-string v5, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    if-ne p1, v4, :cond_2

    .line 1014
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method private blacklist getCmcSessionIdImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I
    .locals 7

    .line 1023
    const-string v0, "com.samsung.telephony.extra.CMC_SESSION_ID"

    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v1, :cond_0

    .line 1024
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    .line 1030
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1031
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1032
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1034
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1035
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    const-string v6, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    if-ne p1, v5, :cond_2

    .line 1037
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1043
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcSessionIdImsPhoneConnection - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_3
    return v2
.end method

.method private blacklist getCurrentCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;
    .locals 8

    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_b

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    move v1, v4

    move v5, v1

    .line 1155
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1156
    aget-object v6, v0, v1

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    if-ne v6, v2, :cond_2

    .line 1157
    :cond_1
    const-string v5, "getCurrentCallInfoGsmCdmaConnection - setCallStatus to DISCONNECTED"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 1158
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/telephony/PublishDialog;->setCallStatus(II)V

    .line 1159
    invoke-virtual {p1, v1, v4}, Lcom/android/internal/telephony/PublishDialog;->setCallMpty(IZ)V

    move v5, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    .line 1164
    invoke-virtual {p1}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    move p0, v4

    .line 1165
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v0

    if-ge p0, v0, :cond_4

    .line 1166
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/PublishDialog;->setCallMpty(IZ)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-object p1

    .line 1171
    :cond_5
    new-instance p0, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {p0}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    move p1, v4

    move v5, p1

    .line 1174
    :goto_3
    array-length v6, v0

    if-ge p1, v6, :cond_a

    .line 1175
    aget-object v6, v0, p1

    if-eqz v6, :cond_9

    iget v6, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    if-le v6, v2, :cond_9

    .line 1176
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    .line 1177
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    .line 1178
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 1179
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x38f

    .line 1181
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    goto :goto_4

    .line 1184
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 1186
    :goto_4
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    .line 1187
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_7

    .line 1188
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    goto :goto_5

    .line 1190
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 1192
    :goto_5
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/ConnectionBase;->getCmcPullable()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 1193
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getNumberPresentation()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 1194
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 1195
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1196
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    goto :goto_6

    .line 1198
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 1200
    :goto_6
    aget-object v6, v0, p1

    const/16 v7, 0x200

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/ConnectionBase;->hasInternalAttribute(I)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    .line 1201
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    add-int/lit8 v5, v5, 0x1

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :cond_a
    if-lez v5, :cond_b

    .line 1207
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V

    return-object p0

    :cond_b
    return-object v1
.end method

.method private blacklist getCurrentCallInfoImsPhoneConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;
    .locals 6

    .line 1218
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1219
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_8

    .line 1221
    new-instance v1, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {v1}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    .line 1223
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 1229
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1230
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1231
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    const/4 v4, 0x2

    .line 1232
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    .line 1233
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getState()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 1235
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionExt;->isEmergencyImsConnection()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x38f

    .line 1236
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 1238
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 1240
    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    .line 1241
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_3

    .line 1242
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    goto :goto_3

    .line 1244
    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 1246
    :goto_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcPullable()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 1247
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 1248
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 1249
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1250
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    goto :goto_4

    .line 1252
    :cond_4
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 1254
    :goto_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    .line 1255
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    if-lez v3, :cond_7

    .line 1260
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :cond_7
    return-object v0

    .line 1266
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentCallInfoImsPhoneConnection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

.method private blacklist getPhoneAccountHandleForCurrentPhone(I)Landroid/telecom/PhoneAccountHandle;
    .locals 7

    const/4 v0, 0x0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 722
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v2

    .line 723
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 724
    invoke-virtual {v1, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    const/4 v5, 0x4

    .line 725
    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    iget-object v5, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    .line 727
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    if-nez v5, :cond_1

    .line 730
    const-string p1, "getPhoneAccountHandleForCurrentPhone - tempPhoneId is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 733
    aget v5, v5, v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    return-object v3

    .line 739
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneAccountHandleForCurrentPhone - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private varargs blacklist iLog(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 6

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 1429
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->iLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private blacklist isImsPhoneInCall()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmcCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final blacklist loge(Ljava/lang/String;)V
    .locals 2

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmcCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist updateCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 769
    iget-object v2, v0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 772
    const-string v3, "updateCmcCallInfoGsmCdmaConnection"

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 775
    :cond_1
    const-string v3, "sdSrvcc"

    const-string v5, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    const/4 v6, 0x0

    .line 776
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 777
    aget-object v7, v2, v6

    if-eqz v7, :cond_2

    .line 778
    invoke-virtual {v7}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 779
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 780
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 781
    const-string v1, "updateCmcCallInfoGsmCdmaConnection - Set request"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 782
    const-string v0, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    const-string v1, "end"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 784
    aget-object v0, v2, v6

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    return-void

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 792
    :cond_3
    const-string v6, ""

    const-string v7, "sdClearInfo"

    const-string v8, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const/4 v9, 0x1

    if-eqz v1, :cond_6

    iget-object v10, v0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    .line 793
    iget-object v10, v0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :cond_4
    if-ge v12, v11, :cond_6

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/internal/telephony/Connection;

    if-eqz v13, :cond_4

    .line 795
    invoke-virtual {v13}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 798
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCmcCallInfoGsmCdmaConnection - hoConn is "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateCmcCallInfoGsmCdmaConnection - cmcCallInfo is "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v14, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v4, v14, :cond_4

    .line 802
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 803
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v13, v1, v9}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Z)V

    return-void

    .line 806
    :cond_5
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v13, v1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    return-void

    :cond_6
    if-eqz v1, :cond_10

    if-eqz v2, :cond_10

    const/4 v3, 0x0

    .line 817
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_b

    .line 818
    aget-object v4, v2, v3

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_a

    aget-object v4, v2, v3

    .line 819
    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v4, v10, :cond_a

    .line 820
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CmcCallTracker;->checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    .line 822
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 823
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 824
    aget-object v2, v2, v3

    invoke-virtual {v2, v1, v9, v0}, Lcom/android/internal/telephony/Connection;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    return-void

    .line 826
    :cond_7
    aget-object v0, v2, v3

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Z)V

    return-void

    .line 829
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 830
    aget-object v2, v2, v3

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void

    .line 832
    :cond_9
    aget-object v0, v2, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    return-void

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    .line 839
    :goto_3
    array-length v3, v2

    if-ge v4, v3, :cond_10

    .line 840
    aget-object v3, v2, v4

    if-eqz v3, :cond_f

    .line 841
    invoke-virtual {v3}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 842
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CmcCallTracker;->checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v3, :cond_d

    .line 845
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 846
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 847
    aget-object v0, v2, v4

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void

    .line 849
    :cond_c
    aget-object v0, v2, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    return-void

    .line 854
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 855
    aget-object v0, v2, v4

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void

    .line 857
    :cond_e
    aget-object v0, v2, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    return-void

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_10
    return-void
.end method

.method private blacklist updateCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)V
    .locals 6

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_b

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 874
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "com.samsung.telephony.extra.CMC_SESSION_ID"

    if-ge v2, v3, :cond_6

    .line 875
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 876
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 877
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 878
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 880
    const-string v3, "sdClearInfo"

    const-string v4, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 881
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 882
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/internal/telephony/Connection;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 884
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v4}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Z)V

    return-void

    .line 887
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 888
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void

    .line 890
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 898
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 899
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 900
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 901
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_8

    .line 904
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 905
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 906
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v3}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void

    .line 908
    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    return-void

    .line 913
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 914
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v3}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void

    .line 916
    :cond_9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 923
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCmcCallInfoImsPhoneConnection - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public blacklist confirmSdCallPullRequest(I)V
    .locals 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmSdCallPullRequest - sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string p1, "confirmSdCallPullRequest - mCmcCall is empty"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsCall;

    if-eqz p1, :cond_1

    .line 298
    :try_start_0
    const-string v0, "confirmSdCallPullRequest - accept"

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmSdCallPullRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist dispose()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcActivationChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public blacklist forking(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    .locals 10

    .line 201
    const-string v0, "forking - makeCall"

    const-string v1, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const-string v2, "forking - createCallProfile"

    const-string v3, "android.telephony.ims.extra.OEM_EXTRAS"

    .line 202
    iget-object v4, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 203
    invoke-virtual {v4}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 204
    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CmcCallTracker;->getClirfromConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    goto :goto_0

    .line 206
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CmcCallTracker;->getClirfromConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v5

    .line 212
    :goto_0
    iget v6, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-static {v6}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v6

    .line 215
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v2, v5, v8}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 218
    iget-object v8, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    .line 219
    const-string v8, "oir"

    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v4

    invoke-virtual {v6, v8, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 220
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x2

    invoke-direct {p0, v2, v8, v4}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 222
    iget-object p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-nez p2, :cond_2

    .line 224
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 228
    :cond_2
    :goto_1
    const-string v2, "com.samsung.telephony.extra.CMC_TYPE"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string v2, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 235
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    const-string v2, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 241
    :cond_3
    iget-object p1, v6, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 243
    aget-object p1, v7, p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, v6, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v5, p1}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 244
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsCmcCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p1, v6, v7, p2}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object p1

    .line 245
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v0, v8, p2}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 249
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 252
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forking - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage - what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 154
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->handleSuppServiceNotification(Landroid/os/AsyncResult;)V

    return-void

    .line 150
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->update(Landroid/os/AsyncResult;)V

    return-void

    .line 146
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist handleSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 2

    .line 171
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 173
    iget v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 175
    iget p1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcSessionIdImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    goto :goto_0

    .line 179
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcSessionIdGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    :goto_0
    if-eq p1, v1, :cond_3

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->hold(I)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    sget-object p1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcSessionIdImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    goto :goto_1

    .line 189
    :cond_2
    sget-object p1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcSessionIdGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_3

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->resume(I)V

    :cond_3
    return-void
.end method

.method public blacklist hold(I)V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsCall;

    if-eqz p1, :cond_0

    .line 749
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->hold()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hold - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist onDisconnect(Landroid/os/AsyncResult;)V
    .locals 8

    .line 452
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Connection;

    if-nez p1, :cond_0

    .line 454
    const-string p1, "onDisconnect - conn is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 458
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    const-string p1, "onDisconnect - mCmcCall is empty"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 467
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    .line 470
    const-string p1, "onDisconnect - extras is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v1, -0x1

    .line 473
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect - extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 476
    const-string v2, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 477
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 480
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCall;

    .line 482
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v3

    if-nez v3, :cond_8

    :cond_5
    if-nez v2, :cond_8

    .line 484
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eq v3, v4, :cond_8

    .line 485
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 487
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/ImsCall;

    .line 488
    invoke-virtual {v5}, Lcom/android/ims/ImsCall;->getState()I

    move-result v6

    if-eq v6, v4, :cond_7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    :cond_7
    move-object v2, v5

    :cond_8
    if-eqz v2, :cond_9

    const/16 v3, 0xfa5

    .line 498
    invoke-virtual {v2, v3}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 499
    const-string v3, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1, v0, v4}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Z)V

    .line 501
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    return-void

    .line 503
    :cond_9
    const-string p1, "onDisconnect - imsCall is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onIncomingCmcCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 9

    .line 308
    const-string v0, "onIncomingCmcCall - takeCall"

    const-string v1, "com.samsung.telephony.extra.CMC_DIAL_TO"

    const-string v2, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const-string v3, "onIncomingCmcCall - "

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 310
    :try_start_0
    new-array v7, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v5, v7}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 311
    iget-object v7, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsCmcCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v7, p1, v8}, Lcom/android/ims/ImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {p0, v0, v8, v7}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->isCmcEmergencyCallSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xfa7

    .line 320
    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->reject(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v6

    .line 328
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    .line 332
    :cond_1
    :goto_1
    const-string v0, "com.samsung.telephony.extra.CMC_REPLACE_CALL_ID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    .line 334
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    const-string p2, "Reject because not exist regular call"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const/16 p2, 0x1f8

    .line 336
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsCall;->reject(I)V

    goto/16 :goto_6

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_2
    if-eqz p1, :cond_3

    .line 339
    iget-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    if-nez v0, :cond_3

    .line 340
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->accept(I)V

    goto :goto_2

    .line 342
    :cond_3
    const-string v0, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    const-string v1, "sdPull"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V

    goto :goto_3

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V

    .line 350
    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 352
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 358
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v7, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/android/internal/telephony/FdnUtils;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 362
    :try_start_3
    const-string p2, "onIncomingCmcCall - Reject CmcCall (isNumberBlockedByFDN)"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const/16 p2, 0xf1

    .line 363
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsCall;->reject(I)V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_6

    :catch_3
    move-exception p1

    .line 365
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 370
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string v1, "tel"

    invoke-static {v1, v0, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 371
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 374
    const-string v0, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    :cond_7
    const-string v0, "com.samsung.telephony.extra.CMC_TYPE"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string v0, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCmcCall - extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 385
    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 387
    const-string v0, "com.samsung.telephony.extra.CMC_PHONE_ID"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 390
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getPhoneAccountHandleForCurrentPhone(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 393
    :try_start_4
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    .line 400
    :cond_8
    :goto_5
    :try_start_5
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method public blacklist pull(I)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsCall;

    if-eqz p1, :cond_0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPullListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 261
    const-string v0, "pull - terminate"

    const/16 v1, 0xfa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p1, v1}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t accept call because of no terminate call. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist removeCmcCallInfo(ILcom/android/ims/ImsCall;)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist requireConfirmationBeforeSdCallPull(Z)V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requireConfirmationBeforeSdCallPull - needConfirm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 282
    iput-boolean p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    return-void
.end method

.method public blacklist resume(I)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsCall;

    if-eqz p1, :cond_0

    .line 761
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->resume()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V
    .locals 1

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;I)V

    return-void
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 657
    instance-of p3, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p3, :cond_0

    .line 658
    const-string p1, "sendPublishDialog STATE_ED_ACCEPT & IMS Call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 663
    :cond_0
    instance-of p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_1

    .line 664
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCurrentCallInfoImsPhoneConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;

    move-result-object p1

    .line 665
    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    goto :goto_0

    .line 667
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCurrentCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 668
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCurrentCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    :goto_0
    if-eqz p1, :cond_2

    .line 674
    :try_start_0
    const-string p2, "sendPublishDialog"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p3}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 675
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->sendPublishDialog(Lcom/android/internal/telephony/PublishDialog;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 677
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendPublishDialog - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 680
    :cond_2
    const-string p1, "sendPublishDialog - publishDialog is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setCmcPullable()V
    .locals 2

    .line 270
    const-string v0, "setCmcPullable"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V

    return-void
.end method

.method public blacklist setSdRequestType(Landroid/os/Bundle;Landroid/os/Bundle;I)V
    .locals 10

    if-eqz p2, :cond_11

    .line 592
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 593
    const-string v1, "com.samsung.telephony.extra.CMC_CALL_STATE"

    if-eqz p1, :cond_0

    .line 594
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v2, p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 596
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v1, v2, v1

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSdRequestType - prevCallStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentCallStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 602
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    const/4 v4, 0x4

    const/4 v5, 0x1

    const-string v6, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    const/4 v7, 0x0

    if-ne v1, v2, :cond_6

    .line 603
    sget-object p0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x6

    if-ne p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p3, p0, :cond_1

    .line 604
    const-string p0, "resume"

    invoke-virtual {p2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eq p3, v1, :cond_3

    .line 605
    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_2

    if-eq p1, v0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p0, :cond_3

    .line 607
    :cond_2
    const-string p0, "answer"

    invoke-virtual {p2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-ne p3, v4, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_2
    if-ne p3, v1, :cond_5

    .line 616
    const-string p0, "sdPullComplete"

    invoke-virtual {p2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v9, v7

    move v7, v5

    move v5, v9

    goto :goto_8

    .line 619
    :cond_6
    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v8, :cond_7

    if-ne p1, v2, :cond_10

    const/4 p0, 0x2

    if-ne p3, p0, :cond_10

    .line 621
    const-string p0, "hold"

    invoke-virtual {p2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 623
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_f

    if-eq p3, v5, :cond_b

    const/4 p0, 0x7

    if-ne p3, p0, :cond_8

    goto :goto_4

    :cond_8
    const/4 p0, 0x5

    if-eq p3, p0, :cond_9

    if-ne p3, v4, :cond_a

    .line 636
    :cond_9
    const-string p0, "sdClearInfo"

    invoke-virtual {p2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    move v5, v7

    goto :goto_8

    .line 626
    :cond_b
    :goto_4
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_d

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_d

    if-ne p1, v0, :cond_c

    goto :goto_5

    :cond_c
    move p0, v5

    goto :goto_6

    :cond_d
    :goto_5
    move p0, v7

    :goto_6
    if-ne p3, v5, :cond_e

    .line 630
    const-string p1, "end"

    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 632
    :cond_e
    const-string p1, "reject"

    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move v5, p0

    goto :goto_8

    .line 641
    :cond_f
    sget-object p1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, p1, :cond_10

    .line 642
    const-string p1, "setSdRequestType: TODO"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 647
    :cond_10
    :goto_8
    const-string p0, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL"

    invoke-virtual {p2, p0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 648
    const-string p0, "com.samsung.telephony.extra.CMC_PULLABLE"

    invoke-virtual {p2, p0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public blacklist update(Landroid/os/AsyncResult;)V
    .locals 14

    .line 508
    const-string v0, "answer"

    const-string v1, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Phone;

    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 513
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 514
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsCall;

    .line 516
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update - sessionId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 517
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 518
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 521
    instance-of v11, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v11, :cond_0

    .line 522
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto :goto_1

    .line 524
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_4

    .line 530
    :try_start_0
    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "com.samsung.telephony.extra.CMC_CALL_TYPE"

    const-string v13, "com.samsung.telephony.extra.CMC_CALL_STATE"

    if-eqz v11, :cond_1

    .line 531
    :try_start_1
    const-string v11, "accept forking call from SD"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/ims/ImsCall;->accept(I)V

    .line 533
    invoke-virtual {v10, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_4

    .line 536
    :cond_1
    :goto_2
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 537
    const-string v9, "accept from ED"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/ims/ImsCall;->accept(I)V

    .line 539
    invoke-virtual {v10, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v7, v6

    goto :goto_3

    .line 542
    :cond_2
    const-string v11, "sdTerminate"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 543
    const-string v11, "terminate SD when PD answered"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v8, v4}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    const/16 v11, 0x1f5

    .line 545
    invoke-virtual {v8, v11}, Lcom/android/ims/ImsCall;->terminate(I)V

    const/16 v11, 0x8

    .line 546
    invoke-virtual {v10, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    .line 549
    const-string v8, "sdClearInfo"

    invoke-virtual {v10, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    .line 551
    :cond_3
    :goto_3
    invoke-virtual {v10, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0, v8, v10, p1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 554
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    :cond_4
    const-string v8, "update - prevCmcCallInfo is null"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 564
    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_6

    .line 565
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_5

    .line 567
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)Landroid/os/Bundle;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_7

    .line 571
    const-string v0, "end"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V

    goto :goto_6

    :cond_7
    if-eqz v0, :cond_8

    .line 575
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)V

    goto :goto_6

    .line 577
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)V

    :goto_6
    move v7, v5

    .line 582
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    if-ne v0, v6, :cond_a

    .line 583
    iput-boolean v5, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update - mNeedConfirm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 587
    :cond_a
    invoke-virtual {p0, p1, v4, v7}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;I)V

    return-void
.end method

.method public blacklist updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;I)V
    .locals 1

    .line 408
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V
    .locals 1

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V
    .locals 4

    if-nez p2, :cond_0

    .line 421
    const-string p1, "updateCmcCallInfo - cmcCallInfo is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCmcCallInfo - cmcCallInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 427
    const-string v0, "com.samsung.telephony.extra.CMC_SESSION_ID"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 428
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_2
    :goto_0
    instance-of p1, p3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_3

    .line 439
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_1

    .line 441
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 443
    :goto_1
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/internal/telephony/CmcCallTracker;->setSdRequestType(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    if-eqz p1, :cond_4

    .line 445
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)V

    return-void

    .line 447
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 1

    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method public blacklist updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 5

    .line 689
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 692
    const-string p1, "updateCmcCallstatus - cmcCallInfo is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 696
    :cond_1
    const-string v1, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 698
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v3

    const-string v4, "com.samsung.telephony.extra.CMC_SERVICE_TYPE"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 699
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v3

    const-string v4, "com.samsung.telephony.extra.CMC_CALL_TYPE"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 700
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCmcCallstatus - cmcCallInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 704
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 705
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1, v0, v3, p3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    goto :goto_1

    .line 707
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, v0, v3, p3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    .line 710
    :goto_1
    sget-object p3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p3, :cond_3

    if-eq v1, v2, :cond_3

    .line 711
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    :cond_3
    return-void
.end method
