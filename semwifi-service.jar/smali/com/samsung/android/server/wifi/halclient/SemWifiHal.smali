.class public Lcom/samsung/android/server/wifi/halclient/SemWifiHal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiStatusCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiHal"

.field public static final WIFI_STATUS_ERROR_BUSY:I = 0x8

.field public static final WIFI_STATUS_ERROR_INVALID_ARGS:I = 0x7

.field public static final WIFI_STATUS_ERROR_NOT_AVAILABLE:I = 0x5

.field public static final WIFI_STATUS_ERROR_NOT_STARTED:I = 0x6

.field public static final WIFI_STATUS_ERROR_NOT_SUPPORTED:I = 0x4

.field public static final WIFI_STATUS_ERROR_REMOTE_EXCEPTION:I = 0xa

.field public static final WIFI_STATUS_ERROR_UNKNOWN:I = 0x9

.field public static final WIFI_STATUS_ERROR_WIFI_CHIP_INVALID:I = 0x1

.field public static final WIFI_STATUS_ERROR_WIFI_IFACE_INVALID:I = 0x2

.field public static final WIFI_STATUS_ERROR_WIFI_RTT_CONTROLLER_INVALID:I = 0x3

.field public static final WIFI_STATUS_SUCCESS:I


# instance fields
.field private mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;


# direct methods
.method public static synthetic $r8$lambda$CSeL3k5U6rU-3lb7AX-Vc_udjSM(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$removeFile$12(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$EIDUGneLxGwvFFkcqH7JlkTsctI(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$updateFile$11(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$JZMa6fHUNbZF_zJlbAIxmUDRMkA(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$getChipsetVendorName$14()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$K8TWtSgOmjwC_kB7I9lJQ75ghHE(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$isSupported$1()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$KcTrX6CYPJuxgHifFnJZiiEjNnM(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$removeLogFiles$13()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Ls81xjL6rNM7kihREul5Zfc-bLY(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$isStarted$3()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$PScp0vfGIF0sXFO7Dec7jo5whQc(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$start$2()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$YTHzDH92729QFwBGcpNuxOsUiF8(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$getTwtParameters$15()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$coWDJQZavlYcIeseOhSQWk5slRo(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$getProperty$10(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$gRCWptfDl2UOHMZjrOZdynwkHf0(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$getChip$4(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$h9VUprr25vfdOfc2H9AjqMjKj7M(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$isInitializationComplete$0()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$j0j1UErzIIw87p8z486gZIsJ138(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$registerEventCallback$6(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$lSxJOJQT1zTOGr_782PpwAKQFr0(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$writeFile$7(ILjava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$oQ7Ap8ERIxpZEMrbVFLxqqizsFs(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$getChipIds$5()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$qo4tENfP98ifQ5ZTe77rkPTKYFU(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$setProperty$9(ILjava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$zWlBfcNQEGzxtyhb1Ltr4z73A6M(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->lambda$readFile$8(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->createWifiHalMockable()Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$getChip$4(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getChipIds$5()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->getChipIds()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getChipsetVendorName$14()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->getChipsetVendorName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getProperty$10(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->getProperty(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getTwtParameters$15()Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->getTwtParameters()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$isInitializationComplete$0()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->isInitializationComplete()Z

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

.method private synthetic lambda$isStarted$3()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->isStarted()Z

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

.method private synthetic lambda$isSupported$1()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->isSupported()Z

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

.method private synthetic lambda$readFile$8(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->readFile(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$registerEventCallback$6(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->registerEventCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z

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

.method private synthetic lambda$removeFile$12(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->removeFile(I)Z

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

.method private synthetic lambda$removeLogFiles$13()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->removeLogFiles()Z

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

.method private synthetic lambda$setProperty$9(ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->setProperty(ILjava/lang/String;)Z

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

.method private synthetic lambda$start$2()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->start()I

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

.method private synthetic lambda$updateFile$11(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->updateFile(I)Z

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

.method private synthetic lambda$writeFile$7(ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->writeFile(ILjava/lang/String;)Z

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "Cannot call "

    .line 6
    .line 7
    const-string p3, " because mWifiHal is null"

    .line 8
    .line 9
    invoke-static {p0, p1, p3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "SemWifiHal"

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
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method protected createWifiHalMockable()Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;
    .locals 1

    .line 1
    const-string p0, "createWifiHalMockable"

    .line 2
    .line 3
    const-string v0, "SemWifiHal"

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->serviceDeclared()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p0, "SemWifiHalHidlImpl"

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->serviceDeclared()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p0, "SemWifiHalAidlImpl"

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;-><init>()V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const-string p0, "No HIDL or AIDL service available for the Wifi Vendor HAL."

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;II)V

    .line 5
    .line 6
    .line 7
    const-string p1, "getChip"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 15
    .line 16
    return-object p0
.end method

.method public getChipIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getChipIds"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/List;

    .line 15
    .line 16
    return-object p0
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getChipsetVendorName"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->getInterfaceVersion()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getProperty(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;II)V

    .line 5
    .line 6
    .line 7
    const-string p1, "getProperty"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .locals 3
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
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getTwtParameters"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 15
    .line 16
    return-object p0
.end method

.method public initialize()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->initialize()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;->invalidate()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public isInitializationComplete()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)V

    .line 7
    .line 8
    .line 9
    const-string v2, "isInitializationComplete"

    .line 10
    .line 11
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public isStarted()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)V

    .line 7
    .line 8
    .line 9
    const-string v2, "isStarted"

    .line 10
    .line 11
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public isSupported()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)V

    .line 7
    .line 8
    .line 9
    const-string v2, "isSupported"

    .line 10
    .line 11
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public readFile(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;II)V

    .line 5
    .line 6
    .line 7
    const-string p1, "readFile"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public registerEventCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "registerEventCallback"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method public removeFile(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;II)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeFile"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public removeLogFiles()Z
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "removeLogFiles"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method public setProperty(ILjava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;ILjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "setProperty"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public start()I
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;I)V

    .line 11
    .line 12
    .line 13
    const-string v2, "start"

    .line 14
    .line 15
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public updateFile(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;II)V

    .line 7
    .line 8
    .line 9
    const-string p1, "updateFile"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public writeFile(ILjava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;ILjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "writeFile"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
