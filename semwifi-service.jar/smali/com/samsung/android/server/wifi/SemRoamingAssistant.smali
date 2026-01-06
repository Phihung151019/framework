.class public Lcom/samsung/android/server/wifi/SemRoamingAssistant;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;
    }
.end annotation


# static fields
.field private static final JTAG_RCL_LIST:Ljava/lang/String; = "rcl_list"

.field private static final MAX_RCL_COUNT:I = 0x10

.field private static final MAX_RETURN_CHANNEL_COUNT:I = 0xc8

.field private static final MAX_RETURN_CHANNEL_COUNT_FOR_DRIVER:I = 0xa

.field private static final RCL_FILE_DISABLE:Ljava/lang/String; = "Disable.rcl"

.field private static final RCL_FILE_NAME:Ljava/lang/String; = "RCL.json"

.field private static final ROAM_BAND_FROM_S_OS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemRoamingAssistant2.5"

.field private static final VENDOR_VERSION_11:I = 0xb

.field private static final VERSION:Ljava/lang/String; = "2.5"

.field public static final WIFI_CONNECTED_STATE:I = 0x1

.field public static final WIFI_DISCONNECTED_STATE:I = 0x3

.field public static final WIFI_ROAMED_STATE:I = 0x2


# instance fields
.field private eventTime:J

.field private final interfaces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isRclDriverCommandEnabled:Z

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mExceptionalNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastConnectedNetworkKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRclFile:Ljava/io/File;

.field private mRclHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemRoamingChannelList;",
            ">;"
        }
    .end annotation
.end field

