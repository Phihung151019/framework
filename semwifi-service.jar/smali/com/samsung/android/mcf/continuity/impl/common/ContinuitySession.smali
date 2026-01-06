.class public final Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

.field private final mContinuityConnectionManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;

.field private final mContinuitySessionListenerHolder:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;

.field private final mContinuitySetAllowWifiScanManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySetAllowWifiScanManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 5
    .line 6
    new-instance p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;

    .line 7
    .line 8
    invoke-direct {p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuitySessionListenerHolder:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuityConnectionManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;

    .line 19
    .line 20
    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySetAllowWifiScanManager;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySetAllowWifiScanManager;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuitySetAllowWifiScanManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySetAllowWifiScanManager;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuitySessionListenerHolder:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;->destroy()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuityConnectionManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->destroy()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuitySetAllowWifiScanManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySetAllowWifiScanManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySetAllowWifiScanManager;->destroy()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method final sendCommand(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuityConnectionManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "getNetworkType"

    .line 7
    .line 8
    const-string p1, "null continuityNetworkPolicyWrapper"

    .line 9
    .line 10
    const-string v0, "ContinuityConnectionManager"

    .line 11
    .line 12
    invoke-static {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "sendCommand"

    .line 16
    .line 17
    const-string p1, "not supported networkType : 10"

    .line 18
    .line 19
    invoke-static {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method final unregisterCommandListener()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuitySessionListenerHolder:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;->unregisterCommandListener()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final unregisterFileInfoListener()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->mContinuitySessionListenerHolder:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
