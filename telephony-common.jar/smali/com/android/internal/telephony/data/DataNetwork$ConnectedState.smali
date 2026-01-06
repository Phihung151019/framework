.class final Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$4I70rOFKKI_dS2_2bIUvPmhkhpQ(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MQlAIh1rTiGPRJQdhyDN1GaEem0(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Xt62q4IVY9fMrDY4Ohgu549XhLk(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$abOVdjNfjQAA7b_VLSoUSdAWFzI(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;Ljava/lang/Integer;Landroid/telephony/PcoData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$2(Ljava/lang/Integer;Landroid/telephony/PcoData;)V

    return-void
.end method

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

    .line 2105
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$0()V
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$1()V
    .locals 3

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "VCN policy changed."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object v0

    .line 2132
    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void

    .line 2135
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$2(Ljava/lang/Integer;Landroid/telephony/PcoData;)V
    .locals 0

    .line 2172
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$3()V
    .locals 2

    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmLinkStatus(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 7

    .line 2110
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2112
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "network connected."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2113
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 2114
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v2, Lcom/android/internal/telephony/data/QosCallbackTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/data/QosCallbackTracker;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent;Lcom/android/internal/telephony/Phone;)V

    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/QosCallbackTracker;)V

    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/QosCallbackTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmQosBearerSessions(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->updateSessions(Ljava/util/List;)V

    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v2, Lcom/android/internal/telephony/data/KeepaliveTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 2121
    invoke-virtual {v4}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v5}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/data/KeepaliveTracker;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V

    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmKeepaliveTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/KeepaliveTracker;)V

    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2128
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 2139
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    move-result-object v1

    .line 2138
    invoke-virtual {v0, v2, v1}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 2144
    :cond_1
    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2145
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2146
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmMsimSubMode(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 2147
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2153
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mneedRegisterListenerForNonDds(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mregisterListenerForNonDds(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2171
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPcoData(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    .line 2172
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2174
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->setLingerDuration(Ljava/time/Duration;)V

    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2179
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2180
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2182
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmOldDatacallListChecked(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 2183
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmWaitDatacallListResponse(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method public blacklist exit()V
    .locals 2

    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mneedRegisterListenerForNonDds(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$munregisterListenerForNonDds(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2196
    :cond_0
    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2197
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 2203
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmIsIpChangeDeactivation(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 2206
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmIsCancelHandOverPending(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 2212
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

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

    .line 2213
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_9

    const/16 v4, 0x10

    if-eq v0, v4, :cond_8

    const/16 v4, 0x13

    if-eq v0, v4, :cond_7

    const/16 v4, 0x1c

    if-eq v0, v4, :cond_6

    const/16 v4, 0x21

    if-eq v0, v4, :cond_5

    const/16 v4, 0x22

    if-eq v0, v4, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    return v3

    .line 2352
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmIsCancelHandOverPending(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 2353
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 2354
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v1, 0x1b

    .line 2355
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2354
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/data/DataServiceManager;->cancelHandover(ILandroid/os/Message;)V

    goto/16 :goto_2

    .line 2337
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "ConnectedState delay deactivate target data call after handover IP change"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2338
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 2340
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmIsIpChangeDeactivation(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    goto/16 :goto_2

    .line 2345
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "deal with new data call list content in onDataStateChanged later"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2346
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmOldDatacallListChecked(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 2347
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmWaitDatacallListResponse(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    goto/16 :goto_2

    .line 2260
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying source transport "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    .line 2261
    invoke-static {v4}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " that handover is about to start."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2260
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2265
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyStartHandoverToRIL(Lcom/android/internal/telephony/data/DataNetwork;II)V

    .line 2269
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v6, 0x1a

    .line 2270
    invoke-virtual {v4, v6, v3, v5, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2269
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->startHandover(ILandroid/os/Message;)V

    .line 2274
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmHandoverState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_2

    .line 2308
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2309
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_2

    .line 2292
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2293
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 2294
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2295
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 2296
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 2297
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monVoiceCallStartedForMultiSim(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 2299
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monVoiceCallendedForMultiSim(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2302
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2303
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_2

    .line 2284
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2285
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, p1

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IIJ)V

    goto/16 :goto_2

    .line 2252
    :pswitch_7
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDisplayInfoChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_2

    .line 2316
    :pswitch_8
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel handover no response within "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p0

    .line 2318
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkHandoverTimeoutMs()I

    move-result p0

    int-to-long v3, p0

    .line 2317
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " seconds."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ad320988-0601-4955-836a-e6b67289c294"

    .line 2316
    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2243
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2244
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 2245
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_BANDWIDTH_ESTIMATE_FROM_MODEM_CHANGED: error ignoring, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2249
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monBandwidthUpdatedFromModem(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/List;)V

    goto/16 :goto_2

    .line 2329
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "ConnectedState Carrier feature updated Check for Network Slice state"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2330
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mhasNetworkSliceCapability(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2331
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_2

    .line 2323
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "ConnectedState check suspend state if msimsubmode change"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2324
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mcheckAndUpdateSuspendForDsda(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_2

    .line 2313
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mhandleDataNetworkValidationRequest(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    .line 2280
    :cond_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2281
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_2

    .line 2277
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateMeteredAndCongested(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_2

    .line 2215
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmInvokedDataDeactivation(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2216
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p1, "Ignore tear down request because network is being torn down."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2220
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmIsSetProcTypeForMms(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2222
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2223
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$msetProcTypeInfo(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 2224
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmIsSetProcTypeForMms(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    goto :goto_1

    .line 2229
    :cond_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2232
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v3, 0xc

    .line 2233
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2234
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mcleanUpTcpSockets(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2237
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->access$200(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 2238
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->access$300(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 2239
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2240
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V

    :cond_e
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
