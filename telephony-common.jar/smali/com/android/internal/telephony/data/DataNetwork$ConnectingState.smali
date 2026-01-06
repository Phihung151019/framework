.class final Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectingState"
.end annotation


# instance fields
.field private blacklist mRegStateWhenSetup:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1719
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private blacklist getProfileIdFromNetCapa(I)I
    .locals 0

    .line 1915
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/16 p0, 0x3f1

    return p0

    :sswitch_1
    const/16 p0, 0x3eb

    return p0

    :sswitch_2
    const/16 p0, 0xe

    return p0

    :sswitch_3
    const/16 p0, 0x3f0

    return p0

    :sswitch_4
    const/16 p0, 0x3e9

    return p0

    :sswitch_5
    const/16 p0, 0x3ee

    return p0

    :sswitch_6
    const/4 p0, 0x4

    return p0

    :sswitch_7
    const/4 p0, 0x2

    return p0

    :sswitch_8
    const/4 p0, 0x3

    return p0

    :sswitch_9
    const/4 p0, 0x7

    return p0

    :sswitch_a
    const/4 p0, 0x1

    return p0

    :sswitch_b
    const/4 p0, 0x6

    return p0

    :sswitch_c
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_c
        0x4 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_5
        0x200 -> :sswitch_4
        0x400 -> :sswitch_3
        0x800 -> :sswitch_2
        0x2000 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist onSetupResponse(ILandroid/telephony/data/DataCallResponse;)V
    .locals 8

    .line 1966
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupResponse: resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1968
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetFailCauseFromDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1969
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->mRegStateWhenSetup:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mvalidateDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;I)V

    .line 1970
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p1

    const/16 v0, 0xc

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-nez p1, :cond_5

    .line 1971
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p1

    .line 1972
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 1971
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkByInterface(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1974
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interface "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has been already used by "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Silently tear down now."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1979
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate network interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " detected."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "62f66e7e-8d71-45de-a57b-dc5c78223fd5"

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1986
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const p2, 0x1000b

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1987
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1991
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)V

    .line 1993
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataCallResponse;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1994
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v2, "mDataCallResponse initialized."

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1995
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)V

    .line 1998
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p1

    .line 1999
    invoke-virtual {p1}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2000
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p2, "VCN service requested to tear down the network."

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2004
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void

    .line 2009
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 2010
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2011
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->needUpPhonePriority()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2012
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->restoreThreadPriority()V

    .line 2015
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_4

    .line 2018
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v4

    goto :goto_0

    :cond_6
    move-wide v4, v2

    .line 2019
    :goto_0
    invoke-static {p1, v4, v5}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 2020
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2032
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "KTT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v4, "failCause"

    const-string v5, "state"

    const-string v6, "com.samsung.intent.action.ACTION_PDP_SETUP_FAIL"

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 2033
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v7, "LGT"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2034
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 2035
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2036
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2037
    const-string v0, "com.samsung.android.app.telephonyui"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2038
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2040
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2044
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ATT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2045
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x2

    .line 2046
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2047
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "onDataSetupComplete: error , send ACTION_PDP_SETUP_FAIL for DUN"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2048
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2049
    const-string v0, "com.samsung.unifiedtp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2058
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p1

    const/16 v0, -0x9

    if-ne p1, v0, :cond_b

    .line 2059
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRaTimeOutLogs(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 2060
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_a
    const-string v4, ""

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cause="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2059
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2065
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isLguSim()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_c

    .line 2066
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cause = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ReconnectAlarm should be stopped"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2067
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->removeEventForCancelRetry()V

    .line 2072
    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;)J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    const-wide v4, 0x7fffffffffffffffL

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_d

    goto :goto_2

    .line 2073
    :cond_d
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;)J

    move-result-wide v6

    goto :goto_3

    :cond_e
    :goto_2
    move-wide v6, v4

    :goto_3
    cmp-long p1, v6, v4

    if-eqz p1, :cond_10

    .line 2074
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x4

    .line 2075
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_10

    cmp-long p1, v6, v2

    if-eqz p1, :cond_f

    .line 2078
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v6

    .line 2080
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->setNextRetryTime(J)V

    .line 2087
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2088
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    .line 2089
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result p1

    :goto_5
    move v6, p1

    move v5, v1

    goto :goto_6

    :cond_11
    const/4 p1, -0x1

    goto :goto_5

    .line 2091
    :goto_6
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v2

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 2092
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    if-eqz p2, :cond_12

    .line 2096
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p0

    :goto_7
    move v7, p0

    move-object v3, p2

    goto :goto_8

    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p0

    goto :goto_7

    .line 2091
    :goto_8
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCallResponse(Landroid/telephony/data/DataCallResponse;IIII)V

    return-void
.end method

