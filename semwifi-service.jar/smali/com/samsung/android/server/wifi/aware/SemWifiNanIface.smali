.class public Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;,
        Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$NanStatusCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiNanIface"


# instance fields
.field private final mWifiNanIface:Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;


# direct methods
.method public static synthetic $r8$lambda$2-0JicnQ-vQ30EjXeH0_xcih3C8(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->lambda$getName$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$z8lCy32TEusFfGYQ9ItcYjRnp1o(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->lambda$registerFrameworkCallback$1(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->createWifiNanIfaceAidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->createWifiNanIfaceHidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;

    return-void
.end method

.method private synthetic lambda$getName$0()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$registerFrameworkCallback$1(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;->registerFrameworkCallback(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Z

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "Cannot call "

    .line 6
    .line 7
    const-string p3, " because mWifiNanIface is null"

    .line 8
    .line 9
    invoke-static {p0, p1, p3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "SemWifiNanIface"

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
.method protected createWifiNanIfaceAidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected createWifiNanIfaceHidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "getName"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method public registerFrameworkCallback(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "registerFrameworkCallback"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method
