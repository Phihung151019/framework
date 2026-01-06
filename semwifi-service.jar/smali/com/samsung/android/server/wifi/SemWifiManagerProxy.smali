.class public Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;,
        Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;
    }
.end annotation


# static fields
.field public static final ACTION_CARRIER_CHANGED:Ljava/lang/String; = "com.samsung.carrier.action.CARRIER_CHANGED"

.field public static final DRIVER_SUPPORTS_24GHZ_BAND:I = 0x1

.field public static final DRIVER_SUPPORTS_5GHZ_BAND:I = 0x2

.field public static final DRIVER_SUPPORTS_6GHZ_BAND:I = 0x4

.field public static final ERROR_EXCEPTION:I = -0x1

.field public static final EXTRA_CARRIER_STATE:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_STATE"

.field public static final OPERATION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemWifiManagerProxy"


# instance fields
.field listener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoJoinEnabled:Z

.field private mAutojoinDisallowedSecurityTypes:[I

.field private final mBandCombinationLock:Ljava/lang/Object;

.field private final mBootCompletedListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBssidBlocklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field mBssidBlocklistListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBssidBlocklistLock:Ljava/lang/Object;

.field private final mCarrierConfigChangeListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentNetwork:Landroid/net/Network;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private final mFactoryMacAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactoryMacLock:Ljava/lang/Object;

.field private final mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

.field private final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field mIsQueryAutoJoinDisallowedSecurityTypesListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "[I>;"
        }
    .end annotation
.end field

.field private mIsQueryAutoJoinMethodResult:I

.field private mIsQueryBssidBlocklistMethodResult:I

.field private mLastWifiControlInfo:Lcom/samsung/android/server/wifi/db/WifiControlInfo;

.field private final mLocationMode:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLocationModeChagedListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationProviderChagedListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMloAssociationLinkCount:I

.field mMaxMloAssociationLinkCountListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMloStrLinkCount:I

.field mMaxMloStrLinkCountListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetdService:Landroid/net/INetd;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private final mP2pStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:I

.field private final mRssiBroadcastListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanBroadcastListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mScreenStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimStateChagedListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSimultaneousBandCombinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSimultaneousBandCombinationsListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "[I>;>;"
        }
    .end annotation
.end field

.field private final mSupportedBands:I

.field private final mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWepAllowed:Z

