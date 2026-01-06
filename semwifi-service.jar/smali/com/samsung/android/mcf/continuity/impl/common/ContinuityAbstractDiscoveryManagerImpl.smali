.class public Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractDiscoveryManager;


# instance fields
.field protected final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

.field protected final mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getBtMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.permission.BLUETOOTH_SCAN"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string p0, "Need BLUETOOTH_SCAN permission"

    .line 10
    .line 11
    const-string p1, "ContinuityDiscoveryManagerImpl"

    .line 12
    .line 13
    const-string p2, "getBtMac"

    .line 14
    .line 15
    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