.field private mVendorVersion:I

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method public static synthetic $r8$lambda$-wZAol7XcjEbNEPf6_whwaScE_g(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->lambda$forgetNetwork$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$PB5LWiCyA14D_LMNpILzEtuHKJI(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mfactoryReset(Lcom/samsung/android/server/wifi/SemRoamingAssistant;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->factoryReset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mforgetNetwork(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->forgetNetwork(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->isRclDriverCommandEnabled:Z

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->eventTime:J

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p3, "/misc/wifi/"

    .line 58
    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    new-instance p3, Ljava/io/File;

    .line 67
    .line 68
    const-string v0, "RCL.json"

    .line 69
    .line 70
    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    .line 78
    .line 79
    new-instance p3, Ljava/io/File;

    .line 80
    .line 81
    const-string v0, "Disable.rcl"

    .line 82
    .line 83
    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-eqz p3, :cond_0

    .line 95
    .line 96
    const/4 p3, 0x0

    .line 97
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->isRclDriverCommandEnabled:Z

    .line 98
    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getVendorVersion()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    iput p3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->registerExceptionalNetworks()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance p3, Lcom/samsung/android/server/wifi/SemRoamingAssistant$1;

    .line 113
    .line 114
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$1;-><init>(Lcom/samsung/android/server/wifi/SemRoamingAssistant;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string p3, "Initiate Roaming Assistant version 2.5"

    .line 123
    .line 124
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 128
    .line 129
    iget p3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "vendor version: ["

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p3, "]"

    .line 142
    .line 143
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v0, " RCL path "

    .line 156
    .line 157
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->readFile()V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method private factoryReset()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " RCL - factoryReset"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->writeFile()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private forgetNetwork(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, " RCL - forgetNetwork "

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    new-instance v1, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->writeFile()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method private getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    const/4 p0, 0x3

    .line 4
    invoke-virtual {p2, p3, p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getFrequentlyUsedList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getRoamBand(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p3, p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getFrequentlyUsedList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getStreamData(Ljava/io/Reader;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/16 v0, 0x800

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-array v0, v0, [C

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "getStreamData exception"

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private getVendorVersion()I
    .locals 1

    .line 1
    const-string p0, "ro.vendor.build.version.release"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method private ieee80211_frequency_to_channel(I)I
    .locals 0

    .line 1
    const/16 p0, 0x9b4

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xe

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    if-ge p1, p0, :cond_1

    .line 9
    .line 10
    add-int/lit16 p1, p1, -0x967

    .line 11
    .line 12
    div-int/lit8 p1, p1, 0x5

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    const/16 p0, 0x132e

    .line 16
    .line 17
    if-lt p1, p0, :cond_2

    .line 18
    .line 19
    const/16 p0, 0x1374

    .line 20
    .line 21
    if-gt p1, p0, :cond_2

    .line 22
    .line 23
    add-int/lit16 p1, p1, -0xfa0

    .line 24
    .line 25
    div-int/lit8 p1, p1, 0x5

    .line 26
    .line 27
    return p1

    .line 28
    :cond_2
    const/16 p0, 0x1725

    .line 29
    .line 30
    if-ge p1, p0, :cond_3

    .line 31
    .line 32
    add-int/lit16 p1, p1, -0x1388

    .line 33
    .line 34
    div-int/lit8 p1, p1, 0x5

    .line 35
    .line 36
    return p1

    .line 37
    :cond_3
    const/16 p0, 0x172f

    .line 38
    .line 39
    if-ne p1, p0, :cond_4

    .line 40
    .line 41
    const/4 p0, 0x2

    .line 42
    return p0

    .line 43
    :cond_4
    const p0, 0xafc8

    .line 44
    .line 45
    .line 46
    if-gt p1, p0, :cond_5

    .line 47
    .line 48
    add-int/lit16 p1, p1, -0x173e

    .line 49
    .line 50
    div-int/lit8 p1, p1, 0x5

    .line 51
    .line 52
    return p1

    .line 53
    :cond_5
    const p0, 0xe3d0

    .line 54
    .line 55
    .line 56
    if-lt p1, p0, :cond_6

    .line 57
    .line 58
    const p0, 0x11238

    .line 59
    .line 60
    .line 61
    if-gt p1, p0, :cond_6

    .line 62
    .line 63
    const p0, 0xdb60

    .line 64
    .line 65
    .line 66
    sub-int/2addr p1, p0

    .line 67
    div-int/lit16 p1, p1, 0x870

    .line 68
    .line 69
    return p1

    .line 70
    :cond_6
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method private isExceptionalNetwork(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :cond_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    return v1
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$forgetNetwork$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private readFile()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " load RCL file"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p0, "RCL file not exists.."

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 23
    .line 24
    new-instance v2, Ljava/io/InputStreamReader;

    .line 25
    .line 26
    new-instance v3, Ljava/io/FileInputStream;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "UTF8"

    .line 34
    .line 35
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getStreamData(Ljava/io/Reader;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    .line 55
    .line 56
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "rcl_list"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ge v2, v3, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 80
    .line 81
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->fromJson(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v4, ""

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getNetworkKey()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_3

    .line 96
    .line 97
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getNetworkKey()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto :goto_4

    .line 109
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    :goto_2
    const-string p0, "File Data is null"

    .line 113
    .line 114
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :catchall_1
    move-exception v0

    .line 126
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_5
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 130
    :catch_0
    move-exception p0

    .line 131
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    const-string v1, "readFile exception"

    .line 134
    .line 135
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private registerExceptionalNetworks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "ollehWiFi"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 9
    .line 10
    const-string v1, "olleh GiGA WiFi"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v1, "KT GiGA WiFi"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 23
    .line 24
    const-string v1, "KT WiFi"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 30
    .line 31
    const-string v1, "T wifi zone"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 37
    .line 38
    const-string v1, "U+zone"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 44
    .line 45
    const-string v1, "U+zone_5G"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 51
    .line 52
    const-string v1, "5G_U+zone"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 58
    .line 59
    const-string v1, "0000docomo"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 65
    .line 66
    const-string v1, "0001docomo"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    .line 72
    .line 73
    const-string v0, "iptime"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private sendDriverRclCommand(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-le v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isNCHOModeEnabled(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, " RCL - addRoamScanFrequenciesLegacy "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, " RCL - addRoamScanFrequencies "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isNCHOModeEnabled(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, " RCL - addRoamScanChannelsLegacy "

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v2, " RCL - addRoamScanChannels "

    .line 115
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private updateDriverRcl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->isRclDriverCommandEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p1, " RCL is disabled, do not send RCL Driver Command."

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v0, 0xa

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_4

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v1, v2, :cond_3

    .line 46
    .line 47
    const-string v2, " "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    .line 53
    .line 54
    const/16 v3, 0xb

    .line 55
    .line 56
    if-le v2, v3, :cond_2

    .line 57
    .line 58
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->ieee80211_frequency_to_channel(I)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->sendDriverRclCommand(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_2
    return-void
.end method

.method private updateHash(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-lt v0, v1, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getLastUpdatedTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getLastUpdatedTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    cmp-long v3, v3, v5

    .line 59
    .line 60
    if-lez v3, :cond_0

    .line 61
    .line 62
    :cond_1
    move-object v1, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getNetworkKey()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private updateRcl(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->updateHash(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    move-object v2, v0

    .line 34
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->eventTime:J

    .line 35
    .line 36
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetlastUpdatedTime(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    sub-long v5, v0, v3

    .line 41
    .line 42
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->eventTime:J

    .line 43
    .line 44
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetcachedFrequency(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->update(JJI)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private writeFile()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, " write RCL file - RCL file already exist, erase it"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, " write RCL file"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 39
    .line 40
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 41
    .line 42
    new-instance v2, Ljava/io/FileOutputStream;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    const-string v3, "UTF8"

    .line 50
    .line 51
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lorg/json/JSONArray;

    .line 63
    .line 64
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->toJson()Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    const-string p0, "rcl_list"

    .line 100
    .line 101
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 124
    :catch_0
    move-exception p0

    .line 125
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    const-string v1, "writeFile exception"

    .line 128
    .line 129
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    :goto_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "Wi-Fi RoamingChannelList 2.5"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc8

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onDriverEventReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "ssid"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "frequencies"

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    move v5, v4

    .line 22
    :cond_0
    :goto_0
    if-ge v5, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    check-cast v6, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    move-object v3, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-nez v3, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, " "

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ":"

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    array-length v0, p2

    .line 75
    :goto_1
    if-ge v4, v0, :cond_3

    .line 76
    .line 77
    aget v5, p2, v4

    .line 78
    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->updateHitCount(I)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    sget-object p1, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v0, " RCL updated by driver event "

    .line 96
    .line 97
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_2
    return-void
.end method

.method public wifiStateChangeEvent(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    .line 2
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] wifiStateChangeEvent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->eventTime:J

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    if-ne p2, p3, :cond_6

    if-eqz v0, :cond_6

    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->updateRcl(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->writeFile()V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_2
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->isExceptionalNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    .line 10
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-ne p2, v1, :cond_5

    .line 12
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->updateDriverRcl(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->updateRcl(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V

    .line 15
    :goto_1
    iget-wide p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->eventTime:J

    invoke-virtual {v0, p4, p0, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->backup(IJ)V

    :cond_6
    :goto_2
    return-void
.end method
