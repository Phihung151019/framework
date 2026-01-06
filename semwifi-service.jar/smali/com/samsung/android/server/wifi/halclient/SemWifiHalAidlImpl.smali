.class public Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/ISemWifiHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiDeathRecipient;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;
    }
.end annotation


# static fields
.field private static final HAL_INSTANCE_NAME:Ljava/lang/String;

.field private static final SEH_HAL_INSTANCE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SemWifiHalAidlImpl"


# instance fields
.field private mFrameworkCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

.field private mHalCallback:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiEventCallback;

.field private final mLock:Ljava/lang/Object;

.field private mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

.field private mServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrameworkCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmWifi(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "/default"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->DESCRIPTOR:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->SEH_HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v0, "SemWifiHalAidlImpl"

    .line 12
    .line 13
    const-string v1, "Creating the Wifi HAL using the AIDL implementation"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiDeathRecipient;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 25
    .line 26
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;

    .line 27
    .line 28
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl$WifiEventCallback;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mHalCallback:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiEventCallback;

    .line 32
    .line 33
    return-void
.end method

.method private checkWifiAndLogFailure(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Unable to call "

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " because IWifi is null."

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
    const-string p1, "SemWifiHalAidlImpl"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
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
    const-string v2, "SemWifiHalAidlImpl"

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
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 3
    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p2, " failed with remote exception: "

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifiHalAidlImpl"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with service-specific exception: "

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "SemWifiHalAidlImpl"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private initializeISehWifi()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->getSehWifiServiceMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 6
    .line 7
    const-string p0, "SemWifiHalAidlImpl"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Unable to obtain the ISehWifi binder"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v0, "Obtained the ISehWifi binder. Local Version: 1"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private initializeIWifi()V
    .locals 4

    .line 1
    const-string v0, "Remote Version: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 4
    .line 5
    const-string v2, "SemWifiHalAidlImpl"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p0, "Service is already initialized"

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->getWifiServiceMockable()Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const-string p0, "Unable to obtain the IWifi binder"

    .line 24
    .line 25
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string v1, "Obtained the IWifi binder. Local Version: 1"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;->getInterfaceVersion()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    const-string v0, "Unable to obtain the service binder"

    .line 62
    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->registerHalCallback()Z

    .line 76
    .line 77
    .line 78
    const-string v0, "Initialization was successful"

    .line 79
    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_0
    const-string v1, "initialize"

    .line 85
    .line 86
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private registerHalCallback()Z
    .locals 3

    .line 1
    const-string v0, "registerHalCallback"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mHalCallback:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiEventCallback;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_2
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method protected static serviceDeclared()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->SEH_HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getChip"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->checkWifiAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;->getChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_3
    monitor-exit v0

    .line 29
    return-object v2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    const-string v2, "getChip"

    .line 35
    .line 36
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    const-string v2, "getChip"

    .line 41
    .line 42
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    throw p0
.end method

.method public getChipIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getChipIds"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->checkWifiAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_4

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;->getChipIds()[I

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    array-length v4, v2

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-ge v5, v4, :cond_1

    .line 31
    .line 32
    aget v6, v2, v5

    .line 33
    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception v2

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    :try_start_3
    monitor-exit v0

    .line 49
    return-object v3

    .line 50
    :goto_1
    const-string v3, "getChipIds"

    .line 51
    .line 52
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :goto_2
    const-string v3, "getChipIds"

    .line 57
    .line 58
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_3
    monitor-exit v0

    .line 62
    return-object v1

    .line 63
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    throw p0
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "Exception on getChipsetVendorName: "

    .line 2
    .line 3
    const-string v1, "SemWifiHalAidlImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->getChipsetVendorName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :goto_1
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v2
.end method

.method public getInterfaceVersion()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;->getInterfaceVersion()I

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
    const-string v1, "getInterfaceVersion"

    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public getProperty(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "Exception on getProperty: "

    .line 2
    .line 3
    const-string v1, "SemWifiHalAidlImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->getProperty(B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :goto_1
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method protected getSehWifiServiceMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;
    .locals 2

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->SEH_HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string v0, "Unable to get ISehWifi service, "

    .line 14
    .line 15
    const-string v1, "SemWifiHalAidlImpl"

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method protected getServiceBinderMockable()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

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
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .locals 1
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
    const-string p0, "SemWifiHalAidlImpl"

    .line 2
    .line 3
    const-string v0, "getTwtParameters was Deprecated"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method protected getWifiServiceMockable()Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;
    .locals 2

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string v0, "Unable to get IWifi service, "

    .line 14
    .line 15
    const-string v1, "SemWifiHalAidlImpl"

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->initializeIWifi()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->initializeISehWifi()V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "isStarted"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->checkWifiAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;->isStarted()Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    const-string v3, "isStarted"

    .line 30
    .line 31
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string v3, "isStarted"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    throw p0
.end method

.method public isSupported()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->serviceDeclared()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public readFile(I)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Exception on readFile: "

    .line 2
    .line 3
    const-string v1, "SemWifiHalAidlImpl"

    .line 4
    .line 5
    const-string v2, "readFile start fileType="

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 24
    .line 25
    int-to-byte p1, p1

    .line 26
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->readFile(B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :catch_2
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-object v3

    .line 69
    :goto_2
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v3
.end method

.method public registerEventCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p0, "SemWifiHalAidlImpl"

    .line 10
    .line 11
    const-string p1, "Framework callback is already registered"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return v2

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p0, "SemWifiHalAidlImpl"

    .line 23
    .line 24
    const-string p1, "Cannot register a null callback"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return v2

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->registerHalCallback()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return v2

    .line 39
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public removeFile(I)Z
    .locals 3

    .line 1
    const-string v0, "Exception on removeFile: "

    .line 2
    .line 3
    const-string v1, "SemWifiHalAidlImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->removeFile(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :goto_1
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v2
.end method

.method public removeLogFiles()Z
    .locals 4

    .line 1
    const-string v0, "Exception on removeLogFiles: "

    .line 2
    .line 3
    const-string v1, "SemWifiHalAidlImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->removeLogFiles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :goto_1
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v2
.end method

.method public setProperty(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Exception on setProperty: "

    .line 2
    .line 3
    const-string v1, "SemWifiHalAidlImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->setProperty(BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :goto_1
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v2
.end method

.method public start()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "start"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->checkWifiAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/16 p0, 0x9

    .line 13
    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifi;->start()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :try_start_3
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :goto_0
    const-string v2, "start"

    .line 31
    .line 32
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget p0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 36
    .line 37
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->halToFrameworkWifiStatusCode(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    monitor-exit v0

    .line 42
    return p0

    .line 43
    :goto_1
    const-string v2, "start"

    .line 44
    .line 45
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    const/16 p0, 0xa

    .line 50
    .line 51
    return p0

    .line 52
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    throw p0
.end method

.method public updateFile(I)Z
    .locals 3

    .line 1
    const-string v0, "Exception on updateFile: "

    .line 2
    .line 3
    const-string v1, "SemWifiHalAidlImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->updateFile(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :goto_1
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v2
.end method

.method public writeFile(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Exception on writeFile: "

    .line 2
    .line 3
    const-string v1, "SemWifiHalAidlImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalAidlImpl;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/ISehWifi;->writeFile(BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :goto_1
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v2
.end method
