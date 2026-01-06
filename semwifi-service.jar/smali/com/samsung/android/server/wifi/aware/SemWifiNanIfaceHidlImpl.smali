.class public Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINK:I = 0x0

.field private static final NUM_OF_LINKS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiNanIfaceHidlImpl"


# instance fields
.field private mFrameworkCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

.field private mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;

.field private mIfaceName:Ljava/lang/String;

.field private mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;


# direct methods
.method public static synthetic $r8$lambda$2_0PNckIGDi4mCBSOIHZYEKR5QA(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->lambda$getName$1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$QlF4EYvYgP1b4ciANvuIfsvsTs4(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->lambda$registerFrameworkCallback$0(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$jtkC_kHqumaWD0J3YRxVCQ3aESM(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->lambda$getNameInternal$2(Ljava/lang/String;Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    .line 5
    .line 6
    new-instance p1, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;

    .line 12
    .line 13
    return-void
.end method

.method private getNameInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil$Mutable;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil$Mutable;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil$Mutable;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p0, v0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    return-object p0
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
    const-string p2, "SemWifiNanIfaceHidlImpl"

    .line 22
    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    .line 28
    .line 29
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
    const-string p1, "SemWifiNanIfaceHidlImpl"

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

.method private synthetic lambda$getName$1()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getName"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->getNameInternal(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getNameInternal$2(Ljava/lang/String;Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerFrameworkCallback$0(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "registerFrameworkCallback"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->registerFrameworkCallbackInternal(Ljava/lang/String;Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Z

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

.method private registerFrameworkCallbackInternal(Ljava/lang/String;Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 2
    .line 3
    const-string v1, "SemWifiNanIfaceHidlImpl"

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
    if-nez p2, :cond_1

    .line 15
    .line 16
    const-string p0, "Cannot register a null framework callback"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mockableCastTo_1_2()Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mockableCastTo_1_5()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mockableCastTo_1_6()Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;

    .line 37
    .line 38
    invoke-interface {v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->registerEventCallback_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->registerEventCallback_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;

    .line 57
    .line 58
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;

    .line 66
    .line 67
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    return v2

    .line 78
    :cond_5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    const/4 p0, 0x1

    .line 81
    return p0

    .line 82
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v2
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

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
    const-string p1, "SemWifiNanIfaceHidlImpl"

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
.method protected getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "getName"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method protected mockableCastTo_1_2()Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method protected mockableCastTo_1_4()Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method protected mockableCastTo_1_5()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method protected mockableCastTo_1_6()Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public registerFrameworkCallback(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "registerFrameworkCallback"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
