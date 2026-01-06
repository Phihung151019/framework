.class Lcom/android/internal/telephony/cat/CatBIPManager$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->beginBipConnection()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/CatBIPManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 910
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 913
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 915
    const-string v0, "onAvailable "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetconnMgr(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-nez v0, :cond_0

    .line 919
    const-string p1, "No BIP cmd is being processed, May not have been unregistered from NWConnectivityListener"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 922
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_3

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 924
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result v0

    .line 925
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DSG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result v0

    .line 926
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TMO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    if-ne v0, v2, :cond_2

    .line 928
    const-string v0, "mRetrieveDNSIPAddress is true"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mhandleRetrieveDNSIPAddress(Lcom/android/internal/telephony/cat/CatBIPManager;Landroid/net/Network;)V

    return-void

    .line 931
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mregisterPhoneStateListener(Lcom/android/internal/telephony/cat/CatBIPManager;I)V

    .line 932
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPManager$3$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$3$1;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager$3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 937
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 966
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 967
    const-string p1, "onCapabilitiesChanged "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .locals 3

    .line 943
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 944
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 945
    const-string p1, "onLost LINK_DROPPED "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 949
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 950
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 951
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 952
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v1, 0x5

    .line 954
    iput-byte v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 955
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 956
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mfreeChannel(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_0

    .line 959
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 960
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fputmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;Z)V

    return-void
.end method

.method public whitelist onUnavailable()V
    .locals 1

    .line 972
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 973
    const-string v0, "onUnavailable "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$msendTrForOpenchannelTimeout(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    return-void
.end method