.method private blacklist restoreThreadPriority()V
    .locals 1

    .line 1951
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "restoreThreadPriority: Restore the Priority to the default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1953
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    return-void
.end method

.method private blacklist setupData()V
    .locals 20

    move-object/from16 v0, p0

    .line 1845
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v6

    .line 1847
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetNetworkRegistrationInfo(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1849
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 1850
    :goto_0
    iput v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->mRegStateWhenSetup:I

    .line 1854
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v10

    .line 1859
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v19, 0x0

    if-nez v1, :cond_2

    if-eqz v10, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1860
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v11, v19

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v2

    .line 1863
    :goto_2
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 1865
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1868
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1869
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v17, v19

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v17, v2

    .line 1871
    :goto_4
    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v8

    .line 1873
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCidManager()Lcom/android/internal/telephony/data/CidManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1874
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCidManager()Lcom/android/internal/telephony/data/CidManager;

    move-result-object v2

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v3

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v5

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1876
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    const/4 v4, 0x1

    .line 1874
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/data/CidManager;->allocateCid(Landroid/telephony/data/DataProfile;IIII)I

    move-result v1

    .line 1877
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/data/DataProfile;->setCid(I)V

    .line 1881
    :cond_5
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1882
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getCidManager()Lcom/android/internal/telephony/data/CidManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/CidManager;->getAttachDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 1883
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v1

    if-nez v1, :cond_8

    .line 1884
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->getProfileIdFromNetCapa(I)I

    move-result v1

    .line 1885
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/data/DataProfile;->setProfileId(I)V

    goto :goto_5

    .line 1887
    :cond_7
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1889
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->getProfileIdFromNetCapa(I)I

    move-result v1

    .line 1890
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/data/DataProfile;->setProfileId(I)V

    .line 1893
    :cond_8
    :goto_5
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v9

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v14

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v2, 0x6

    .line 1897
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 1894
    invoke-virtual/range {v7 .. v18}, Lcom/android/internal/telephony/data/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    move/from16 v2, v17

    .line 1899
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1900
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v19

    :cond_9
    move/from16 v1, v19

    .line 1901
    iget-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataNetwork;->isSatellite()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCall(IZ)V

    .line 1903
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupData: accessNetwork="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    invoke-static {v8}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isModemRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", allowRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", PDU session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", matchAllRuleAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1903
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1908
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v7

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    .line 1909
    invoke-static {v6}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v9

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 1910
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v10

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v0

    .line 1911
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v12

    .line 1908
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetupDataCall(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 4

    .line 1725
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mapplyT3346(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v1

    .line 1728
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkConnectingTimeoutMs()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x14

    .line 1727
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 1729
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mcreateNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V

    .line 1730
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1731
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DN-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "C"

    goto :goto_0

    :cond_0
    const-string v2, "I"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmLogTag(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v1

    .line 1737
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierServicePackageUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmCarrierServicePackageUid(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1740
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1742
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mallocatePduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void

    .line 1746
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->setupData()V

    return-void
.end method

.method public blacklist exit()V
    .locals 1

    .line 1751
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->access$100(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 1757
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const-string v5, "Failed to allocate PDU session id. e="

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x19

    if-eq v0, v1, :cond_5

    const/16 v1, 0x23

    const/4 v6, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return v6

    .line 1788
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data network stuck in connecting state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v5}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v5

    .line 1790
    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkConnectingTimeoutMs()I

    move-result v5

    int-to-long v5, v5

    .line 1789
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "58c56403-7ea7-4e56-a0c7-e467114d09b8"

    .line 1788
    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1795
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const v0, 0x1000b

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1796
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_2

    .line 1799
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1800
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_2

    .line 1809
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "ConnectingState T3346 EVENT_DATA_CONNECTION_T3346 T3346_TIMER_STOP_V01"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1810
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_2

    .line 1804
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "ConnectingState T3346 EVENT_DATA_CONNECTION_T3346 T3346_TIMER_START_V01"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1805
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_2

    .line 1816
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1817
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 1819
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 1820
    array-length v0, p1

    if-lez v0, :cond_3

    .line 1821
    array-length v0, p1

    new-array v0, v0, [B

    .line 1822
    array-length v1, p1

    invoke-static {p1, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1823
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    aget-byte v0, v0, v6

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1824
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set OEM PDU session id to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1826
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "no result. not set PDU session id"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1829
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 1831
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->setupData()V

    goto/16 :goto_2

    .line 1784
    :cond_5
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Defer message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1785
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 1775
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1777
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "data_call_response"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/DataCallResponse;

    .line 1778
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->onSetupResponse(ILandroid/telephony/data/DataCallResponse;)V

    goto :goto_2

    .line 1759
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1760
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    .line 1761
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1762
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set PDU session id to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1764
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 1767
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1768
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->setupData()V

    goto :goto_2

    .line 1770
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1771
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :goto_2
    return v4

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
