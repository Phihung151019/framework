.class public Lcom/samsung/android/bbccommon/BBCHelper;
.super Ljava/lang/Object;
.source "BBCHelper.java"


# static fields
.field static final POLICY_FAILED:I = -0x1

.field static final TAG:Ljava/lang/String; = "BBCHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callExchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/samsung/android/bbccommon/BBCHelper;->getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static changeAppDomain(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public static getBBCContainerId(Landroid/content/Context;Z)I
    .locals 0

    .line 0
    const/16 p0, -0x2710

    return p0
.end method

.method public static getBbcEnabled()I
    .locals 1

    .line 0
    const/16 v0, -0x2710

    return v0
.end method

.method private static getPersonaManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    .line 21
    const-string v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method private static getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 1

    .line 25
    const-string v0, "rcp"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object p0
.end method

.method public static getSignatureFromMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBBCContainer(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static restoreAppData(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public static setBBCFlag(Landroid/content/Context;Z)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public static setupComplete(Landroid/content/Context;I)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_setup_complete"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static updateAppToContainer(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method
