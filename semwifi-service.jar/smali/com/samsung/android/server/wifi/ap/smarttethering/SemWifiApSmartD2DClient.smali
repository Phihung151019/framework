.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;
    }
.end annotation


# static fields
.field private static final SMARTTETHERING_D2D_FAMILYID:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

.field public static final START_ADVERTISE:I = 0x1

.field public static final STOP_ADVERTISE:I = 0x2

.field private static TAG:Ljava/lang/String; = "SemWifiApSmartD2DClient"

.field private static mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private isAdvRunning:Z

.field private isJDMDevice:Z

.field private isStartAdvPending:Z

.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mContext:Landroid/content/Context;

.field private mLocalLog:Landroid/util/LocalLog;

.field private mNeedAdvertisement:Z

.field private mWifiApSmartD2DClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;

.field private mWifiApSmartDeviceNameObserver:Landroid/database/ContentObserver;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$2TOVS4xAJrGHcm2bU3PgR-Hsp40(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->lambda$registerCallbacks$3(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$2s2D3PLivq0tE-pr-TAzwlHp5so(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->lambda$registerCallbacks$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$9oKjJy63wLktxK3aEmNDS7qVwM8(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->lambda$registerCallbacks$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$YRnXqlLDEHECCVUbSHB7vBEnPpQ(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->lambda$registerCallbacks$2(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isJDMDevice:Z

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 18
    .line 19
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;

    .line 20
    .line 21
    new-instance v2, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartDeviceNameObserver:Landroid/database/ContentObserver;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;

    .line 43
    .line 44
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->registerCallbacks()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;

    .line 60
    .line 61
    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-virtual {p1, p2, p3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "device_name"

    .line 74
    .line 75
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartDeviceNameObserver:Landroid/database/ContentObserver;

    .line 80
    .line 81
    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private getClientD2DManufactureData()[B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, v1, :cond_0

    .line 10
    .line 11
    aput-byte v3, v2, v4

    .line 12
    .line 13
    add-int/lit8 v4, v4, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    aput-byte v1, v2, v3

    .line 18
    .line 19
    const/16 v4, 0x12

    .line 20
    .line 21
    aput-byte v4, v2, v1

    .line 22
    .line 23
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getmappedClientMACbytes()[B

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x2

    .line 30
    move v6, v5

    .line 31
    :goto_1
    const/16 v7, 0x8

    .line 32
    .line 33
    if-ge v6, v7, :cond_1

    .line 34
    .line 35
    add-int/lit8 v7, v6, -0x2

    .line 36
    .line 37
    aget-byte v7, v4, v7

    .line 38
    .line 39
    aput-byte v7, v2, v6

    .line 40
    .line 41
    add-int/lit8 v6, v6, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v4, 0xa

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    aput-byte v6, v2, v4

    .line 48
    .line 49
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDeviceName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    array-length v9, v8

    .line 62
    const/16 v10, 0x22

    .line 63
    .line 64
    if-le v9, v10, :cond_3

    .line 65
    .line 66
    sget-object v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v12, "client name is more than 34 characters"

    .line 69
    .line 70
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 74
    .line 75
    new-instance v12, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    sget-object v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v13, ":\tclient name is more than 34 characters"

    .line 86
    .line 87
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-virtual {v11, v12}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    move v12, v3

    .line 102
    move v13, v12

    .line 103
    :goto_2
    if-ge v12, v11, :cond_3

    .line 104
    .line 105
    add-int/lit8 v14, v12, 0x1

    .line 106
    .line 107
    invoke-virtual {v4, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    move/from16 v16, v1

    .line 112
    .line 113
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 114
    .line 115
    invoke-virtual {v15, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    array-length v15, v15

    .line 120
    add-int/2addr v13, v15

    .line 121
    if-le v13, v10, :cond_2

    .line 122
    .line 123
    invoke-virtual {v4, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    array-length v9, v8

    .line 132
    goto :goto_3

    .line 133
    :cond_2
    move v12, v14

    .line 134
    move/from16 v1, v16

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    move/from16 v16, v1

    .line 138
    .line 139
    :goto_3
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isTablet()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    const/16 v4, 0x9

    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    aget-byte v1, v2, v4

    .line 148
    .line 149
    or-int/lit8 v1, v1, 0x1

    .line 150
    .line 151
    int-to-byte v1, v1

    .line 152
    aput-byte v1, v2, v4

    .line 153
    .line 154
    :cond_4
    move v1, v3

    .line 155
    :goto_4
    if-ge v1, v4, :cond_5

    .line 156
    .line 157
    if-ge v1, v9, :cond_5

    .line 158
    .line 159
    add-int/lit8 v10, v1, 0xf

    .line 160
    .line 161
    aget-byte v11, v8, v1

    .line 162
    .line 163
    aput-byte v11, v2, v10

    .line 164
    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_5
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    const-wide/16 v8, -0x1

    .line 175
    .line 176
    cmp-long v4, v0, v8

    .line 177
    .line 178
    if-eqz v4, :cond_6

    .line 179
    .line 180
    aput-byte v16, v2, v7

    .line 181
    .line 182
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    aget-byte v1, v0, v3

    .line 191
    .line 192
    const/16 v3, 0xb

    .line 193
    .line 194
    aput-byte v1, v2, v3

    .line 195
    .line 196
    const/16 v1, 0xc

    .line 197
    .line 198
    aget-byte v3, v0, v5

    .line 199
    .line 200
    aput-byte v3, v2, v1

    .line 201
    .line 202
    const/16 v1, 0xd

    .line 203
    .line 204
    aget-byte v3, v0, v6

    .line 205
    .line 206
    aput-byte v3, v2, v1

    .line 207
    .line 208
    const/4 v1, 0x6

    .line 209
    aget-byte v0, v0, v1

    .line 210
    .line 211
    const/16 v1, 0xe

    .line 212
    .line 213
    aput-byte v0, v2, v1

    .line 214
    .line 215
    :cond_6
    return-object v2
.end method

.method private getClientD2DScanResponseData()[B
    .locals 12

    .line 1
    const/16 v0, 0x1b

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    aput-byte v2, v1, v3

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x1

    .line 15
    aput-byte v3, v1, v2

    .line 16
    .line 17
    const/16 v4, 0x12

    .line 18
    .line 19
    aput-byte v4, v1, v3

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDeviceName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    array-length v4, v3

    .line 34
    const/16 v5, 0x22

    .line 35
    .line 36
    if-le v4, v5, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    move v7, v2

    .line 43
    move v8, v7

    .line 44
    :goto_1
    if-ge v7, v6, :cond_2

    .line 45
    .line 46
    add-int/lit8 v9, v7, 0x1

    .line 47
    .line 48
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    array-length v10, v10

    .line 59
    add-int/2addr v8, v10

    .line 60
    if-le v8, v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    array-length v4, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    move v7, v9

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_2
    const/16 p0, 0x9

    .line 75
    .line 76
    const/4 v2, 0x2

    .line 77
    :goto_3
    if-ge v2, v0, :cond_3

    .line 78
    .line 79
    if-ge p0, v4, :cond_3

    .line 80
    .line 81
    add-int/lit8 v5, p0, 0x1

    .line 82
    .line 83
    aget-byte p0, v3, p0

    .line 84
    .line 85
    aput-byte p0, v1, v2

    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    move p0, v5

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    return-object v1
.end method

.method private synthetic lambda$registerCallbacks$0(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "emergencyMode:"

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ": EMERGENCY"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallbacks$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "airplane_mode_on"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "isAirplaneMode:"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ":\tAIRPLANE_MODE:"

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private synthetic lambda$registerCallbacks$2(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallbacks$3(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isStartAdvPending:Z

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isStartAdvPending:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xf

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isStartAdvPending:Z

    .line 18
    .line 19
    :cond_1
    const/16 v0, 0x10

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "BLE is OFF, stopping advertizement"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, ":\t BLE is OFF, stopping advertizement"

    .line 40
    .line 41
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->stopWifiApSmartD2DclientAdvertize()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method private registerCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 32
    .line 33
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$$ExternalSyntheticLambda3;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method checkPreConditions()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "mBluetoothAdapter==null"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, ":\t mBluetoothAdapter==null"

    .line 28
    .line 29
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, -0x6

    .line 33
    return p0

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isJDMDevice:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v1, "JDM MAC address is null"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, ":\t JDM MAC address is null"

    .line 65
    .line 66
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, -0x5

    .line 70
    return p0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 72
    .line 73
    const-string v1, "com.sec.mhs.smarttethering"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isPackageExists(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    const-string v0, "isPackageExists smarttethering == null"

    .line 84
    .line 85
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const/4 p0, -0x1

    .line 89
    return p0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    const-string v0, "Samsung account is loggedin, so can\'t start advertizsement"

    .line 101
    .line 102
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    const/4 p0, -0x4

    .line 106
    return p0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 108
    .line 109
    const-string v1, "autohotspot"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/4 v1, 0x0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 119
    .line 120
    const-string v2, "Preconditions StandAloneBleMode is ON"

    .line 121
    .line 122
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 133
    .line 134
    const-string v3, ":\t  Preconditions StandAloneBleMode is ON"

    .line 135
    .line 136
    invoke-static {v0, v2, v3, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 137
    .line 138
    .line 139
    return v1

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 155
    .line 156
    const-string v0, "Do not setWifiApSmartClient in EmergencyMode"

    .line 157
    .line 158
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    const/4 p0, -0x2

    .line 162
    return p0

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v2, "airplane_mode_on"

    .line 170
    .line 171
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    const/4 v0, 0x1

    .line 178
    goto :goto_0

    .line 179
    :cond_6
    move v0, v1

    .line 180
    :goto_0
    if-eqz v0, :cond_7

    .line 181
    .line 182
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 183
    .line 184
    const-string v1, "getAirplaneMode: "

    .line 185
    .line 186
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    const/4 p0, -0x3

    .line 194
    return p0

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_8

    .line 202
    .line 203
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 204
    .line 205
    const-string v1, "not isNearByAutohotspotEnabled"

    .line 206
    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 211
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 218
    .line 219
    const-string v2, ":\t not isNearByAutohotspotEnabled"

    .line 220
    .line 221
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 222
    .line 223
    .line 224
    const/4 p0, -0x7

    .line 225
    return p0

    .line 226
    :cond_8
    return v1
.end method

.method public handleBootCompleted()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "handleBootCompleted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ":\t handleBootCompleted, set vendor.wifiap.autohotspot.btadapterenable.smartd2dclient 0"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    .line 33
    .line 34
    const-string v1, "SemWifiApSmartD2DClientBleHandler"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mNeedAdvertisement:Z

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "need to advertise client packets"

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    .line 70
    .line 71
    .line 72
    :cond_0
    const-string p0, "vendor.wifiap.autohotspot.btadapterenable.smartd2dclient"

    .line 73
    .line 74
    const-string v0, "0"

    .line 75
    .line 76
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method isAdvertising()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public sendEmptyMessage(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p1, v1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "START_ADVERTISE with null bleworker"

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mNeedAdvertisement:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    if-nez v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "STOP_ADVERTISE with null bleworker"

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mNeedAdvertisement:Z

    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public startWifiApSmartD2DclientAdvertize()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "This devices\'s binary is a factory binary"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->checkPreConditions()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, " startWifiApSmartD2DClientAdvertize : status:"

    .line 30
    .line 31
    const-string v3, ",isAdvRunning:"

    .line 32
    .line 33
    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 50
    .line 51
    if-nez v1, :cond_6

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    .line 65
    const-string v1, "autohotspot"

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setIsAutoHotspotBleSet()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->semSetSystemAppStandAloneBleMode(ZLjava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 109
    .line 110
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 111
    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isStartAdvPending:Z

    .line 115
    .line 116
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    const-string v0, "mBluetoothLeAdvertiser == null, waiting for isStartAdvPending"

    .line 119
    .line 120
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 125
    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 127
    .line 128
    const/16 v3, 0x64

    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    const/16 v0, 0xa0

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    move v0, v3

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->getClientD2DManufactureData()[B

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->getClientD2DScanResponseData()[B

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->startBleScanning()V

    .line 159
    .line 160
    .line 161
    new-instance v5, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 162
    .line 163
    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3, v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->semSetCustomAdvertiseInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const/4 v3, 0x3

    .line 184
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v3, Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 193
    .line 194
    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 195
    .line 196
    .line 197
    const/16 v5, 0x75

    .line 198
    .line 199
    invoke-virtual {v3, v5, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    new-instance v6, Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 208
    .line 209
    invoke-direct {v6}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v5, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 221
    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v8, ":\tstartWifiApSmartClientD2DManuFeatureData"

    .line 233
    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v6, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 252
    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v8, "Started startWifiApSmartClientD2DManuFeatureData with "

    .line 256
    .line 257
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 275
    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v7, ":\tgetClientD2DScanResponseData:"

    .line 287
    .line 288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {v1, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 306
    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v7, "getClientD2DScanResponseData:"

    .line 310
    .line 311
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 329
    .line 330
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 331
    .line 332
    invoke-virtual {v1, v0, v3, v5, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :cond_6
    :goto_1
    return-void
.end method

.method stopWifiApSmartD2DclientAdvertize()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "stopWifiApSmartD2DClientAdvertize"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "Exception occurred"

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    .line 38
    .line 39
    const-string v0, "1"

    .line 40
    .line 41
    const-string v1, "vendor.wifiap.autohotspot.btadapterenable.smartd2dclient"

    .line 42
    .line 43
    const-string v2, "0"

    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/16 v1, 0xc

    .line 67
    .line 68
    if-ne v0, v1, :cond_2

    .line 69
    .line 70
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "disabling BT which was enabled through autohotspot"

    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    const-string v3, ":\t disabling BT which was enabled through autohotspot"

    .line 87
    .line 88
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    const-string v2, ":stopWifiApSmartD2DClientAdvertize"

    .line 106
    .line 107
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public wifiApBleD2DClientRole(Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    return v0
.end method
