.class public Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallback;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiHalHidlImpl"

.field private static final VDBG:Z = false


# instance fields
.field private mDbg:Z

.field private mFrameworkCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

.field private mHalCallback10:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;

.field private mHalCallback15:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiEventCallback;

.field private final mISehWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mIsVendorHalSupported:Z

.field private final mLock:Ljava/lang/Object;

.field private mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

.field private mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

.field private mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;

.field private final mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

.field private mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

.field private mWifiDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$12dGZB9PXzUGGlZBHbecw5sqeBM(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$new$7(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$1CGkyYqPla3vOQylwD6Ahhfxzfc(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$getTwtParameters$12(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$B9Gws6DkOiL0N5PTboabt5X-4ic(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$getProperty$10(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$IySdDntOfATnq6bxItcFGySQAWE(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$getChipsetVendorName$11(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$LLt3UJ9tMH5m79NJ3hI3SYOzpFE(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$start$3()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Lma4XjPG4JRD6yxw8rHCBDSWvZk(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$registerEventCallback$2(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$PcMo4rM79XtuTmh26uE6xBfkFYI(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$readFile$9(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$TxfXuaM5G_s78HDvKoy_KzYTv8g(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$getChipInternal$5(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ViinchK2mIoltmlwmmAxb6pLBi0(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$isStarted$4()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Y63maKsJ4efLgqnIpdhzqKPYmLg(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$getChipIds$1()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$iAt7p6cwS-DB4EQyX4WIfcfVfFc(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$getChip$0(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$nr--yOb6qqQPsiyVMLVL05CMzjU(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$readFile$8(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$vOlUXdO1PJ5lKd5BCq5s0Gy-eaM(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->lambda$getChipIdsInternal$6(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalCallback10(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mHalCallback10:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmServiceManager(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifi(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minitWifiIfNecessaryLocked(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->initWifiIfNecessaryLocked()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mDbg:Z

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda8;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mISehWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 27
    .line 28
    const-string v1, "SemWifiHalHidlImpl"

    .line 29
    .line 30
    const-string v2, "Creating the Wifi HAL using the HIDL implementation"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;

    .line 36
    .line 37
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;

    .line 41
    .line 42
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;

    .line 43
    .line 44
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifiDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;

    .line 48
    .line 49
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallback;

    .line 50
    .line 51
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallback;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mHalCallback10:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;

    .line 55
    .line 56
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;

    .line 57
    .line 58
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiEventCallbackV15;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mHalCallback15:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiEventCallback;

    .line 62
    .line 63
    return-void
.end method

.method private checkHalVersionByInterfaceName(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 6
    .line 7
    const-string v2, "SemWifiHalHidlImpl"

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string p0, "checkHalVersionByInterfaceName called but mServiceManager is null!?"

    .line 12
    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;)B

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_2
    :goto_0
    return v0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    const-string v1, "Exception while operating on IServiceManager: "

    .line 28
    .line 29
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "getTransport"

    .line 33
    .line 34
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0
.end method

.method private getChipIdsInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->getChipIds(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$getChipIdsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    return-object p0
.end method

.method private getChipInternal(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p2, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->getChip(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$getChipCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p2

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 24
    .line 25
    return-object p0
.end method

.method private static getServiceManager()Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.hidl.manager@1.2::IServiceManager"

    .line 3
    .line 4
    const-string v2, "default"

    .line 5
    .line 6
    invoke-static {v1, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v2, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    instance-of v4, v3, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    check-cast v3, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    new-instance v3, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager$Proxy;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager$Proxy;-><init>(Landroid/os/IHwBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x0

    .line 40
    :cond_2
    if-ge v5, v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    check-cast v6, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    return-object v3

    .line 57
    :catch_0
    :cond_3
    :goto_0
    return-object v0

    .line 58
    :catch_1
    move-exception v1

    .line 59
    const-string v2, "Exception getting IServiceManager: "

    .line 60
    .line 61
    const-string v3, "SemWifiHalHidlImpl"

    .line 62
    .line 63
    invoke-static {v2, v1, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.hardware.wifi@1.6::IWifi"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "1.6"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "android.hardware.wifi@1.5::IWifi"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p0, "1.5"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "android.hardware.wifi@1.4::IWifi"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string p0, "1.4"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string v0, "android.hardware.wifi@1.3::IWifi"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const-string p0, "1.3"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    const-string v0, "android.hardware.wifi@1.2::IWifi"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const-string p0, "1.2"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    const-string v0, "android.hardware.wifi@1.1::IWifi"

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    const-string p0, "1.1"

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_5
    const-string p0, "1.0"

    .line 68
    .line 69
    return-object p0
.end method

.method protected static halToFrameworkWifiStatusCode(I)I
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v1, "Invalid WifiStatusCode received: "

    .line 7
    .line 8
    const-string v2, "SemWifiHalHidlImpl"

    .line 9
    .line 10
    invoke-static {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :pswitch_0
    return v0

    .line 14
    :pswitch_1
    const/16 p0, 0x8

    .line 15
    .line 16
    return p0

    .line 17
    :pswitch_2
    const/4 p0, 0x7

    .line 18
    return p0

    .line 19
    :pswitch_3
    const/4 p0, 0x6

    .line 20
    return p0

    .line 21
    :pswitch_4
    const/4 p0, 0x5

    .line 22
    return p0

    .line 23
    :pswitch_5
    const/4 p0, 0x4

    .line 24
    return p0

    .line 25
    :pswitch_6
    const/4 p0, 0x3

    .line 26
    return p0

    .line 27
    :pswitch_7
    const/4 p0, 0x2

    .line 28
    return p0

    .line 29
    :pswitch_8
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :pswitch_9
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with remote exception: "

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "SemWifiHalHidlImpl"

    .line 22
    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 28
    .line 29
    return-void
.end method

.method private initISehWifiIfNecessary()V
    .locals 6

    .line 1
    const-string v0, "Exception while operating on ISehWifi: "

    .line 2
    .line 3
    const-string v1, "Exception(2) while operating on ISehWifi: "

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mDbg:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, "SemWifiHalHidlImpl"

    .line 10
    .line 11
    const-string v3, "initISehWifiIfNecessary"

    .line 12
    .line 13
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getSehWifiServiceMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iput-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    const-string p0, "SemWifiHalHidlImpl"

    .line 36
    .line 37
    const-string v3, "ISehWifi not (yet) available - but have a listener for it ..."

    .line 38
    .line 39
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    return-void

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mISehWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 49
    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    invoke-interface {v3, p0, v4, v5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    const-string p0, "SemWifiHalHidlImpl"

    .line 59
    .line 60
    const-string v3, "Error on linkToDeath on ISehWifi - will retry later"

    .line 61
    .line 62
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_4
    monitor-exit v2

    .line 66
    return-void

    .line 67
    :goto_0
    const-string v0, "SemWifiHalHidlImpl"

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    const-string v1, "SemWifiHalHidlImpl"

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_2
    monitor-exit v2

    .line 103
    return-void

    .line 104
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    throw p0
.end method

.method private initServiceManagerIfNecessaryLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 2
    .line 3
    const-string v1, "SemWifiHalHidlImpl"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "mServiceManager already exists"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "initServiceManagerIfNecessaryLocked"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p0, "Failed to get IServiceManager instance"

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$ServiceManagerDeathRecipient;

    .line 34
    .line 35
    invoke-interface {v0, v3}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-string v0, "Error on linkToDeath on IServiceManager"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 52
    .line 53
    const-string v3, "android.hardware.wifi@1.0::IWifi"

    .line 54
    .line 55
    const-string v4, ""

    .line 56
    .line 57
    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    .line 58
    .line 59
    invoke-interface {v0, v3, v4, v5}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    const-string v0, "Failed to register a listener for IWifi service"

    .line 66
    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->isSupportedInternal()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mIsVendorHalSupported:Z

    .line 77
    .line 78
    return-void

    .line 79
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v4, "Exception while operating on IServiceManager: "

    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 97
    .line 98
    return-void
.end method

.method private initWifiIfNecessaryLocked()V
    .locals 6

    .line 1
    const-string v0, "mWifi was retrieved. HAL is running version "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 4
    .line 5
    const-string v2, "SemWifiHalHidlImpl"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p0, "mWifi already exists"

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v1, "initWifiIfNecessaryLocked"

    .line 16
    .line 17
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getWifiServiceMockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string p0, "IWifi not (yet) available - but have a listener for it ..."

    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifiDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$WifiDeathRecipient;

    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    const-string p0, "Error on linkToDeath on IWifi - will retry later"

    .line 47
    .line 48
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->registerHalCallback()Z

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getVersion()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_0
    const-string v0, "Exception while operating on IWifi: "

    .line 76
    .line 77
    invoke-static {v0, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, " failed with status: "

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "SemWifiHalHidlImpl"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method private isStartedInternal(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->isStarted()Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private isSupportedInternal()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "SemWifiHalHidlImpl"

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "isSupported: called but mServiceManager is null!?"

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;->listManifestByInterface()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    xor-int/lit8 p0, p0, 0x1

    .line 23
    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "Exception while operating on IServiceManager: "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method private synthetic lambda$getChip$0(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 1

    .line 1
    const-string v0, "getChip"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getChipInternal(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getChipIds$1()Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "getChipIds"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getChipIdsInternal(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getChipIdsInternal$6(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$getChipInternal$5(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static synthetic lambda$getChipsetVendorName$11(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method private static synthetic lambda$getProperty$10(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private static synthetic lambda$getTwtParameters$12(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method private synthetic lambda$isStarted$4()Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "isStarted"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->isStartedInternal(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$new$7(J)V
    .locals 3

    .line 1
    const-string v0, "SemWifiHalHidlImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ISehWifi HAL service died! Have a listener for it ... cookie="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    const/4 p2, 0x0

    .line 24
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 25
    .line 26
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method private static synthetic lambda$readFile$8(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private static synthetic lambda$readFile$9(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerEventCallback$2(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->registerEventCallbackInternal(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private synthetic lambda$start$3()Ljava/lang/Integer;
    .locals 1

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->startInternal(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private registerEventCallbackInternal(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 2
    .line 3
    const-string v1, "SemWifiHalHidlImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "Framework callback is already registered"

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string p0, "Cannot register a null callback"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->registerHalCallback()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return v2

    .line 29
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method private registerHalCallback()Z
    .locals 4

    .line 1
    const-string v0, "registerHalCallback"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getWifiV1_5Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifi;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mHalCallback15:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiEventCallback;

    .line 11
    .line 12
    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifi;->registerEventCallback_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mHalCallback10:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;

    .line 22
    .line 23
    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string v2, "SemWifiHalHidlImpl"

    .line 34
    .line 35
    const-string v3, "Unable to register HAL callback"

    .line 36
    .line 37
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v1
.end method

.method protected static serviceDeclared()Z
    .locals 4

    .line 1
    const-string v0, "SemWifiHalHidlImpl"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getServiceManager()Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v2, "Unable to get service manager to check for service."

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const-string v3, "android.hardware.wifi@1.0::IWifi"

    .line 17
    .line 18
    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;)B

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_1
    return v1

    .line 27
    :catch_0
    const-string v2, "Unable to check for existence of HIDL service."

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v1
.end method

.method private startInternal(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "SemWifiHalHidlImpl"

    .line 2
    .line 3
    const-string v1, "startInternal"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->start()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->halToFrameworkWifiStatusCode(I)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 p0, 0x9

    .line 26
    .line 27
    return p0
.end method

.method private validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string p3, "Cannot call "

    .line 8
    .line 9
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " because mWifi is null"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifiHalHidlImpl"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :cond_0
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mDbg:Z

    .line 7
    .line 8
    return-void
.end method

.method public getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getChip"

    .line 5
    .line 6
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda6;

    .line 7
    .line 8
    invoke-direct {v2, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public getChipIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getChipIds"

    .line 5
    .line 6
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda4;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Exception on getChipsetVendorName: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getSehWifiForV2_2Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;

    .line 24
    .line 25
    invoke-direct {v5, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getChipsetVendorName(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getChipsetVendorNameCallback;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 36
    .line 37
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    iget-object p0, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    :try_start_2
    const-string p0, "SemWifiHalHidlImpl"

    .line 52
    .line 53
    const-string v3, "Failed to get vendor name"

    .line 54
    .line 55
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    return-object v2

    .line 60
    :cond_1
    :try_start_4
    const-string p0, "SemWifiHalHidlImpl"

    .line 61
    .line 62
    const-string v3, "sehWifiV2_2 is null"

    .line 63
    .line 64
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_5
    monitor-exit v1

    .line 68
    return-object v2

    .line 69
    :goto_0
    const-string v3, "SemWifiHalHidlImpl"

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    monitor-exit v1

    .line 87
    return-object v2

    .line 88
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    throw p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public getProperty(I)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Exception on getVendorProperty: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string p0, "SemWifiHalHidlImpl"

    .line 12
    .line 13
    const-string p1, "getVendorProperty: called but mSehWifi is null"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return-object v3

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 28
    .line 29
    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/HidlSupport$Mutable;I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, p1, v4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->getProperty(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$getPropertyCallback;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    :try_start_2
    monitor-exit v1

    .line 43
    return-object p0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p1, "SemWifiHalHidlImpl"

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    monitor-exit v1

    .line 63
    return-object v3

    .line 64
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0
.end method

.method protected getSehWifiForV2_2Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method protected getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method protected getSehWifiServiceMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;
    .locals 2

    .line 1
    const/4 p0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->getService(Z)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "Exception getting ISehWifi service: "

    .line 9
    .line 10
    const-string v1, "SemWifiHalHidlImpl"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method protected getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getServiceManager()Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Exception on getTwtParameters: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getSehWifiForV2_2Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;

    .line 24
    .line 25
    invoke-direct {v5, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getTwtParameters(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getTwtParametersCallback;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 36
    .line 37
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    new-instance p0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "minServicePeriod"

    .line 47
    .line 48
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v5, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;

    .line 51
    .line 52
    iget v5, v5, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;->minTwtServicePeriod:I

    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v3, "minInterval"

    .line 62
    .line 63
    iget-object v4, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;

    .line 66
    .line 67
    iget v4, v4, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;->minTwtInterval:I

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    return-object p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    :try_start_2
    const-string p0, "SemWifiHalHidlImpl"

    .line 83
    .line 84
    const-string v3, "Failed to get TWT related parameters"

    .line 85
    .line 86
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    return-object v2

    .line 91
    :cond_1
    :try_start_4
    const-string p0, "SemWifiHalHidlImpl"

    .line 92
    .line 93
    const-string v3, "getTwtParameters: called but sehWifiV2_1 is null"

    .line 94
    .line 95
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_5
    monitor-exit v1

    .line 99
    return-object v2

    .line 100
    :goto_0
    const-string v3, "SemWifiHalHidlImpl"

    .line 101
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    monitor-exit v1

    .line 118
    return-object v2

    .line 119
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    throw p0
.end method

.method protected getWifiServiceMockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;
    .locals 2

    .line 1
    const/4 p0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->getService(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "Exception getting IWifi service: "

    .line 9
    .line 10
    const-string v1, "SemWifiHalHidlImpl"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method protected getWifiV1_5Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifi;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifi;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "SemWifiHalHidlImpl"

    .line 5
    .line 6
    const-string v2, "Initializing the WiFi HAL"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->initServiceManagerIfNecessaryLocked()V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mIsVendorHalSupported:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->initWifiIfNecessaryLocked()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->initISehWifiIfNecessary()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public isInitializationComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public isStarted()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isStarted"

    .line 5
    .line 6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda4;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public isSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mIsVendorHalSupported:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public readFile(I)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Exception on getVendorConnFileInfo: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string p0, "SemWifiHalHidlImpl"

    .line 12
    .line 13
    const-string p1, "getVendorConnFileInfo: called but mSehWifi is null"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return-object v3

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-direct {p0, v2, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/HidlSupport$Mutable;I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v4, p1, p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->readFile_2_3(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$readFile_2_3Callback;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 46
    .line 47
    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-direct {v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/HidlSupport$Mutable;I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, p1, v4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->readFile(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$readFileCallback;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object p0, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    :try_start_2
    monitor-exit v1

    .line 61
    return-object p0

    .line 62
    :goto_1
    const-string p1, "SemWifiHalHidlImpl"

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    monitor-exit v1

    .line 80
    return-object v3

    .line 81
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw p0
.end method

.method public registerEventCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "registerEventCallback"

    .line 5
    .line 6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda10;

    .line 9
    .line 10
    invoke-direct {v3, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public removeFile(I)Z
    .locals 4

    .line 1
    const-string v0, "Exception on removeVendorConnFile: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string p0, "SemWifiHalHidlImpl"

    .line 12
    .line 13
    const-string p1, "removeVendorConnFile: called but mSehWifi is null"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return v3

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->removeFile_2_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 36
    .line 37
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->removeFile(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    :cond_2
    :try_start_2
    monitor-exit v1

    .line 47
    return v3

    .line 48
    :goto_1
    const-string p1, "SemWifiHalHidlImpl"

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    monitor-exit v1

    .line 66
    return v3

    .line 67
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    throw p0
.end method

.method public removeLogFiles()Z
    .locals 5

    .line 1
    const-string v0, "Exception on removeVendorLogFiles: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "SemWifiHalHidlImpl"

    .line 12
    .line 13
    const-string v0, "removeVendorLogFiles: called but mSehWifi is null"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return v2

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->removeLogFiles()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    :cond_1
    :try_start_2
    monitor-exit v1

    .line 32
    return v2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v3, "SemWifiHalHidlImpl"

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    return v2

    .line 53
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw p0
.end method

.method public setProperty(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Exception on setVendorProperty: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "SemWifiHalHidlImpl"

    .line 12
    .line 13
    const-string p1, "setVendorProperty: called but mSehWifi is null"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return v2

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->setProperty(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    :cond_1
    :try_start_2
    monitor-exit v1

    .line 36
    return v2

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string p1, "SemWifiHalHidlImpl"

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return v2

    .line 57
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw p0
.end method

.method public start()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "SemWifiHalHidlImpl"

    .line 5
    .line 6
    const-string v2, "start"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v1, "start"

    .line 12
    .line 13
    const/16 v2, 0x9

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda4;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    monitor-exit v0

    .line 36
    return p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public updateFile(I)Z
    .locals 4

    .line 1
    const-string v0, "Exception on updateVendorConnFile: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string p0, "SemWifiHalHidlImpl"

    .line 12
    .line 13
    const-string p1, "updateVendorConnFile: called but mSehWifi is null"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return v3

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->updateFile_2_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 36
    .line 37
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->updateFile(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    :cond_2
    :try_start_2
    monitor-exit v1

    .line 47
    return v3

    .line 48
    :goto_1
    const-string p1, "SemWifiHalHidlImpl"

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    monitor-exit v1

    .line 66
    return v3

    .line 67
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    throw p0
.end method

.method public writeFile(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "Exception on writeVendorConnFile: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-interface {v3, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->writeFile_2_3(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    .line 23
    .line 24
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->writeFile(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    :cond_1
    :try_start_1
    monitor-exit v1

    .line 34
    return v2

    .line 35
    :goto_1
    const-string p1, "SemWifiHalHidlImpl"

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    monitor-exit v1

    .line 53
    return v2

    .line 54
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method
