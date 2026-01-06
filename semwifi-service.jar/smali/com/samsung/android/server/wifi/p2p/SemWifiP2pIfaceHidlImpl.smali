.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/p2p/ISemWifiP2pIface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINK:I = 0x0

.field private static final NUM_OF_LINKS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pIfaceHidlImpl"


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private mWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;


# direct methods
.method public static synthetic $r8$lambda$Qf5LPSgjNfpFxDSjDSatSxiwp2E(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->lambda$getName$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$ndDSBRLybv28nKpJBUScw2eFDvE(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->lambda$getNameInternal$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->mWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    .line 5
    .line 6
    return-void
.end method

.method private getNameInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->mWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;)V

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
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

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
    const-string p2, "SemWifiP2pIfaceHidlImpl"

    .line 22
    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->mWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

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
    const-string p1, "SemWifiP2pIfaceHidlImpl"

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

.method private synthetic lambda$getName$0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getName"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->getNameInternal(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getNameInternal$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-void
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->mWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

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
    const-string p1, "SemWifiP2pIfaceHidlImpl"

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
.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "getName"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
