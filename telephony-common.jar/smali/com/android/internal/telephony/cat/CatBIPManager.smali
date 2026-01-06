.class public Lcom/android/internal/telephony/cat/CatBIPManager;
.super Landroid/os/Handler;
.source "CatBIPManager.java"


# instance fields
.field blacklist channelIds:[Z

.field private blacklist connMgr:Landroid/net/ConnectivityManager;

.field blacklist connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/internal/telephony/cat/CatBIPConnection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

.field blacklist currentChannel:I

.field blacklist isBipOverWifi:Z

.field private blacklist isRetryOverCs:Z

.field public blacklist mAPNState:Landroid/net/NetworkInfo$State;

.field private blacklist mCapabilityType:I

.field blacklist mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

.field public blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public blacklist mNetworkRequest:Landroid/net/NetworkRequest;

.field private blacklist mPdnReuse:Z

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSlotId:I

.field blacklist oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field blacklist resp_pending:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetconnMgr(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilityType(Lcom/android/internal/telephony/cat/CatBIPManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeepOpenParams(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/OpenChannelParams;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcontinueProcessingOpenChannel(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingOpenChannel()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfreeChannel(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBIPConnection(Lcom/android/internal/telephony/cat/CatBIPManager;I)Lcom/android/internal/telephony/cat/CatBIPConnection;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRetrieveDNSIPAddress(Lcom/android/internal/telephony/cat/CatBIPManager;Landroid/net/Network;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleRetrieveDNSIPAddress(Landroid/net/Network;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mopenChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterPhoneStateListener(Lcom/android/internal/telephony/cat/CatBIPManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerPhoneStateListener(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTerminalResponse(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTrForApnFailedOpenchannel(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTrForApnFailedOpenchannel()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTrForOpenchannelTimeout(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTrForOpenchannelTimeout()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 3

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    .line 102
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    .line 110
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    const/16 v2, 0x1f

    .line 113
    iput v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 114
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    .line 116
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isRetryOverCs:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    .line 118
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 120
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    const-string v0, "Inside CatBIPManager"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    .line 129
    iput p4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/4 p2, 0x1

    .line 130
    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    .line 131
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    .line 133
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->disableBipApn()V

    return-void
.end method

.method private blacklist assignChannelId()I
    .locals 3

    const/4 v0, 0x0

    .line 745
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 746
    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    .line 747
    aput-boolean p0, v1, v0

    add-int/2addr v0, p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist beginBipConnection()I
    .locals 3

    .line 896
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 897
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    .line 898
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 899
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 901
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 902
    new-instance v1, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 903
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 902
    invoke-virtual {v1, v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v1

    .line 902
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 906
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    .line 910
    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$3;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 977
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    const v2, 0xea60

    invoke-virtual {v1, p0, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist channelsAvailable()Z
    .locals 1

    .line 1370
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private blacklist closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v1, 0x0

    .line 1073
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const/4 v2, 0x0

    .line 1074
    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1076
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    if-nez v0, :cond_2

    .line 1077
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1078
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1080
    const-string p1, "endBipConnection()"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1083
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1091
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerReceiverForCloseChannel()V

    goto :goto_1

    .line 1085
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1087
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sent close Channel TR: mCapabilityType - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    const/16 p1, 0x1f

    .line 1089
    iput p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 1093
    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

    return-void

    .line 1095
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    const/4 p1, 0x1

    .line 1096
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist continueProcessingOpenChannel()V
    .locals 8

    .line 1403
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1404
    const-string v1, "continueProcessingOpenChannel() "

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 1407
    const-string v0, "bipcon is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1414
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    const-string v2, "Removed connection Successfully!!"

    const-string v3, "Time to return"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    .line 1415
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1433
    array-length v6, v1

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 1436
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1438
    :catch_0
    const-string v1, "Exception occurred while Setting up streams"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1440
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v4, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1441
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v5, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1442
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v6, v4

    aput-boolean v5, v1, v6

    .line 1445
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1446
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1448
    :cond_1
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1450
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void

    .line 1456
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 1457
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1458
    iput-boolean v5, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 1459
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v2, v4, :cond_3

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_1
    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1460
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1485
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v2, :cond_6

    .line 1486
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1487
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1488
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void

    .line 1462
    :goto_2
    const-string v2, "HandleMessage: Exception occurred while Setting up streams"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1463
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v2, :cond_6

    .line 1464
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1465
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1466
    iput v5, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1467
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1468
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1469
    const-string v2, "TIMEOUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1470
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_3

    .line 1472
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v2, v4

    aput-boolean v5, v1, v2

    .line 1473
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1474
    const-string v0, "Removed connection  Successfully!!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1477
    :cond_5
    :goto_3
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1479
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    :cond_6
    return-void

    .line 1417
    :cond_7
    const-string v1, "Destination address is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1418
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1419
    iput-boolean v4, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1420
    iput v5, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1421
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1423
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v6, v4

    aput-boolean v5, v1, v6

    .line 1424
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1425
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    :cond_8
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1428
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1429
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    return-void
.end method

.method private blacklist disableBipApn()V
    .locals 2

    .line 1538
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1541
    const-string v0, "disableBipApn : there is no default preferences"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1544
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1545
    const-string v1, "disableBipApn"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1546
    const-string p0, "bip.pref.enable"

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist displayConnectionStatus()V
    .locals 5

    .line 1338
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1339
    const-string v1, "ConnectionStatus Channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 1340
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v1, v4, v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    goto :goto_0

    .line 1343
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Total number of connections "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1348
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iface(protcl , port) =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private blacklist freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 3

    if-nez p1, :cond_0

    .line 372
    const-string p1, "Nothing to Free, No channels Open"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to freeChannel chanelid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPConnection;->terminateStreams()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 381
    const-string p1, "Removed connection  Successfully!!"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;
    .locals 3

    .line 724
    const-string v0, "CatBIPConnection : get ID"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 728
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 730
    iget v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    if-ne v2, p1, :cond_0

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatBIPConnection : found ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 735
    :cond_1
    const-string p1, "CatBIPConnection : null ID"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getDefaultApnName()Ljava/lang/String;
    .locals 0

    .line 1552
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredApnForBip()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1554
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    .line 1703
    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$5;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    return-object v0
.end method

.method private blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 1690
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1692
    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 1695
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1696
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1697
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private blacklist handleRetrieveDNSIPAddress(Landroid/net/Network;)V
    .locals 10

    .line 984
    const-string v0, "handleRetrieveDNSIPAddress"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1

    const/4 v0, 0x1

    .line 986
    const-string v1, "CatBipManager["

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 987
    const-string p1, "handleRetrieveDNSIPAddress: linkProperties is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] handleRetrieveDNSIPAddress: linkProperties is null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    .line 989
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 990
    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 991
    iput v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 992
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 993
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 994
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void

    .line 998
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 999
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 1011
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    if-eqz v3, :cond_2

    .line 1013
    iput-boolean v0, v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 1016
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 1017
    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1019
    const-string v3, "adding dns address for IPv4"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "] address :"

    const-string v6, "address : "

    const/16 v7, 0x10

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    if-eqz v4, :cond_3

    .line 1022
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1023
    array-length v9, v8

    if-eq v9, v7, :cond_3

    .line 1024
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    .line 1026
    iget-object v4, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1031
    :cond_4
    const-string v3, "adding dns address for IPv6"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    if-eqz v3, :cond_5

    .line 1034
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1035
    array-length v8, v4

    if-ne v8, v7, :cond_5

    .line 1036
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    .line 1038
    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1043
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1044
    iput-boolean v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1045
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1046
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1047
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void

    .line 1000
    :cond_7
    :goto_2
    const-string p1, "handleRetrieveDNSIPAddress: dnsAddress is null or size 0"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] handleRetrieveDNSIPAddress: dnsAddress is null or size 0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    .line 1002
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1003
    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1004
    iput v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1005
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1006
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1007
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void
.end method

.method private blacklist isUt3TestSim()Z
    .locals 3

    .line 1570
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1571
    const-string v1, "UT5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UT3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UTV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1572
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UT3 test case simOp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .locals 12

    .line 174
    const-string v0, "Time to return"

    const-string v1, "Exception occurred while Setting up streams"

    const-string v2, "openChannelAsRemoteClient()"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 179
    iput-boolean v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 181
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isUt3TestSim()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getDefaultApnName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 185
    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UT3 test case set defaultApnName ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    const-string v3, "TestGp.rs"

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 189
    const-string v3, "UserLog"

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    .line 190
    const-string v3, "UserPwd"

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    .line 191
    const-string v3, "UT3 test case set NetworkAccessname"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KDI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    const-string v4, "4405"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "4407"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "4408"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "44007"

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "44008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "44170"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    :cond_2
    const-string v3, "admin.au-net.ne.jp"

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 199
    const-string v3, "au@admin.au-net.ne.jp"

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    .line 200
    const-string v3, "au"

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    .line 201
    const-string v3, "KDI case set NetworkAccessname"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v3

    const-string v4, "CatBipManager["

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v3, :cond_7

    .line 209
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 210
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 212
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 213
    array-length v8, v3

    if-lez v8, :cond_5

    move v8, v2

    .line 214
    :goto_1
    array-length v9, v3

    if-ge v8, v9, :cond_5

    .line 215
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    aget-object v10, v3, v8

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 216
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v5, v9, :cond_4

    .line 217
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    .line 218
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    aget-object v9, v3, v8

    invoke-virtual {v7, v9}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 219
    aget-object v7, v3, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move v8, v2

    move v3, v5

    goto :goto_2

    :cond_6
    move v3, v2

    move v8, v6

    .line 225
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] isWifiConnected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v3, v2

    move v8, v6

    .line 227
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v10, v9, Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v11, "requestDataConnection() returns "

    if-eqz v10, :cond_8

    check-cast v9, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataServiceState()I

    move-result v9

    if-nez v9, :cond_8

    if-nez v3, :cond_8

    .line 228
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v8

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    :cond_8
    if-eqz v8, :cond_c

    if-eq v8, v5, :cond_b

    const/4 v0, 0x2

    if-eq v8, v0, :cond_9

    if-eq v8, v6, :cond_9

    goto/16 :goto_5

    .line 236
    :cond_9
    const-string v0, "sending Failure TR"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 239
    iput-boolean v5, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 240
    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 241
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v0, :cond_a

    .line 242
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_a

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v1, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 245
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    return v8

    .line 349
    :cond_b
    const-string p1, "APN_REQUEST_STARTED , wait till we hear from NetworkListener, returning "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v8

    .line 257
    :cond_c
    const-string v3, "APN_ALREADY_ACTIVE"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v3, Lcom/android/internal/telephony/cat/OpenChannelParams;

    if-eqz v3, :cond_d

    .line 260
    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    if-ne v3, v5, :cond_d

    .line 261
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleRetrieveDNSIPAddress(Landroid/net/Network;)V

    return v8

    :catch_0
    move-exception v3

    goto/16 :goto_7

    .line 265
    :cond_d
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 267
    array-length v3, v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10

    .line 270
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 272
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 273
    iput v2, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 274
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v3, :cond_e

    .line 275
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v3, v4, :cond_e

    .line 276
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 278
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 280
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v4, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v4, v5

    aput-boolean v2, v3, v4

    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 282
    const-string v3, "Removed connection  Successfully!!"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 285
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v6

    .line 289
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 290
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 291
    iput-boolean v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 293
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v4, v5, :cond_11

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    :cond_11
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 294
    iput-boolean v2, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 296
    const-string v3, "wakelock for OPEN CHANNEL"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v9, 0x2710

    invoke-virtual {v3, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_5
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-eqz v1, :cond_12

    .line 354
    const-string v0, "Backgound mode sending channel status to Cat Service"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_6

    .line 356
    :cond_12
    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-nez v0, :cond_13

    .line 357
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 358
    const-string v0, "Immediate mode Sending TR to Cat Service"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v1, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 360
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 362
    :cond_13
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    return v8

    .line 300
    :goto_7
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "TMO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    .line 304
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "DSG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_9

    :cond_14
    :goto_8
    move v1, v5

    goto :goto_a

    .line 305
    :cond_15
    :goto_9
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 306
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mobile_data"

    .line 305
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_16

    goto :goto_8

    :cond_16
    move v1, v2

    .line 309
    :goto_a
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isUt3TestSim()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 310
    const-string v1, "UT3 test case mUserDataEnabled"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v5

    .line 314
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserDataEnabled "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v7, v4, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v7, :cond_18

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataServiceState()I

    move-result v4

    if-nez v4, :cond_18

    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v4, :cond_18

    if-eqz v1, :cond_18

    .line 317
    iput-boolean v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 318
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isRetryOverCs:Z

    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result p1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    return v5

    .line 324
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 325
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 326
    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 327
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_19

    .line 328
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v4, :cond_19

    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 331
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 333
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 334
    const-string v3, "TIMEOUT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_b

    .line 337
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v3, v5

    aput-boolean v2, v1, v3

    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 339
    const-string p1, "Removed connection\tSuccessfully!!"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    :cond_1b
    :goto_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 343
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v6
.end method

.method private blacklist receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V
    .locals 5

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v1, 0x0

    .line 766
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    and-int/lit16 v0, p2, 0xff

    const/16 v2, 0xed

    if-le v0, v2, :cond_0

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveDataClientMode: requestedLength is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, v2

    :cond_0
    and-int/lit16 p2, p2, 0xff

    .line 778
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->getRxData(I)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 780
    const-string p1, "receiveDataClientMode: RxData is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move p1, v1

    goto :goto_1

    .line 781
    :cond_1
    array-length v2, v0

    if-ge v2, p2, :cond_2

    .line 782
    array-length p1, v0

    .line 783
    const-string p2, "receiveDataClientMode: RxData is shorter than requested length"

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move v4, v1

    move v1, p1

    move p1, v4

    goto :goto_1

    .line 786
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 787
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    iget p1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    sub-int v1, p2, p1

    .line 788
    array-length p1, v0

    goto :goto_0

    .line 790
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance p2, Lcom/android/internal/telephony/cat/ReceiveDataResponse;

    invoke-direct {p2, v0, v1, p1}, Lcom/android/internal/telephony/cat/ReceiveDataResponse;-><init>([BII)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    return-void
.end method

.method private blacklist registerPhoneStateListener(I)V
    .locals 1

    .line 1664
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->unregisterPhoneStateListener()V

    .line 1666
    const-string v0, "registerPhoneStateListener"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1668
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1669
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1670
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private blacklist registerReceiverForCloseChannel()V
    .locals 3

    .line 1596
    const-string v0, "registerReceiverForCloseChannel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1598
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1600
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPManager$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$4;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .locals 9

    .line 819
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v1, "ril.simtype"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    const-string v2, "18"

    const-string v3, "3"

    const-string v4, "TMO"

    const/16 v5, 0xc

    const/16 v6, 0x1f

    if-nez v1, :cond_3

    .line 822
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->disableBipApn()V

    .line 824
    iput v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 826
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "ATC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    const-string v1, "Forcing BIP APN for TMO-ATC"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    const-string v1, "altice"

    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 829
    iput v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 830
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 832
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "LGT"

    const-string v2, "KOO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    const-string v0, "ota.lguplus.co.kr"

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 836
    :cond_2
    iput v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 837
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    goto/16 :goto_4

    .line 840
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getDefaultApnName()Ljava/lang/String;

    move-result-object v1

    .line 841
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultApnName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 842
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 843
    const-string v1, "con.NetworkAccessname is same as default APN"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    iput v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    goto :goto_0

    .line 846
    :cond_4
    iput v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 848
    :goto_0
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "IMS"

    const/4 v8, 0x4

    if-nez v1, :cond_9

    const-string v1, "20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 858
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 862
    :cond_6
    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "19"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 863
    :cond_7
    const-string v0, "ims"

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 864
    iput v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    goto :goto_3

    .line 859
    :cond_8
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 860
    iput v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    goto :goto_3

    .line 849
    :cond_9
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 850
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 851
    const-string v0, "KT BIP OTA is progressing for domestic mode"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    iput v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    goto :goto_3

    .line 854
    :cond_a
    const-string v0, "KT BIP OTA is progressing for oversea mode"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    iput v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 867
    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 869
    :cond_c
    :goto_4
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isUt3TestSim()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 870
    :cond_d
    const-string p1, "CSCFEATURE_RIL_ENABLEBIPDURINGMOBILEDATAOFF"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "mobile_data"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_e

    move p1, v0

    goto :goto_5

    :cond_e
    const/4 p1, 0x0

    .line 876
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz p1, :cond_f

    .line 877
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    move-result p1

    if-nez p1, :cond_10

    .line 878
    :cond_f
    const-string p1, "set mCapabilityType : BIP"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    iput v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 883
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->beginBipConnection()I

    move-result p1

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result of beginBipConnection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, p1, :cond_11

    .line 887
    const-string v1, "wakelock for OPEN CHANNEL"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 890
    :cond_11
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return p1
.end method

.method private blacklist sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .locals 8

    .line 1109
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-eqz v0, :cond_0

    .line 1110
    const-string v0, "ConnectionMode.isOnDemand && con.isfirstTime = true"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1112
    const-string p1, "APN_REQUEST_FAILED"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1117
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-nez v0, :cond_9

    .line 1118
    const-string v0, "con.isfirstTime = false"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v1, 0x1

    .line 1123
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1124
    new-instance v1, Lcom/android/internal/telephony/cat/SendDataResponse;

    iget v2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1126
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    .line 1128
    const-string v2, "TCP Remote Client"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1130
    :cond_1
    iput-boolean v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    goto :goto_0

    .line 1132
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1133
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramSocket;

    .line 1134
    const-string v2, "UDP Remote Client"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1136
    :cond_3
    iput-boolean v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 1140
    :cond_4
    :goto_0
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-nez v0, :cond_5

    .line 1141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Socket is Closed or Not Connected isLinkEstablished  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 p3, 0x2

    iput p3, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1143
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1145
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1147
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    return-void

    .line 1151
    :cond_5
    const-string v0, "Socket is neither Closed nor Not Connected"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bytes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1156
    iget v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    array-length p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1160
    :catch_0
    const-string p2, "IndexOutOfBounds Exception while writing to tx buf "

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1158
    :catch_1
    const-string p2, "Nul pointer Exception while writing to tx buf "

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_7

    .line 1166
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1167
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast p2, Ljava/net/DatagramSocket;

    .line 1168
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    .line 1170
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v7, p3, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 1175
    :try_start_1
    invoke-virtual {p2, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1176
    const-string p2, "Packet Ready sent"

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object p3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object p3, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1178
    iput-boolean v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1179
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1180
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 1182
    iget p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1183
    iget-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v0, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v0, p3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object p2, v0

    .line 1185
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException while sending UDP packet : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1187
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1188
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto/16 :goto_2

    .line 1191
    :cond_6
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1193
    :try_start_2
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p2, p3, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1195
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 1196
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data written to TCP sockt "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object p3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object p3, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1199
    iput-boolean v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1200
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1201
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 1203
    iget p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1205
    iget-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v0, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v0, p3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object p2, v0

    .line 1208
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception while sending to TCP packet : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1210
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1211
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1212
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto :goto_2

    .line 1218
    :cond_7
    const-string p2, "Data Stored. Send Response"

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object p3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object p3, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1220
    iput-boolean v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1221
    iget p3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    iget p1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    sub-int/2addr p3, p1

    .line 1222
    new-instance p1, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {p1, p3}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object p1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1225
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    :cond_9
    return-void
.end method

.method private blacklist sendTerminalResponse()V
    .locals 2

    .line 1579
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1580
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1581
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist sendTrForApnFailedOpenchannel()V
    .locals 4

    .line 1645
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_0

    .line 1647
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1648
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 1649
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const/4 v2, 0x0

    .line 1650
    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1651
    new-instance v3, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    iput-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1652
    const-string v1, "sendTrForApnFailedOpenchannel: Filled Open Channel Terminal Response params"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1654
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1657
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1658
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    :cond_0
    return-void
.end method

.method private blacklist sendTrForOpenchannelTimeout()V
    .locals 3

    .line 1356
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 1358
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const/4 v2, 0x0

    .line 1359
    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1360
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1362
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1363
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1364
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1365
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void
.end method

.method private blacklist setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 7

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1496
    const-string p1, "setBipApn : there is no default preferences"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1499
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1500
    const-string v1, "setBipApn : set values"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1501
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    const/16 v2, 0xc

    const-string v3, "bip.pref.enable"

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1504
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1505
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    const-string v2, "bip.pref.apn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1506
    const-string v1, "bip.pref.user"

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1507
    const-string v1, "bip.pref.passwd"

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1509
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "bip.pref.roaming_protocol"

    const-string v3, "bip.pref.protocol"

    const-string v4, "IPV4V6"

    if-eqz v1, :cond_2

    .line 1510
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1511
    const-string v1, "IP"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1514
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "KDI"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1515
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, "0"

    invoke-static {v1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1516
    const-string v5, "4405"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "4407"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "4408"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "44007"

    .line 1517
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "44008"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "44170"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1518
    :cond_3
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1519
    const-string v1, "bip.pref.auth_type"

    const/4 v5, 0x2

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1523
    :cond_4
    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "CHC"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1524
    iget-object p0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerNGRAN:Lcom/android/internal/telephony/cat/BearerNGRAN;

    if-eqz p0, :cond_6

    .line 1525
    iget p1, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduIei:I

    const/16 v1, 0x90

    if-ne p1, v1, :cond_6

    .line 1526
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduValue:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_6

    .line 1527
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1528
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    .line 1502
    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1534
    :cond_6
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist unregisterPhoneStateListener()V
    .locals 3

    .line 1674
    const-string v0, "unregisterPhoneStateListener "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    .line 1676
    const-string v0, "unregisterPhoneStateListener(), no listener indicates nothing is listening"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1680
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1681
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1683
    :catch_0
    const-string v0, "Unable to unregister PhoneStateListener as mPhoneStateListener is already null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 1685
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    .line 142
    const-string v0, "dispose CatBIPManager"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 145
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 146
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isRetryOverCs:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->unregisterReceiver()V

    return-void
.end method

.method protected blacklist endBipConnection()V
    .locals 3

    .line 1051
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 1052
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->unregisterPhoneStateListener()V

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1054
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1060
    :catch_0
    const-string v0, "NullPointerException happens"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1058
    :catch_1
    const-string v0, "IllegalArgumentException happens"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method

.method public blacklist getChannelStatus(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 3

    .line 703
    const-string v0, "getChannelStatus"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 706
    iget-object p1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 707
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 p1, 0x0

    .line 708
    iput-boolean p1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 710
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v1, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    invoke-direct {v1, p1, v2}, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;-><init>(Ljava/util/Iterator;[Z)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 713
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method public blacklist handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V
    .locals 4

    .line 569
    const-string v0, "handleCloseChannel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    iget v0, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    and-int/lit8 v0, v0, 0x7

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseChannel: Requested Chanel ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 576
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 577
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 578
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 580
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 581
    iget v1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    const/16 v2, 0x21

    const/4 v3, 0x3

    if-lt v1, v2, :cond_4

    const/16 v2, 0x27

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    if-nez v1, :cond_1

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseChannel: No Channel Available! BIP cid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " params.mChannelId ="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v3, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 597
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 602
    :cond_1
    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    const-string v0, "handleCloseChannel: UICC in CLIENT Mode"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mPdnReuse:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPdnReuse : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    :cond_2
    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 612
    const-string p1, "Be back to old StrictMode"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    .line 615
    :cond_3
    const-string p1, "handleCloseChannel: Do not support UICC in SERVER Mode"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 583
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseChannel: Invalid Channel Id! BIP\'s cid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " params.mChannelId"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v3, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 586
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 153
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 163
    const-string p1, "unknown message"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    const-string p1, "MSG_ID_BIP_KEEP_CHANNEL_TIMEOUT"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    const/16 v0, 0x1f

    .line 159
    iput v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 160
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    return-void
.end method

.method public blacklist handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V
    .locals 14

    move-object v0, p1

    .line 391
    const-string v1, "handleOpenChannel"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 395
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 396
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v10, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    .line 397
    iput-boolean v11, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 399
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 400
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "VZW"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    if-ne v1, v13, :cond_7

    .line 401
    const-string v1, "mPdnReuse is true"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    if-eqz v1, :cond_6

    .line 406
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v2, v2, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    if-eqz v3, :cond_2

    .line 410
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    const-string v0, "open channel with same settings, send TR"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 413
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 414
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    return-void

    .line 417
    :cond_2
    const-string v2, "open channel with same apn and different address"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_1

    .line 421
    :cond_3
    const-string v2, "open channel with different apn"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 425
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v1, :cond_4

    goto :goto_0

    .line 431
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerReceiverForCloseChannel()V

    return-void

    .line 427
    :cond_5
    :goto_0
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    const/16 v1, 0x1f

    .line 428
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 429
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    goto :goto_1

    .line 436
    :cond_6
    const-string v1, "no connection"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    .line 441
    :cond_7
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 442
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v2, "ril.simoperator"

    const-string v3, "ETC"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 444
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->channelsAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 445
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    if-eqz v1, :cond_8

    .line 447
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v3, v2, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    iget-object v5, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v6, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    if-ne v3, v6, :cond_8

    iget v2, v2, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    iget v3, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    if-ne v2, v3, :cond_8

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    if-eqz v2, :cond_8

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    if-eqz v3, :cond_8

    .line 451
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 452
    const-string v0, "Reuse existing channel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 462
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->channelsAvailable()Z

    move-result v1

    const-string v2, "CatBipManager["

    if-nez v1, :cond_9

    .line 463
    const-string v0, "Bearer type not supported"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] handleOpenChannel: Bearer type not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 470
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isUt3TestSim()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 471
    const-string v1, "UT3 test case"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 472
    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TMO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    .line 473
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DSG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 474
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 475
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "mobile_data"

    .line 474
    invoke-static {v1, v3, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v13, :cond_c

    move v1, v13

    goto :goto_2

    :cond_c
    move v1, v11

    .line 478
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 479
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 480
    invoke-virtual {v3, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 481
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v13

    goto :goto_3

    :cond_d
    move v3, v11

    :goto_3
    if-nez v1, :cond_e

    if-nez v3, :cond_e

    .line 486
    const-string v0, "Mobile data and WiFi both are disable."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] handleOpenChannel: Mobile data and WiFi both are disable."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 489
    iput-boolean v11, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 490
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 496
    :cond_e
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 498
    iget-object v1, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 500
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    move-object v3, v2

    iget v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    move-object v5, v3

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    move-object v6, v5

    iget-object v5, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    move-object v8, v7

    iget-object v7, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-object v9, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object v4, v9

    move-object v9, v0

    move-object v0, v8

    move-object v8, v4

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;-><init>(Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v1, "Change the StrictMode for BIP client Mode"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 517
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 516
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 520
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->assignChannelId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel Assigned  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    iget v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    .line 528
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v2, v1, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-nez v2, :cond_f

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v1, :cond_11

    .line 529
    :cond_f
    const-string v1, "openChannelAsRemoteClient sending TR connection mode is either backgrnd or ondemand"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v2, v13, :cond_10

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :cond_10
    iput-object v10, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 531
    iput-boolean v11, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 532
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 533
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 535
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v1, :cond_11

    return-void

    .line 540
    :cond_11
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    if-nez v1, :cond_12

    const/16 v1, 0x1000

    .line 541
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerPhoneStateListener(I)V

    .line 544
    :cond_12
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager$1;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 555
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 557
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    return-void

    .line 559
    :cond_13
    const-string v0, "handleOpenChannel: Do not support UICC in SERVER mode"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist handleReceiveData(Lcom/android/internal/telephony/cat/ReceiveDataParams;)V
    .locals 4

    .line 660
    const-string v0, "handleReceiveData"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    iget v0, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    and-int/lit8 v0, v0, 0x7

    .line 663
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 664
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 665
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 666
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 668
    iget v1, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_3

    const/16 v3, 0x27

    if-le v1, v3, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 680
    const-string p1, "handleReceiveData: No Channel available"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 682
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 686
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-byte p1, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V

    .line 688
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 689
    const-string p1, "handleReceiveData: Sending Receive Data Terminal Response to mCatService handle"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 691
    :cond_2
    const-string p1, "handleReceiveData: BIP Connection Found. UICC in SERVER mode does not support"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 670
    :cond_3
    :goto_0
    const-string p1, "handleReceiveData: Invalid Channel ID"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 672
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method public blacklist handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V
    .locals 4

    .line 621
    const-string v0, "handleSendData"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    iget v0, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    and-int/lit8 v0, v0, 0x7

    .line 626
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 627
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 628
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 629
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 633
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 634
    iget v2, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_2

    const/16 v3, 0x27

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    const-string v0, "handleSendData: UICC in CLIENT mode"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    iget-object v0, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 647
    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    .line 648
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPManager$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager$2;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;[BZ)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 653
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    .line 655
    :cond_1
    const-string p1, "handleSendData: Do not support UICC in SERVER mode"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 635
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSendData: No Channel available : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 638
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method blacklist isBipOverWifiEnabled()Z
    .locals 3

    .line 1585
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v1, "CarrierFeature_RIL_SupportBipOverWifi"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1587
    sget-boolean p0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p0, :cond_0

    const-string p0, "persist.radio.bipoverwifi"

    const-string v0, "0"

    .line 1588
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist linkDropWhenConnectionReset(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 2

    .line 1560
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const/4 v0, 0x0

    .line 1561
    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v0, 0x5

    .line 1562
    iput-byte v0, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatBipManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] linkDropWhenConnectionReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->addLocalLog(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1565
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    return-void
.end method

.method public blacklist registerPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 137
    const-string v0, "CatBIPManager phone reloaded!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public blacklist sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 5

    .line 1237
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isMonitoringEvent(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    const-string p1, "sendChannelStatusEvent: not set"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1242
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1243
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 1244
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 1245
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1247
    iget v2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    .line 1249
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v3

    const/4 v4, 0x6

    if-eqz v3, :cond_1

    .line 1250
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    :goto_0
    int-to-byte v2, v2

    goto :goto_1

    .line 1252
    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v3, :cond_2

    or-int/lit16 v2, v2, 0x80

    goto :goto_0

    .line 1256
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1257
    iget-byte p1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1258
    new-instance p1, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {p1}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 1259
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    iput v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 1260
    new-instance v2, Lcom/android/internal/telephony/cat/SetEventListParams;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    .line 1261
    new-instance p1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1262
    new-instance v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1264
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1266
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1267
    const-string v0, "sendChannelStatusEvent: Send EVENT_DOWNLOAD_CHANNEL_STATUS Envelope Message to mCatService handle"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1268
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1269
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 5

    .line 1276
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isMonitoringEvent(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    const-string p1, "sendDataAvailableEvent: not set"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1282
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1284
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 1285
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 1286
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1288
    iget v2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    .line 1289
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v3

    const/4 v4, 0x6

    if-eqz v3, :cond_1

    .line 1290
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    :goto_0
    int-to-byte v2, v2

    goto :goto_1

    .line 1292
    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v3, :cond_2

    or-int/lit16 v2, v2, 0x80

    goto :goto_0

    .line 1296
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    .line 1297
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1300
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 1301
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x1

    .line 1302
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1305
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v2

    const/16 v3, 0xff

    if-eqz v2, :cond_3

    goto :goto_3

    .line 1308
    :cond_3
    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-le p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, p1

    .line 1310
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1311
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1312
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getEid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1313
    const-string v2, "89043051"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    if-ne v3, p1, :cond_5

    .line 1315
    const-string p1, "sendDataAvailableEvent dataLength set 0x04"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 1319
    :cond_5
    :goto_3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1321
    new-instance p1, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {p1}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 1322
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    iput v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 1323
    new-instance v2, Lcom/android/internal/telephony/cat/SetEventListParams;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    .line 1324
    new-instance p1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1325
    new-instance v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1327
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1328
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1330
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1331
    const-string v0, "sendDataAvailableEvent: Send EVENT_DOWNLOAD_DATA_AVAILABLE to mCatService handle"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1333
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist unregisterReceiver()V
    .locals 2

    .line 1637
    const-string v0, "unregisterReceiver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1639
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1640
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
