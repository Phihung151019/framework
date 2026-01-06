.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;,
        Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;,
        Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_CASE:I = 0x0

.field private static final AUTH_TYPE_ONE_WAY:I = 0x0

.field static final AUTH_TYPE_TWO_WAY:I = 0x1

.field private static final DELAY_ADVERTISE:I = 0x2

.field private static final DEVICE_NAME_ME:Ljava/lang/String; = "-ME---"

.field private static final SEND_ADVERTISE_DIRECT:I = 0x0

.field private static final SEND_PASSWORD_CASE:I = 0x1

.field static final STOP_ADVERTISE:I = 0x1

.field private static final mFlagShowDataLog:Z = true

.field private static mHasMultipleConfigKey:Z

.field private static mIsAuthAdvertiseTriggered:Z

.field private static mIsSendPasswordAdvertiseTriggered:Z

.field private static final mLock:Ljava/lang/Object;

.field private static mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

.field private mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

.field private final mCasterCallback:Lcom/samsung/android/mcf/CasterCallback;

.field private mContentsByteForQos:[B

.field private mIsNetworkEnabled:Z

.field private mIsPasswordLowLatency:Z

.field private mIsRegisteredAdvData:Z

.field private mIsScanTriggered:Z

.field private mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

.field private final mPassMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

.field private mPasswordCasterStartAt:J

.field private final mPasswordRequestedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPasswordRequestingDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

.field private mSharedPasswordData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcfCaster(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/mcf/McfCaster;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mclosePasswordSession(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->closePasswordSession(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetContactInfo(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->getContactInfo(Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRequestData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->getRequestData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misMatchedSharedData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isMatchedSharedData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowPasswordConfirmPopup(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Ljava/lang/String;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->showPasswordConfirmPopup(Lcom/samsung/android/mcf/McfDevice;Ljava/lang/String;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAuthentication(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startAuthentication(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmHasMultipleConfigKey()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsAuthAdvertiseTriggered()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsAuthAdvertiseTriggered:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsSendPasswordAdvertiseTriggered()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsSendPasswordAdvertiseTriggered:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmMultipleConfigKeyJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsAuthAdvertiseTriggered(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsAuthAdvertiseTriggered:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmIsSendPasswordAdvertiseTriggered(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsSendPasswordAdvertiseTriggered:Z

    .line 2
    .line 3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;

    .line 14
    .line 15
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "WifiProfileShare.McfCast"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->TAG:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCasterCallback:Lcom/samsung/android/mcf/CasterCallback;

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$2;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPassMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    return-void
.end method

.method private closePasswordSession(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const-string v0, "delete "

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string v3, "WifiProfileShare.McfCast"

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v5, " closePasswordSession, close popup"

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->contactKey:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {v3, v2}, Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;->onSessionClosed(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    const-wide/16 v4, 0x0

    .line 72
    .line 73
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 74
    .line 75
    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_1

    .line 85
    .line 86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    const-string p0, "WifiProfileShare.McfCast"

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " PasswordRequestingDevice list, because caster received bye advertise from subscriber!"

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_1
    monitor-exit v1

    .line 114
    return-void

    .line 115
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method private getContactInfo(Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContactKey()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " not exit contact key"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "WifiProfileShare.McfCast"

    .line 29
    .line 30
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->byteArrayToString([B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private getRequestData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    .line 29
    .line 30
    iget-object v3, v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->contactKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    return-object v2

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    monitor-exit v1

    .line 43
    return-object v0

    .line 44
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method private isMatchedSharedData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->matches(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->maybeRoaming(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, " wants Wi-Fi profile"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "WifiProfileShare.McfCast"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_2
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method private isNetworkEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfCaster;->isNetworkEnabled(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "-ME--- mIsNetworkEnabled :"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "WifiProfileShare.McfCast"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    .line 34
    .line 35
    return p0
.end method

.method private isOpened()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private makeJsonObjectForMultipleConfigKey(Ljava/util/List;J)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;J)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    new-instance p0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 23
    .line 24
    add-int/lit8 v3, v1, 0x1

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v2, p0, v0, p2, p3}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :try_start_0
    const-string v1, "configKey_hotspot"

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    const-string v1, "WifiProfileShare.McfCast"

    .line 50
    .line 51
    const-string v2, "JSONException occured"

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_1
    move v1, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object p0
.end method

.method private sendAdvertiseMessage(IIJ)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    cmp-long p1, p3, p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private showPasswordConfirmPopup(Lcom/samsung/android/mcf/McfDevice;Ljava/lang/String;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p0, "WifiProfileShare.McfCast"

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " user data is null"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->isInContact()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-eq v2, v3, :cond_1

    .line 47
    .line 48
    const-string p0, "WifiProfileShare.McfCast"

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, " may not be friend (unauthorized)"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    const-string p0, "WifiProfileShare.McfCast"

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, " skip already requested"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 107
    .line 108
    new-instance v3, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    .line 109
    .line 110
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-direct {v3, p2, v4, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/McfDevice;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const-string p1, "WifiProfileShare.McfCast"

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, " showPasswordConfirmPopup contact:"

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 147
    .line 148
    invoke-interface {p0, p3, p2}, Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;->onPasswordRequested(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    throw p0
.end method

.method private startAuthentication(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p0, "WifiProfileShare.McfCast"

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " skip to start authentication, no data"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const-string p0, "WifiProfileShare.McfCast"

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p2, " found requester but already confirmed"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    move-object p0, v0

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    const-string p0, "WifiProfileShare.McfCast"

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p2, " found requester but already triggered"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 101
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sget-boolean v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsSendPasswordAdvertiseTriggered:Z

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    const/4 v4, 0x0

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    const-string v2, "WifiProfileShare.McfCast"

    .line 109
    .line 110
    const-string v5, "startAuthentication,  now send password advertising ! 3 seconds wait & start Advertise"

    .line 111
    .line 112
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 116
    .line 117
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    .line 118
    .line 119
    const/4 v11, 0x1

    .line 120
    move-object v7, p1

    .line 121
    move-object v8, p2

    .line 122
    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;JZ)V

    .line 123
    .line 124
    .line 125
    const-wide/16 p1, 0xbb8

    .line 126
    .line 127
    invoke-direct {p0, v4, v4, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 128
    .line 129
    .line 130
    const-wide/16 p1, 0x4650

    .line 131
    .line 132
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    move-object v6, p1

    .line 137
    move-object v7, p2

    .line 138
    sget-boolean p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsAuthAdvertiseTriggered:Z

    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    const-string p1, "WifiProfileShare.McfCast"

    .line 143
    .line 144
    const-string p2, "-ME--- startAuthentication already triggered advertise, delay advertise time"

    .line 145
    .line 146
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 150
    .line 151
    const/4 p2, 0x2

    .line 152
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 157
    .line 158
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    .line 159
    .line 160
    const/4 v10, 0x1

    .line 161
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;JZ)V

    .line 162
    .line 163
    .line 164
    const-wide/16 p1, 0x0

    .line 165
    .line 166
    invoke-direct {p0, v4, v4, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 167
    .line 168
    .line 169
    const-wide/16 p1, 0x3a98

    .line 170
    .line 171
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 172
    .line 173
    .line 174
    :goto_0
    const-string p1, "WifiProfileShare.McfCast"

    .line 175
    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v2, " found new requester, start authentication"

    .line 185
    .line 186
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    monitor-enter v1

    .line 197
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 204
    :catchall_1
    move-exception v0

    .line 205
    move-object p0, v0

    .line 206
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    throw p0

    .line 208
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    throw p0
.end method


# virtual methods
.method clearUserRequestPasswordHistory()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-direct {p0, v2, v1, v3, v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method closeCaster(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "WifiProfileShare.McfCast"

    .line 6
    .line 7
    const-string p1, "-ME--- closeCaster, already closed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopAll()V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    .line 22
    .line 23
    :cond_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/McfAdapter;->closeCaster(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 36
    .line 37
    return-void
.end method

.method isBleActivated()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isOpened()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isNetworkEnable()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method isEnabledQoSSharing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    .line 2
    .line 3
    return p0
.end method

.method isEnabledSharingPassword()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsScanTriggered:Z

    .line 2
    .line 3
    return p0
.end method

.method isLowLatencyForPasswordShare()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsPasswordLowLatency:Z

    .line 2
    .line 3
    return p0
.end method

.method openCaster(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 3

    .line 1
    const-string v0, "WifiProfileShare.McfCast"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "-ME--- openCaster, adapter is null"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCasterCallback:Lcom/samsung/android/mcf/CasterCallback;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/mcf/McfAdapter;->getCaster(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setMcfCaster(Lcom/samsung/android/mcf/McfCaster;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 31
    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const-string p0, "-ME--- openCaster, failed to open caster"

    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method sendPasswordData(ZLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->getRequestData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "WifiProfileShare.McfCast"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "-ME--- sendPasswordData failed, can not found requester "

    .line 10
    .line 11
    invoke-static {p0, p2, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v3, v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->configKey:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p2, 0x0

    .line 51
    :goto_0
    move-object v4, p2

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget-object p1, v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->configKey:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordCancelData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    iget-object v3, v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 61
    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    const-string p0, "-ME--- sendPasswordData failed, target device is null"

    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    if-nez v4, :cond_5

    .line 71
    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, " sendPasswordData failed, not exist shared data"

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 98
    .line 99
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;JZ)V

    .line 103
    .line 104
    .line 105
    sget-boolean p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsSendPasswordAdvertiseTriggered:Z

    .line 106
    .line 107
    const-wide/16 v2, 0x3e8

    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    const/4 v0, 0x1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    const-string p1, "sendPassword,  send password advertise already started! delay start"

    .line 114
    .line 115
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->delayRestartAuthAdvertiseForMultipleSendPassword(Z)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p2, v0, v2, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 124
    .line 125
    .line 126
    const-wide/16 p1, 0x7d0

    .line 127
    .line 128
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_6
    sget-boolean p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsAuthAdvertiseTriggered:Z

    .line 133
    .line 134
    const-wide/16 v4, 0x0

    .line 135
    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    const-string p1, "sendPassword,  auth advertise already started ! stop auth advertise!"

    .line 139
    .line 140
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setRestartAuthAdvertise(Z)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, v0, p2, v4, v5}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 149
    .line 150
    .line 151
    :cond_7
    const-string p1, "sendPassword,  start send password advertise ! "

    .line 152
    .line 153
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p2, v0, v4, v5}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v0, v0, v2, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method setScanMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsPasswordLowLatency:Z

    .line 2
    .line 3
    return-void
.end method

.method startScanForPassword(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;",
            "Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "-ME--- startScanForPassword pwdData size:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", mIsPasswordLowLatency : "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsPasswordLowLatency:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "WifiProfileShare.McfCast"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    .line 41
    .line 42
    new-instance p2, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 43
    .line 44
    invoke-direct {p2}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setTimeout(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 v1, 0x4

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p2, v1, v2, v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsPasswordLowLatency:Z

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    const/4 v1, 0x3

    .line 63
    invoke-virtual {p2, v1}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanMode(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 64
    .line 65
    .line 66
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsScanTriggered:Z

    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfScanData;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPassMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 75
    .line 76
    invoke-interface {v1, p2, v3}, Lcom/samsung/android/mcf/McfCaster;->startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-le p2, v2, :cond_1

    .line 90
    .line 91
    sput-boolean v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    .line 92
    .line 93
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    .line 94
    .line 95
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->makeJsonObjectForMultipleConfigKey(Ljava/util/List;J)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    sput-object p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;

    .line 100
    .line 101
    return-void

    .line 102
    :cond_1
    sput-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "-ME--- startScanForQoS qosData:"

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
    const-string v1, "WifiProfileShare.McfCast"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfScanData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    .line 64
    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 68
    .line 69
    invoke-interface {v1, v0, p1, p0}, Lcom/samsung/android/mcf/McfCaster;->registerAdvertiseData(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method stopAll()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "WifiProfileShare.McfCast"

    .line 6
    .line 7
    const-string v0, "-ME--- closeCaster, already closed"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsScanTriggered:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopScanForPassword()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopScanForQoS()V

    .line 25
    .line 26
    .line 27
    :cond_2
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    move v4, v3

    .line 38
    :goto_0
    if-ge v4, v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    check-cast v5, Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->closePasswordSession(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mContentsByteForQos:[B

    .line 62
    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0
.end method

.method stopScanForPassword()V
    .locals 2

    .line 1
    const-string v0, "WifiProfileShare.McfCast"

    .line 2
    .line 3
    const-string v1, "-ME--- stopScan"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsScanTriggered:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPassMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/McfCaster;->stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method stopScanForQoS()V
    .locals 2

    .line 1
    const-string v0, "WifiProfileShare.McfCast"

    .line 2
    .line 3
    const-string v1, "-ME--- unregisterPilotScan !!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/McfCaster;->unregisterAdvertiseData(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method updatePasswordDate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "-ME--- updatePasswordDate pwdData size:"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "WifiProfileShare.McfCast"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-le v0, v1, :cond_0

    .line 40
    .line 41
    sput-boolean v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    .line 42
    .line 43
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    .line 44
    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->makeJsonObjectForMultipleConfigKey(Ljava/util/List;J)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sput-object p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    sput-boolean p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method updateQoSData([B)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "WifiProfileShare.McfCast"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "-ME---updateQoSData, failed to open caster"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string p0, "-ME--- updateQoSData failed, not registered"

    .line 19
    .line 20
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    if-nez p1, :cond_2

    .line 25
    .line 26
    const-string p0, "updateQoSData failed, contents data is null"

    .line 27
    .line 28
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mContentsByteForQos:[B

    .line 33
    .line 34
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const-string p0, "updateQoSData ignored, same contents"

    .line 42
    .line 43
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_3
    const-string v0, "-ME--- updateQoSData, contents data is different from the previous data"

    .line 48
    .line 49
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mContentsByteForQos:[B

    .line 53
    .line 54
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x4

    .line 60
    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 75
    .line 76
    invoke-interface {v0, p1, p0}, Lcom/samsung/android/mcf/McfCaster;->updateAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_4

    .line 81
    .line 82
    return v3

    .line 83
    :cond_4
    return v1
.end method
