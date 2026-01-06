.class public Lcom/samsung/sdk/sperf/SPerf;
.super Ljava/lang/Object;
.source "SPerf.java"


# static fields
.field private static sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sdk/sperf/SPerf;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionCode()I
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "v0.9.0"

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 34
    return v0

    .line 36
    :cond_0
    invoke-static {}, Lcom/samsung/sdk/sperf/Boost;->init()Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    return v0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/samsung/sdk/sperf/SPerfManager;->createInstance(Landroid/content/Context;)Lcom/samsung/sdk/sperf/SPerfManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/sdk/sperf/SPerf;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    .line 40
    sget-object v1, Lcom/samsung/sdk/sperf/SPerf;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    if-nez v1, :cond_2

    .line 41
    return v0

    .line 43
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static isFeatureEnabled(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 47
    sget-object v0, Lcom/samsung/sdk/sperf/SPerf;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setDebugModeEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 20
    invoke-static {p0}, Lcom/samsung/sdk/sperf/SPerfUtil;->setDebug(Z)V

    .line 21
    return-void
.end method