.field mWepAllowedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWifiApStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiAwareStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiConfigChangedListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private final mWifiNetworkStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWifiStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-3AzX7WCtShUiQf22BVOl86cl2g(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$5(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$-5vd43LGJEu9S9gB3rRyjxMEOQA(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$11(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$-_IzyvgJsVicU-ao7q4MxAmTHNY(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$9(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$0cXfTRHjO-6kykDUZtd9CTqmuQ8(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$13(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$0meUtLTR6tfVbogu-CNk_eHiBzA(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$20(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$4zANMXTKZ_Yz1rgBFtrGQKuOQ7U(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$24(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$60XpNF8yfrS3w0g19kjcxxYbX7A(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onBootCompleted$32(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$7PxJ3eAwINsw-6y_ORsmzvcju70(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$21(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$8pogaHlCigU7eP-DHi80_8s9sMQ(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$7(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$APWJxWMyXnB5gfwakunAO3qBBy4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onScanResult$44()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$CxNCp9QSzPuGvL6fLWJLVGDaXyE(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onP2pConnectionStateChanged$30(ZZILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$G3Si9tQ4N8exAKUcE-_WX8sYzV0(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerP2pStateListener$25(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$LtUV16D4wlF9kI8jSSN5ZC7GdJM(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$12(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$MBg3JilRWLEa2upccBa-D54_r3k(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$18(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$NXAXy9olQK2zFFk06Sn3iQLSEKo(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onLocationModeChaged$34()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$NqYFPKDIEe9IeKppZDZoWHlRqME(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onWifiAwareConnectionStateChanged$29(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$OtYSoosZ6_8x8EBNmU2stETF7uc(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onNetworkStateChanged$39(Landroid/net/NetworkInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$RAIFz9t8YhWGpPBt8WewA1WxSiw(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$23(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$RXSGfam8L-PZLJ59EOj_GsDspnQ(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$3(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$UJsKpOn630WlQKI2L_2u7b82Gsw(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$10(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$UewzqCHkOx1YbH6VeNqNl5AK-zw(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onConfiguredNetworksChanged$40(ILandroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$WjSFp-3xk3a1xwwKZA5GTjOWX6s(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerWifiAwareStateListener$27(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$XDZCHxwtYZzZEjAMHsHCW49sXNM(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onRssiChanged$42()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Xp6rA0q_Olyn8JSaioXQg0DuHos(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$22(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Xq7s1KWWc0ibKE9upL3H5IELgEw(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$16(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ZJPxzhsVBIYLgNZvzYYDKiMIH9g(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onCarrierConfigChanged$33(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ZaWtjdiSGNLHG6AEzgvxDrNP7mo(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$15(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Zj_qvQgcTsZrFHBQP4_sxXr1T5w(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$1(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$aFYDuGTk-7WXE184zQqBeTO_MIo(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$6(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$abZGdfIb9Q-49oIHAKwQ6IhxhKI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onWifiStateChanged$37(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$amTa13yi0gr54IMyO0KUM8N9Zs4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onLinkConfiguredChanged$41()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$evBQX60XKMtIYrRCZHIPpGzii_M(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$14(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$hKfvyuOwPhTkFrCgV7hyMXZN9P4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterP2pStateListener$26(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$i79FJ5u_AbxRS2KfuoY4RI82Ujs(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onScreenStateChanged$31()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$jjNx_qAIpWeHaKssvKftImtabDU(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$initialize$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$l8870Ug0srDxVuEIGSzUbiTuRR4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$8(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$nBfYSgHvs1pg3iAgsw8dsohzXVw(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterWifiAwareStateListener$28(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$niG_y6OAR-Fs0IcKhiJhhFLnKVs(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onScanResult$43(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ppkFwU7yWFFU8Hlirq5_fCJ0Ni0(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onLocationProviderChaged$35()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$s526c37Ly6pYQ7hNoqqHL4A6CYQ(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onSimStateChanged$36(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$suL1zsomCMNd2qu0sZsSjQavRAM(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$17(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$tAY_Jr_n48zM6QkD0ceKytu2dTI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$2(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$v28SbaO6cdauvFiqTbPqP1FbII4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$onWifiApStateChanged$38(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$wjgyhPLu2tt0Wl1w-XFd2cU69BI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$unregisterListener$4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$xdX4q4mpuLJZlAVhUHhEcAX9AAU(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$registerListener$19(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBandCombinationLock(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBandCombinationLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBssidBlocklist(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklist:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBssidBlocklistLock(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklistLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimultaneousBandCombinations(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimultaneousBandCombinations:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoJoinEnabled(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutoJoinEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAutojoinDisallowedSecurityTypes(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutojoinDisallowedSecurityTypes:[I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsQueryAutoJoinMethodResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsQueryBssidBlocklistMethodResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryBssidBlocklistMethodResult:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxMloAssociationLinkCount(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloAssociationLinkCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxMloStrLinkCount(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloStrLinkCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWepAllowed(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWepAllowed:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$monBootCompleted(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onBootCompleted(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$monCarrierConfigChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onCarrierConfigChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monConfiguredNetworksChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onConfiguredNetworksChanged(ILandroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monLinkConfiguredChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onLinkConfiguredChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monLocationModeChaged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onLocationModeChaged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monLocationProviderChaged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onLocationProviderChaged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monNetworkStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onNetworkStateChanged(Landroid/net/NetworkInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monP2pConnectionStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onP2pConnectionStateChanged(ZZILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monRssiChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onRssiChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monScanResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onScanResult(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onScreenStateChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monSimStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onSimStateChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiApStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onWifiApStateChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiAwareConnectionStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onWifiAwareConnectionStateChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->onWifiStateChanged(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerExecutor;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/util/FeatureUtil;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const-string v1, "ro.product_ship"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    const/16 v3, 0xb

    .line 45
    .line 46
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacAddresses:Ljava/util/List;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/Object;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacLock:Ljava/lang/Object;

    .line 64
    .line 65
    const/16 v0, -0x7f

    .line 66
    .line 67
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssi:I

    .line 68
    .line 69
    new-instance v0, Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiStateListeners:Ljava/util/Set;

    .line 75
    .line 76
    new-instance v0, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApStateListeners:Ljava/util/Set;

    .line 82
    .line 83
    new-instance v0, Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    .line 89
    .line 90
    new-instance v0, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiConfigChangedListener:Ljava/util/Set;

    .line 96
    .line 97
    new-instance v0, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssiBroadcastListener:Ljava/util/Set;

    .line 103
    .line 104
    new-instance v0, Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenStateListeners:Ljava/util/Set;

    .line 110
    .line 111
    new-instance v0, Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBootCompletedListener:Ljava/util/Set;

    .line 117
    .line 118
    new-instance v0, Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationModeChagedListener:Ljava/util/Set;

    .line 124
    .line 125
    new-instance v0, Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationProviderChagedListener:Ljava/util/Set;

    .line 131
    .line 132
    new-instance v0, Ljava/util/HashSet;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimStateChagedListener:Ljava/util/Set;

    .line 138
    .line 139
    new-instance v0, Ljava/util/HashSet;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    .line 145
    .line 146
    new-instance v0, Ljava/util/HashSet;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mP2pStateListeners:Ljava/util/Set;

    .line 152
    .line 153
    new-instance v0, Ljava/util/HashSet;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiAwareStateListeners:Ljava/util/Set;

    .line 159
    .line 160
    new-instance v0, Ljava/util/HashSet;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCarrierConfigChangeListener:Ljava/util/Set;

    .line 166
    .line 167
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutoJoinEnabled:Z

    .line 168
    .line 169
    const/4 v0, -0x1

    .line 170
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 171
    .line 172
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$4;

    .line 173
    .line 174
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 175
    .line 176
    .line 177
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->listener:Ljava/util/function/Consumer;

    .line 178
    .line 179
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryBssidBlocklistMethodResult:I

    .line 180
    .line 181
    new-instance v3, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklist:Ljava/util/List;

    .line 187
    .line 188
    new-instance v3, Ljava/lang/Object;

    .line 189
    .line 190
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklistLock:Ljava/lang/Object;

    .line 194
    .line 195
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$5;

    .line 196
    .line 197
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 198
    .line 199
    .line 200
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklistListener:Ljava/util/function/Consumer;

    .line 201
    .line 202
    new-array v1, v1, [I

    .line 203
    .line 204
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutojoinDisallowedSecurityTypes:[I

    .line 205
    .line 206
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$6;

    .line 207
    .line 208
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 209
    .line 210
    .line 211
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinDisallowedSecurityTypesListener:Ljava/util/function/Consumer;

    .line 212
    .line 213
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloStrLinkCount:I

    .line 214
    .line 215
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloAssociationLinkCount:I

    .line 216
    .line 217
    new-instance v0, Landroid/util/ArraySet;

    .line 218
    .line 219
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimultaneousBandCombinations:Ljava/util/Set;

    .line 223
    .line 224
    new-instance v0, Ljava/lang/Object;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 227
    .line 228
    .line 229
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBandCombinationLock:Ljava/lang/Object;

    .line 230
    .line 231
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$7;

    .line 232
    .line 233
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 234
    .line 235
    .line 236
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloStrLinkCountListener:Ljava/util/function/Consumer;

    .line 237
    .line 238
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$8;

    .line 239
    .line 240
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$8;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 241
    .line 242
    .line 243
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloAssociationLinkCountListener:Ljava/util/function/Consumer;

    .line 244
    .line 245
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$9;

    .line 246
    .line 247
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$9;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 248
    .line 249
    .line 250
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimultaneousBandCombinationsListener:Ljava/util/function/Consumer;

    .line 251
    .line 252
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWepAllowed:Z

    .line 253
    .line 254
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$10;

    .line 255
    .line 256
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$10;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 257
    .line 258
    .line 259
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWepAllowedListener:Ljava/util/function/Consumer;

    .line 260
    .line 261
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 262
    .line 263
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 264
    .line 265
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 266
    .line 267
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 268
    .line 269
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    .line 270
    .line 271
    iput-object p6, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 272
    .line 273
    iput-object p7, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 274
    .line 275
    new-instance p2, Landroid/content/IntentFilter;

    .line 276
    .line 277
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string p3, "android.intent.action.SCREEN_ON"

    .line 281
    .line 282
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string p3, "android.intent.action.SCREEN_OFF"

    .line 286
    .line 287
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string p3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 291
    .line 292
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string p3, "android.net.wifi.STATE_CHANGE"

    .line 296
    .line 297
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string p3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 301
    .line 302
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string p5, "android.net.wifi.RSSI_CHANGED"

    .line 306
    .line 307
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string p5, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 311
    .line 312
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string p5, "android.net.wifi.SCAN_RESULTS"

    .line 316
    .line 317
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string p5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 321
    .line 322
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const-string p5, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 326
    .line 327
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string p6, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 331
    .line 332
    invoke-virtual {p2, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string p6, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 336
    .line 337
    invoke-virtual {p2, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string p5, "android.location.MODE_CHANGED"

    .line 344
    .line 345
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string p5, "android.location.PROVIDERS_CHANGED"

    .line 349
    .line 350
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const-string p5, "android.intent.action.BOOT_COMPLETED"

    .line 354
    .line 355
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string p5, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 359
    .line 360
    invoke-virtual {p2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->is24GHzBandSupported()Z

    .line 364
    .line 365
    .line 366
    move-result p5

    .line 367
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    .line 368
    .line 369
    .line 370
    move-result p6

    .line 371
    if-eqz p6, :cond_0

    .line 372
    .line 373
    or-int/lit8 p5, p5, 0x2

    .line 374
    .line 375
    :cond_0
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->is6GHzBandSupported()Z

    .line 376
    .line 377
    .line 378
    move-result p4

    .line 379
    if-eqz p4, :cond_1

    .line 380
    .line 381
    or-int/lit8 p5, p5, 0x4

    .line 382
    .line 383
    :cond_1
    iput p5, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSupportedBands:I

    .line 384
    .line 385
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;

    .line 386
    .line 387
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 388
    .line 389
    .line 390
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 391
    .line 392
    new-instance v3, Landroid/content/IntentFilter;

    .line 393
    .line 394
    invoke-direct {v3, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const/4 v5, 0x0

    .line 398
    const/4 v6, 0x2

    .line 399
    const-string v4, "android.permission.NETWORK_STACK"

    .line 400
    .line 401
    move-object v0, p1

    .line 402
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 403
    .line 404
    .line 405
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;

    .line 406
    .line 407
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 408
    .line 409
    .line 410
    const/4 p0, 0x2

    .line 411
    invoke-virtual {v0, p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 412
    .line 413
    .line 414
    return-void
.end method

.method private getLastCallerInfoForApi(ILjava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0, p2}, Landroid/net/wifi/WifiManager;->getLastCallerInfoForApi(ILjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private getOemNetd()Lcom/android/internal/net/IOemNetd;
    .locals 4

    .line 1
    const-string v0, "SemWifiManagerProxy"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    const-string v1, "netd"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "Failed to bind service netd, error="

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mNetdService:Landroid/net/INetd;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    const-string v1, "Can\'t bind service netd"

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception v1

    .line 65
    const-string v2, "Failed to get OemNetd listener "

    .line 66
    .line 67
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 71
    .line 72
    return-object p0
.end method

.method public static getWifiApStateByName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "[invalid state]"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "failed"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "enabled"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "enabling"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "disabled"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "disabling"

    .line 20
    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getWifiStateByName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "[invalid state]"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "unknown state"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "enabled"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "enabling"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string p0, "disabled"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const-string p0, "disabling"

    .line 31
    .line 32
    return-object p0
.end method

.method public static isSamsungAccountFamilySupported()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getRegion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "NA"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "KOR"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, "EUR"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public static isWifiApClientDeviceTypeSupported()Z
    .locals 3

    .line 1
    const-string v0, "ro.build.version.oneui"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v2, 0xeac4

    .line 9
    .line 10
    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    return v1
.end method

.method private synthetic lambda$initialize$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "power"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/PowerManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 23
    .line 24
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private synthetic lambda$onBootCompleted$32(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBootCompletedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;->onBootCompleted(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCarrierConfigChanged$33(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCarrierConfigChangeListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;->onCarrierConfigChanged(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onConfiguredNetworksChanged$40(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiConfigChangedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;->onConfiguredNetworksChanged(ILandroid/net/wifi/WifiConfiguration;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onLinkConfiguredChanged$41()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;->onLinkConfiguredChanged()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onLocationModeChaged$34()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationModeChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;->onLocationModeChange(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private synthetic lambda$onLocationProviderChaged$35()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationProviderChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;->onLocationProviderChaged()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onNetworkStateChanged$39(Landroid/net/NetworkInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 22
    .line 23
    if-ne v0, v2, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 38
    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "Network, NetworkInfo, WifiInfo "

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    const-string v0, ", DhcpInfo"

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string v0, ""

    .line 69
    .line 70
    :goto_1
    const-string v2, " were updated"

    .line 71
    .line 72
    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "SemWifiManagerProxy"

    .line 77
    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;

    .line 98
    .line 99
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;->onNetworkStateChanged(Landroid/net/NetworkInfo;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    return-void
.end method

.method private synthetic lambda$onP2pConnectionStateChanged$30(ZZILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mP2pStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;->onP2pConnectionStateChanged(ZZILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onRssiChanged$42()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssiBroadcastListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;->onRssiChanged(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private synthetic lambda$onScanResult$43(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;->onScanResultAvailable(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onScanResult$44()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;->onScanFailed()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onScreenStateChanged$31()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;->onScreenStateChanged(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSimStateChanged$36(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimStateChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;->onSimStateChanged(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWifiApStateChanged$38(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;->onWifiApStateChanged(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWifiAwareConnectionStateChanged$29(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiAwareStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;->onWifiAwareConnectionStateChanged(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWifiStateChanged$37(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacAddresses:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacAddresses:Ljava/util/List;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const-string v1, "SemWifiManagerProxy"

    .line 44
    .line 45
    const-string v2, "FactoryMac was updated"

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-ne v0, v2, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->reset()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiStateListeners:Ljava/util/Set;

    .line 73
    .line 74
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;

    .line 89
    .line 90
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;->onWifiStateChanged(II)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    return-void
.end method

.method private synthetic lambda$registerListener$1(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$11(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$13(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$15(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBootCompletedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$17(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCarrierConfigChangeListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$19(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationModeChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$21(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationProviderChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$23(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimStateChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$3(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$5(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$7(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiConfigChangedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$9(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssiBroadcastListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerP2pStateListener$25(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mP2pStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerWifiAwareStateListener$27(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiAwareStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$10(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssiBroadcastListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$12(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$14(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$16(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBootCompletedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$18(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCarrierConfigChangeListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$2(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$20(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationModeChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$22(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationProviderChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$24(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimStateChagedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$4(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$6(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiNetworkStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$8(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiConfigChangedListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterP2pStateListener$26(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mP2pStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterWifiAwareStateListener$28(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiAwareStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private onBootCompleted(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda17;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZI)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private onCarrierConfigChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private onConfiguredNetworksChanged(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda34;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda34;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ILandroid/net/wifi/WifiConfiguration;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private onLinkConfiguredChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private onLocationModeChaged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLocationMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private onLocationProviderChaged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private onNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 6
    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "SemWifiManagerProxy"

    .line 18
    .line 19
    const-string p1, "Could not get NetworkInfo"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private onP2pConnectionStateChanged(ZZILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    move-object v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZZILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private onRssiChanged(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssi:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "SemWifiManagerProxy"

    .line 23
    .line 24
    const-string p1, "Could not set rssi value. WifiInfo is null"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private onScanResult(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanBroadcastListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getScanResults(Z)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 18
    .line 19
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string p1, "SemWifiManagerProxy"

    .line 30
    .line 31
    const-string v0, "scan failed"

    .line 32
    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private onScreenStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private onSimStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda22;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda22;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private onWifiApStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda22;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda22;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private onWifiAwareConnectionStateChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda17;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZI)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private onWifiStateChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda25;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda25;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public addNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiManager$AddNetworkResult;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->networkId:I

    .line 8
    .line 9
    return p0
.end method

.method public addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addWifiLowLatencyLockListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->addWifiLowLatencyLockListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public allowAutojoinGlobal(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public allowAutojoinPasspoint(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearWifiConnectedNetworkScorer()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->clearWifiConnectedNetworkScorer()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public disconnect()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "SemWifiManagerProxy:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "on"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "off"

    .line 16
    .line 17
    :goto_0
    const-string v1, "Verbose logging is "

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "mWifiInfo "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "mScreenOn "

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "mWifiState "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiStateByName(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, "mNetworkInfo "

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, "mDhcpInfo "

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v1, "mCurrentNetwork "

    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v1, "mRssi "

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mRssi:I

    .line 175
    .line 176
    const-string v2, "mWifiApState "

    .line 177
    .line 178
    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApStateByName(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v1, "mAutojoinDisallowedSecurityTypes "

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getAutojoinDisallowedSecurityTypes()[I

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    .line 231
    .line 232
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->dump(Ljava/io/PrintWriter;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public enableNetwork(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getAutojoinDisallowedSecurityTypes()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutojoinDisallowedSecurityTypes:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getAutojoinGlobal()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutoJoinEnabled:Z

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mAutoJoinEnabled:Z

    .line 13
    .line 14
    return v0
.end method

.method public getBssidBlocklist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklistLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryBssidBlocklistMethodResult:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryBssidBlocklistMethodResult:I

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklist:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    new-instance p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConfiguredNetworks(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguredNetworks(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SemWifiManagerProxy"

    const-string v0, "WifiInfo was updated (sync)"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork(Z)Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentNetwork(Z)Landroid/net/Network;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    if-nez p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SemWifiManagerProxy"

    const-string v0, "Network was updated (sync)"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mCurrentNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo(Z)Landroid/net/DhcpInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDhcpInfo(Z)Landroid/net/DhcpInfo;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    if-nez p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SemWifiManagerProxy"

    const-string v0, "DhcpInfo was updated (sync)"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object p0
.end method

.method public getDriverSupportedBands()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSupportedBands:I

    .line 2
    .line 3
    return p0
.end method

.method public getFactoryMacAddresses()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFactoryMacAddresses:Ljava/util/List;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, [Ljava/lang/String;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public getLastCallerInfoForAp(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForApi(ILjava/util/function/BiConsumer;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getLastCallerInfoForScan(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForApi(ILjava/util/function/BiConsumer;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getLastCallerInfoForSta(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForApi(ILjava/util/function/BiConsumer;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getLastWifiCallerPackageIfKnown(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLastWifiControlInfo:Lcom/samsung/android/server/wifi/db/WifiControlInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLastWifiControlInfo:Lcom/samsung/android/server/wifi/db/WifiControlInfo;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const-string v1, "android"

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    move-object p1, v1

    .line 15
    :cond_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    if-ne p2, p0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->isValid(Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    return-object p1
.end method

.method public getMaxMloAssociationLinkCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloAssociationLinkCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxMloStrLinkCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloStrLinkCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getPasspointConfigurations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getScanResults(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScanResults(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSupportedSimultaneousBandCombinations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBandCombinationLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimultaneousBandCombinations:Ljava/util/Set;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

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

.method public getWepAllowed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWepAllowed:Z

    .line 2
    .line 3
    return p0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApStateCached()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public is24GHzBandSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is24GHzBandSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public is5GHzBandSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public is6GHzBandSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is6GHzBandSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isAutoWakeupEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isAutoWakeupEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isCarrierNetworkOffloadEnabled(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->isCarrierNetworkOffloadEnabled(IZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public isEnhancedOpenSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    .line 2
    .line 3
    const/16 v0, 0x1d

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->isSupported(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "SemWifiManagerProxy"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v1

    .line 23
    :goto_0
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 28
    .line 29
    return p0

    .line 30
    :cond_1
    const-string p0, "isPackageExists | package is not system app or not available"

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :catch_0
    const-string p0, "Package not found : "

    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public isPasspointSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isPasspointSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isSemWifiApDataUsageSupported()Z
    .locals 9

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    .line 4
    .line 5
    const-string v2, "SemWifiManagerProxy"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v5, "vendor.wifiap.newUX"

    .line 18
    .line 19
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    const-string p0, "wifiap newUX force enable "

    .line 26
    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v3

    .line 31
    :cond_0
    const/4 v5, 0x2

    .line 32
    if-ne v1, v5, :cond_1

    .line 33
    .line 34
    const-string p0, "wifiap newUX force disable "

    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v4

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiOnly()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    return v4

    .line 47
    :cond_2
    const-string v1, "ro.build.version.oneui"

    .line 48
    .line 49
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    const-string v1, "ro.kernel.version"

    .line 53
    .line 54
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    return v4

    .line 65
    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    float-to-double v5, v1

    .line 70
    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    .line 71
    .line 72
    cmpg-double v1, v5, v7

    .line 73
    .line 74
    if-gez v1, :cond_7

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v5, -0x1

    .line 81
    const-string v6, "vendor.wifiap.kernel.datausage"

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ne v1, v5, :cond_5

    .line 90
    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 92
    .line 93
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->isMBBPathsPresent()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eq p0, v3, :cond_4

    .line 98
    .line 99
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return v4

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const-string p0, "1"

    .line 106
    .line 107
    invoke-static {v6, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_0
    const-string v1, "Failed to get OemNetd listener "

    .line 112
    .line 113
    invoke-static {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return v4

    .line 120
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-eqz p0, :cond_6

    .line 125
    .line 126
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-nez p0, :cond_7

    .line 131
    .line 132
    :cond_6
    return v4

    .line 133
    :cond_7
    :goto_1
    return v3
.end method

.method public isSemWifiApGuestModeSupported()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "vendor.wifiap.newUX"

    .line 14
    .line 15
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const-string v0, "SemWifiManagerProxy"

    .line 20
    .line 21
    if-ne p0, v1, :cond_0

    .line 22
    .line 23
    const-string p0, "wifiap newUX force enable "

    .line 24
    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    const/4 v3, 0x2

    .line 30
    if-ne p0, v3, :cond_1

    .line 31
    .line 32
    const-string p0, "wifiap newUX force disable "

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    const-string p0, "ro.build.version.oneui"

    .line 39
    .line 40
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const v0, 0xc3b5

    .line 45
    .line 46
    .line 47
    if-lt p0, v0, :cond_2

    .line 48
    .line 49
    return v1

    .line 50
    :cond_2
    const-string p0, "SWA"

    .line 51
    .line 52
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getRegion()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    return v1

    .line 63
    :cond_3
    return v2
.end method

.method public isSemWifiApNsdSupported()Z
    .locals 4

    .line 1
    const-string v0, "ro.build.version.oneui"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v2, 0xea60

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-lt v0, v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "vendor.wifiap.nsd.service"

    .line 32
    .line 33
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const-string v0, "SemWifiManagerProxy"

    .line 38
    .line 39
    if-ne p0, v3, :cond_1

    .line 40
    .line 41
    const-string p0, "wifiap Nsd force enable "

    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_1
    const/4 v2, 0x2

    .line 48
    if-ne p0, v2, :cond_2

    .line 49
    .line 50
    const-string p0, "wifiap Nsd force disable "

    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_2
    return v1
.end method

.method public isTrustOnFirstUseSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    .line 2
    .line 3
    const/16 v0, 0x34

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->isSupported(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isVerboseLoggingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiApDataUsageWidgetSupported()Z
    .locals 1

    .line 1
    const-string v0, "com.sec.mhs.smartmhswidget"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isPackageExists(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiApEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0xd

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isWifiApEnabledCached()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApStateCached()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0xd

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isWifiApSmartPrioritySupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x3

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public isWifiOnly()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 16
    .line 17
    return p0
.end method

.method public isWifiStandardSupported(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->isWifiStandardSupported(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWpa3SaeSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mFeatureUtil:Lcom/samsung/android/server/wifi/util/FeatureUtil;

    .line 2
    .line 3
    const/16 v0, 0x1b

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->isSupported(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public queryAutoJoinDisallowedSecurityTypes()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinDisallowedSecurityTypesListener:Ljava/util/function/Consumer;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->getAutojoinDisallowedSecurityTypes(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    const-string p0, "SemWifiManagerProxy"

    .line 16
    .line 17
    const-string v0, "queryAutoJoinDisallowedSecurityTypes Exception occurred "

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public queryAutojoinGlobal()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->listener:Ljava/util/function/Consumer;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->queryAutojoinGlobal(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    :try_start_1
    const-string v1, "SemWifiManagerProxy"

    .line 21
    .line 22
    const-string v2, "queryAutojoinGlobal Exception occurred "

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 28
    .line 29
    return-void

    .line 30
    :goto_0
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryAutoJoinMethodResult:I

    .line 31
    .line 32
    throw v1
.end method

.method public queryBssidBlocklist()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklistLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, -0x1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklist:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mBssidBlocklistListener:Ljava/util/function/Consumer;

    .line 24
    .line 25
    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiManager;->getBssidBlocklist(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    :goto_0
    :try_start_1
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryBssidBlocklistMethodResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_3

    .line 33
    :catchall_1
    move-exception v2

    .line 34
    goto :goto_2

    .line 35
    :catch_0
    :try_start_2
    const-string v2, "SemWifiManagerProxy"

    .line 36
    .line 37
    const-string v3, "queryBssidBlocklist Exception occurred "

    .line 38
    .line 39
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    :try_start_3
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_2
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mIsQueryBssidBlocklistMethodResult:I

    .line 46
    .line 47
    throw v2

    .line 48
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    throw p0
.end method

.method public queryMaxMloAssociationLinkCount()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloAssociationLinkCountListener:Ljava/util/function/Consumer;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->getMaxMloAssociationLinkCount(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    const-string p0, "SemWifiManagerProxy"

    .line 16
    .line 17
    const-string v0, "queryMaxMloAssociationLinkCount Exception occurred "

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public queryMaxMloStrLinkCount()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mMaxMloStrLinkCountListener:Ljava/util/function/Consumer;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->getMaxMloStrLinkCount(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    const-string p0, "SemWifiManagerProxy"

    .line 16
    .line 17
    const-string v0, "queryMaxMloStrLinkCount Exception occurred "

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public querySupportedSimultaneousBandCombinations()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mSimultaneousBandCombinationsListener:Ljava/util/function/Consumer;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->getSupportedSimultaneousBandCombinations(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    const-string p0, "SemWifiManagerProxy"

    .line 16
    .line 17
    const-string v0, "querySupportedSimultaneousBandCombinations Exception occurred "

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public queryWepAllowed()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWepAllowedListener:Ljava/util/function/Consumer;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->queryWepAllowed(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    const-string p0, "SemWifiManagerProxy"

    .line 16
    .line 17
    const-string v0, "queryWepAllowed Exception occurred "

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public reconnect()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda18;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda41;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda20;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda30;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda30;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda33;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda33;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda9;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda23;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda23;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda15;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public removeOnWifiUsabilityStatsListener(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeOnWifiUsabilityStatsListener(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeWifiLowLatencyLockListener(Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeWifiLowLatencyLockListener(Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutoWakeupEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setAutoWakeupEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutojoinDisallowedSecurityTypes([I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setAutojoinDisallowedSecurityTypes - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SemWifiManagerProxy"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setAutojoinDisallowedSecurityTypes([I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setCarrierNetworkOffloadEnabled(IZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->setCarrierNetworkOffloadEnabled(IZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDefaultCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setDefaultCountryCode(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPnoScanEnabled(ZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setPnoScanEnabled(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPnoScanState(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setPnoScanState(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSilentRoamingEnabled(Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->setAssociatedNetworkSelectionOverride(I)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    xor-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->setSufficiencyCheckEnabledWhenScreenOff(Z)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->build()Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setSilentRoamingEnabledWhenScreenOn(Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->setAssociatedNetworkSelectionOverride(I)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    xor-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->setSufficiencyCheckEnabledWhenScreenOn(Z)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->build()Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setVerboseLoggingState(I)V
    .locals 2

    .line 1
    const-string v0, "verbose: "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiManagerProxy"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setWifiConnectedNetworkScorer(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiConnectedNetworkScorer(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setWifiEnabled(ZLjava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1}, Lcom/samsung/android/server/wifi/db/WifiControlInfo;-><init>(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mLastWifiControlInfo:Lcom/samsung/android/server/wifi/db/WifiControlInfo;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public startLocalOnlyHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startScan()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopSoftAp()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda18;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda41;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda20;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda30;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda30;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda33;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda33;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda9;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda23;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda23;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public unregisterWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManagerProxyThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda15;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
