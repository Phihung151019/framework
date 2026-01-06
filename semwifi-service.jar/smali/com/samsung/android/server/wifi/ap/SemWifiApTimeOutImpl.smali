.class public Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;
    }
.end annotation


# static fields
.field public static final CMD_NO_ASSOCIATED_STATIONS_TIMEOUT:I = 0x1

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z = true

.field public static final DEFAULT_TIMEOUT_MOBILEAP:I = 0x4b0

.field public static final SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "SemWifiApTimeOutImpl Soft AP Send Message Timeout"

.field private static final TAG:Ljava/lang/String; = "SemWifiApTimeOutImpl"

.field private static final TURNOFF_HOTSPOT:I = 0x104110b

.field public static mDeviceType:Ljava/lang/String;


# instance fields
.field private NumOfClientsConnected:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mScheduled:Z

.field private mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

.field private mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

.field private mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field private mTimeoutvalue:I

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStaInfoStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsemWifiApIntentHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->cancelTimeoutMessage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetConnectedDevicesNum(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->getConnectedDevicesNum()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mscheduleTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->scheduleTimeoutMessage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mDeviceType:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    .line 15
    .line 16
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 17
    .line 18
    const/16 v0, 0x14

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "wifi_ap_timeout_setting"

    .line 40
    .line 41
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/16 v1, 0x3c

    .line 46
    .line 47
    if-ltz p1, :cond_0

    .line 48
    .line 49
    if-le p1, v1, :cond_3

    .line 50
    .line 51
    :cond_0
    if-gez p1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-le p1, v1, :cond_2

    .line 55
    .line 56
    div-int/lit8 v0, p1, 0x3c

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v0, p1

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->scheduleTimeoutMessage()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private cancelTimeoutMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 14
    .line 15
    .line 16
    const-string p0, "SemWifiApTimeOutImpl"

    .line 17
    .line 18
    const-string v0, "Timeout message canceled"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method private getConnectedDevicesNum()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    const-string v0, "Get connected devices num from WifiApTetheredClientInfo "

    .line 18
    .line 19
    const-string v1, "SemWifiApTimeOutImpl"

    .line 20
    .line 21
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return p0
.end method

.method private scheduleTimeoutMessage()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->cancelTimeoutMessage()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->getConnectedDevicesNum()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 24
    .line 25
    :cond_2
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 30
    .line 31
    if-gtz v0, :cond_5

    .line 32
    .line 33
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    .line 34
    .line 35
    const/16 v2, 0xd

    .line 36
    .line 37
    if-eq v0, v2, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const-string v0, "ro.product.first_api_level"

    .line 41
    .line 42
    const/4 v2, -0x1

    .line 43
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "device_first_api_level:"

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v3, "SemWifiApTimeOutImpl"

    .line 62
    .line 63
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->isTablet()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    const-string v2, "ATT"

    .line 73
    .line 74
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    const/16 v2, 0x1e

    .line 83
    .line 84
    if-ge v0, v2, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 90
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    iget v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    .line 96
    .line 97
    const v5, 0xea60

    .line 98
    .line 99
    .line 100
    mul-int/2addr v4, v5

    .line 101
    int-to-long v4, v4

    .line 102
    add-long/2addr v1, v4

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v1, "Timeout message scheduled for "

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p0, "minutes"

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "====== SemWifiApTimeOutImpl dump ======= "

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p3, "mScheduled:"

    .line 9
    .line 10
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p3, "NumOfClientsConnected:"

    .line 28
    .line 29
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 33
    .line 34
    const-string v0, "mWifiApState:"

    .line 35
    .line 36
    invoke-static {p1, p3, p2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    .line 41
    .line 42
    const-string v0, "mTimeoutvalue:"

    .line 43
    .line 44
    invoke-static {p1, p3, p2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public isTablet()Z
    .locals 1

    .line 1
    const-string p0, "ro.build.characteristics"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sput-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mDeviceType:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-lez p0, :cond_0

    .line 16
    .line 17
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mDeviceType:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "tablet"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public readSalesCode()Ljava/lang/String;
    .locals 2

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    :try_start_0
    const-string v0, "ro.csc.sales_code"

    .line 4
    .line 5
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "ril.sales_code"

    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :cond_0
    return-object p0

    .line 22
    :catch_0
    const-string v0, "SemWifiApTimeOutImpl"

    .line 23
    .line 24
    const-string v1, "readSalesCode failed"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public registerSoftApCallback()V
    .locals 5

    .line 1
    const-string v0, "SemWifiApTimeOutImpl"

    .line 2
    .line 3
    const-string v1, "registerSoftApCallback"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v1, "wifi"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 35
    .line 36
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    .line 49
    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->register()V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 71
    .line 72
    const-string v3, "SemWifiApTimeOutImpl Soft AP Send Message Timeout"

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method public unRegisterSoftApCallback()V
    .locals 5

    .line 1
    const-string v0, "unregisterSoftApCallback"

    .line 2
    .line 3
    const-string v1, "SemWifiApTimeOutImpl"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const-string v3, "wifi"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 25
    .line 26
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 27
    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v4, "Error : "

    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->unregister()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    .line 60
    .line 61
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 62
    .line 63
    return-void
.end method
