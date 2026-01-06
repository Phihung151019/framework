.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiP2pIface"


# instance fields
.field private final mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/ISemWifiP2pIface;


# direct methods
.method public static synthetic $r8$lambda$5qnCIhcf9BROBbPc-vWTJJpaXXU(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->lambda$getName$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->createWifiP2pIfaceAidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceAidlImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/ISemWifiP2pIface;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->createWifiP2pIfaceHidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/ISemWifiP2pIface;

    return-void
.end method

.method private synthetic lambda$getName$0()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/ISemWifiP2pIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/p2p/ISemWifiP2pIface;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/ISemWifiP2pIface;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "Cannot call "

    .line 6
    .line 7
    const-string p3, " because mWifiP2pIface is null"

    .line 8
    .line 9
    invoke-static {p0, p1, p3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "SemWifiP2pIface"

    .line 14
    .line 15
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_0
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method protected createWifiP2pIfaceAidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceAidlImpl;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceAidlImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceAidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected createWifiP2pIfaceHidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "getName"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    return-object p0
.end method
