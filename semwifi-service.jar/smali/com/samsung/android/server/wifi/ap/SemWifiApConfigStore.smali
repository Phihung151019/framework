.class public Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mobileservice.profileProvider"

.field private static final AUTO_HOTSPOT_ACCEPT:Ljava/lang/String; = "/data/misc/wifi_hostapd/smart_tethering.accept"

.field private static final CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String; = "SamsungDefault"

.field private static final CONFIGMOBILEAPDEFAULTSSID:Ljava/lang/String; = "Default,Mac4Digits"

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field private static final GET_SA_NAME:I = 0x1

.field private static final LOG_DEBUG_FILE:Ljava/lang/String;

.field public static final MAX_CLIENT:I = 0xa

.field private static final Q_OS_AP_CONFIG_FILE:Ljava/lang/String;

.field private static final RAND_SSID_INT_MAX:I = 0x270f

.field private static final RAND_SSID_INT_MIN:I = 0x3e8

.field private static final SINGLE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SemWifiApConfigStore"

.field private static final dummySoftapFilePath:Ljava/lang/String; = "/data/misc/wifi/dummySoftap.conf"

.field private static final errPWD:Ljava/lang/String; = "\tUSER#DEFINED#PWD#\n"

.field private static final errSSID:Ljava/lang/String; = "#ERROR#SSID#"

.field private static final mDualAp5GHzChannelss:Landroid/util/SparseIntArray;

.field private static final preverrSSID:Ljava/lang/String; = "\t#ERROR#SSID#\n"


# instance fields
.field private configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

.field private final isJDMDevice:Z

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

.field private mIsShutdownIntentReceived:Z

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMacAddress:Ljava/lang/String;

.field private final mObject:Ljava/lang/Object;

.field private mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private retrySAAccount:I

.field private final semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$-pfFR07UoaDy0Aw1d3QqcTY_8xA(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->lambda$registerCallbacks$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$UWywxcN4qC5AfYktie-K-1lAB_o(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->lambda$registerCallbacks$3(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$aXUT8wyJ5qzSWgDWu_H-12z2ibM(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->lambda$registerCallbacks$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$vUfdouICusVu4C444vOAOwwkyQ0(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->lambda$registerCallbacks$1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->retrySAAccount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->retrySAAccount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetModelName(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSamsungAccountProfileName(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getSamsungAccountProfileName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misSALoggedIn(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isSALoggedIn()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "eng"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "/misc/wifi/softap.conf"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->Q_OS_AP_CONFIG_FILE:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "/misc/wifi_hostapd/softap_log.txt"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 73
    .line 74
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 75
    .line 76
    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_single"

    .line 77
    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->SINGLE_URI:Landroid/net/Uri;

    .line 83
    .line 84
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;-><init>()V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mDualAp5GHzChannelss:Landroid/util/SparseIntArray;

    .line 90
    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 10

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mObject:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->retrySAAccount:I

    .line 19
    .line 20
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, ",SemWifiApConfigStore constructor Enter\n"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 61
    .line 62
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 63
    .line 64
    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/os/Looper;)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    .line 74
    .line 75
    const-string p2, "wifi"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 82
    .line 83
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    .line 85
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->registerCallbacks()V

    .line 96
    .line 97
    .line 98
    new-instance p2, Ljava/io/File;

    .line 99
    .line 100
    sget-object p3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->Q_OS_AP_CONFIG_FILE:Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance p3, Ljava/io/File;

    .line 106
    .line 107
    const-string v2, "/data/misc/apexdata/com.android.wifi/WifiConfigStoreSoftAp.xml"

    .line 108
    .line 109
    invoke-direct {p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v2, Ljava/io/File;

    .line 113
    .line 114
    const-string v3, "/data/misc/wifi_hostapd/smart_tethering.accept"

    .line 115
    .line 116
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v4, "WIFI_AP_DEFAULT:"

    .line 122
    .line 123
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string v5, "wifi_ap_SoftAp_conf_present"

    .line 131
    .line 132
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v4, ",checkifDummyFileExist:"

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->checkifDummyFileExist()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v4, ",/data/misc/wifi/softap.conf present:"

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p2, ",mainline_config present: "

    .line 164
    .line 165
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string p2, ",autohotspot_accept present:"

    .line 176
    .line 177
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-static {p2, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    const/4 p3, 0x1

    .line 203
    if-ne p2, p3, :cond_0

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-static {p2, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    .line 211
    .line 212
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->createDummyFile()V

    .line 213
    .line 214
    .line 215
    :cond_0
    new-instance p2, Ljava/io/File;

    .line 216
    .line 217
    const-string v2, "/data/misc/wifi"

    .line 218
    .line 219
    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-nez p2, :cond_1

    .line 227
    .line 228
    const-string p2, "/data/misc/wifi does not exist"

    .line 229
    .line 230
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v2, ",/data/misc/wifi does not exist \n"

    .line 246
    .line 247
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->checkifDummyFileExist()Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    const-string v2, "SemWifiApConfigStore"

    .line 262
    .line 263
    const-string v3, "\t#ERROR#SSID#\n"

    .line 264
    .line 265
    const-string v4, "#ERROR#SSID#"

    .line 266
    .line 267
    if-nez p2, :cond_5

    .line 268
    .line 269
    const-string p2, "CURR_SSID"

    .line 270
    .line 271
    invoke-static {p1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result p2

    .line 279
    if-nez p2, :cond_2

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 286
    .line 287
    if-eqz p2, :cond_2

    .line 288
    .line 289
    const-string p2, "DummyFile does not exist,but local DB is not empty"

    .line 290
    .line 291
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    new-instance p2, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v5, ",DummyFile does not exist,but local DB is not empty\n"

    .line 307
    .line 308
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 319
    .line 320
    if-nez p2, :cond_3

    .line 321
    .line 322
    new-instance p2, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 323
    .line 324
    invoke-direct {p2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 325
    .line 326
    .line 327
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 328
    .line 329
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 334
    .line 335
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 340
    .line 341
    const-string v5, "Generating default config [NoDummyFile]"

    .line 342
    .line 343
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const-string p2, "generating new default config"

    .line 347
    .line 348
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v5, ",generating new default config in constructor\n"

    .line 364
    .line 365
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v5, "mWifiApConfig:"

    .line 378
    .line 379
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 383
    .line 384
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p2

    .line 391
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 395
    .line 396
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p2

    .line 400
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result p2

    .line 404
    if-nez p2, :cond_4

    .line 405
    .line 406
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 407
    .line 408
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    if-nez p2, :cond_4

    .line 417
    .line 418
    const-string p2, "SSID is not error"

    .line 419
    .line 420
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 424
    .line 425
    invoke-static {p1, p2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 426
    .line 427
    .line 428
    goto :goto_0

    .line 429
    :cond_4
    const-string p2, "SSID is error. do not save"

    .line 430
    .line 431
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v5, ",contructor SSID is error. do not save\n"

    .line 447
    .line 448
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->createDummyFile()V

    .line 459
    .line 460
    .line 461
    new-instance p2, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v5, ",created dummySoftapConfig file in constructor\n"

    .line 474
    .line 475
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p2

    .line 482
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    goto :goto_1

    .line 486
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result p2

    .line 494
    if-nez p2, :cond_6

    .line 495
    .line 496
    invoke-static {p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p2

    .line 500
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result p2

    .line 504
    if-eqz p2, :cond_7

    .line 505
    .line 506
    :cond_6
    const-string p2, "save SSID is error"

    .line 507
    .line 508
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    const-string p2, "XXXX"

    .line 512
    .line 513
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p2

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    const-string v6, "save new ssid "

    .line 520
    .line 521
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-static {p1, p2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    :cond_7
    :goto_1
    const-string p2, "mdc.singlesku.activated"

    .line 538
    .line 539
    const-string v5, "false"

    .line 540
    .line 541
    invoke-static {p2, v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object p2

    .line 545
    const-string v5, "true"

    .line 546
    .line 547
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result p2

    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    const-string v6, "wifi_ap_Tss_handled"

    .line 556
    .line 557
    const/4 v7, -0x1

    .line 558
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    new-instance v8, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    const-string v9, "isTSSActivationHandled:"

    .line 565
    .line 566
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string v9, " singleSkuActivated:"

    .line 573
    .line 574
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v8

    .line 584
    invoke-virtual {p0, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    if-ne v5, v7, :cond_9

    .line 588
    .line 589
    if-eqz p2, :cond_8

    .line 590
    .line 591
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 592
    .line 593
    .line 594
    move-result-object p2

    .line 595
    invoke-static {p2, v6, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    .line 597
    .line 598
    goto/16 :goto_2

    .line 599
    .line 600
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 601
    .line 602
    .line 603
    move-result-object p2

    .line 604
    invoke-static {p2, v6, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    .line 606
    .line 607
    goto/16 :goto_2

    .line 608
    .line 609
    :cond_9
    if-nez v5, :cond_b

    .line 610
    .line 611
    if-eqz p2, :cond_b

    .line 612
    .line 613
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 614
    .line 615
    .line 616
    move-result-object p2

    .line 617
    invoke-static {p2, v6, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    .line 619
    .line 620
    const-string p2, "Generate default for TSS"

    .line 621
    .line 622
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .line 624
    .line 625
    new-instance p2, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .line 629
    .line 630
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    const-string v5, ",Generate default for TSS\n"

    .line 638
    .line 639
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object p2

    .line 646
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    new-instance p2, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 650
    .line 651
    invoke-direct {p2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 652
    .line 653
    .line 654
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 655
    .line 656
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 657
    .line 658
    .line 659
    move-result-object p2

    .line 660
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 661
    .line 662
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 663
    .line 664
    .line 665
    move-result-object p2

    .line 666
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 667
    .line 668
    const-string v5, "Generating default config [ForTSS]"

    .line 669
    .line 670
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 674
    .line 675
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object p2

    .line 679
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result p2

    .line 683
    if-nez p2, :cond_a

    .line 684
    .line 685
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 686
    .line 687
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object p2

    .line 691
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result p2

    .line 695
    if-nez p2, :cond_a

    .line 696
    .line 697
    const-string p2, "TSS activated SSID is not error"

    .line 698
    .line 699
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 703
    .line 704
    invoke-static {p1, p2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 705
    .line 706
    .line 707
    goto :goto_2

    .line 708
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .line 712
    .line 713
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const-string v5, ",TSS activated SSID is error. do not save\n"

    .line 721
    .line 722
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object p2

    .line 729
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const-string p2, "TSS activated SSID is error. do not save"

    .line 733
    .line 734
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isCustomerChanged()Z

    .line 738
    .line 739
    .line 740
    move-result p2

    .line 741
    if-eqz p2, :cond_f

    .line 742
    .line 743
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    .line 744
    .line 745
    .line 746
    move-result-object p2

    .line 747
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 748
    .line 749
    new-instance p2, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 750
    .line 751
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 752
    .line 753
    invoke-direct {p2, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 754
    .line 755
    .line 756
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 757
    .line 758
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 759
    .line 760
    .line 761
    move-result-object p2

    .line 762
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 763
    .line 764
    .line 765
    move-result-object p2

    .line 766
    const/16 v5, 0xa

    .line 767
    .line 768
    invoke-virtual {p2, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApMaxClientToFramework(I)V

    .line 769
    .line 770
    .line 771
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 772
    .line 773
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object p2

    .line 777
    if-eqz p2, :cond_d

    .line 778
    .line 779
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 780
    .line 781
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object p2

    .line 785
    const-string v5, "\tUSER#DEFINED#PWD#\n"

    .line 786
    .line 787
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result p2

    .line 791
    if-eqz p2, :cond_d

    .line 792
    .line 793
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 794
    .line 795
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 796
    .line 797
    .line 798
    move-result p2

    .line 799
    if-ne p2, p3, :cond_d

    .line 800
    .line 801
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object p2

    .line 805
    if-nez p2, :cond_c

    .line 806
    .line 807
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 808
    .line 809
    new-instance v5, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    .line 813
    .line 814
    const-wide/16 v6, 0x0

    .line 815
    .line 816
    const/4 v8, 0x4

    .line 817
    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v6

    .line 821
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    const-wide/16 v6, 0x1

    .line 825
    .line 826
    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v6

    .line 830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v5

    .line 837
    invoke-virtual {p2, v5, p3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 838
    .line 839
    .line 840
    goto :goto_3

    .line 841
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 842
    .line 843
    invoke-virtual {v5, p2, p3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 844
    .line 845
    .line 846
    :cond_d
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 847
    .line 848
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 849
    .line 850
    .line 851
    move-result-object p2

    .line 852
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 853
    .line 854
    const-string p3, "Updating config [ForCustomerChanged]"

    .line 855
    .line 856
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 860
    .line 861
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object p2

    .line 865
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    move-result p2

    .line 869
    if-nez p2, :cond_e

    .line 870
    .line 871
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 872
    .line 873
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object p2

    .line 877
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    move-result p2

    .line 881
    if-nez p2, :cond_e

    .line 882
    .line 883
    const-string p2, "customerchanged SSID is not error"

    .line 884
    .line 885
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    new-instance p2, Ljava/lang/StringBuilder;

    .line 889
    .line 890
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .line 892
    .line 893
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object p3

    .line 897
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const-string p3, ",customerchanged SSID is not error\n"

    .line 901
    .line 902
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object p2

    .line 909
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 913
    .line 914
    invoke-static {p1, p2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 915
    .line 916
    .line 917
    goto :goto_4

    .line 918
    :cond_e
    const-string p2, "customerchanged SSID is error. do not save"

    .line 919
    .line 920
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    new-instance p2, Ljava/lang/StringBuilder;

    .line 924
    .line 925
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    .line 927
    .line 928
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object p3

    .line 932
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    const-string p3, ",customerchanged SSID is error. do not save\n"

    .line 936
    .line 937
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object p2

    .line 944
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    :cond_f
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 948
    .line 949
    if-eqz p2, :cond_10

    .line 950
    .line 951
    const-string p3, "wifiap_cloud_bnr_ssid_default"

    .line 952
    .line 953
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object p2

    .line 957
    invoke-static {p1, p3, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    :cond_10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    .line 961
    .line 962
    .line 963
    sget-boolean p2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    .line 964
    .line 965
    if-eqz p2, :cond_11

    .line 966
    .line 967
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    .line 968
    .line 969
    .line 970
    move-result-object p1

    .line 971
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 972
    .line 973
    new-instance p1, Ljava/lang/StringBuilder;

    .line 974
    .line 975
    const-string p2, " mWifiApConfig SSID: "

    .line 976
    .line 977
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 981
    .line 982
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object p2

    .line 986
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    const-string p2, " pwd:"

    .line 990
    .line 991
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 995
    .line 996
    invoke-virtual {p3}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object p3

    .line 1000
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    const-string p3, ",security:"

    .line 1004
    .line 1005
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1009
    .line 1010
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 1011
    .line 1012
    .line 1013
    move-result v3

    .line 1014
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object p1

    .line 1021
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    .line 1023
    .line 1024
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    const-string v2, ",mWifiApConfig SSID: "

    .line 1037
    .line 1038
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1042
    .line 1043
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1054
    .line 1055
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object p2

    .line 1059
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1066
    .line 1067
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 1068
    .line 1069
    .line 1070
    move-result p2

    .line 1071
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    const-string p2, "\n"

    .line 1075
    .line 1076
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object p1

    .line 1083
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object p1

    .line 1090
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 1091
    .line 1092
    .line 1093
    return-void
.end method

.method private checkifDummyFileExist()Z
    .locals 2

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    const-string v0, "/data/misc/wifi/dummySoftap.conf"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const-string v0, " checkifDummyFileExist:"

    .line 13
    .line 14
    const-string v1, "SemWifiApConfigStore"

    .line 15
    .line 16
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return p0
.end method

.method private createDummyFile()V
    .locals 1

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    const-string v0, "/data/misc/wifi/dummySoftap.conf"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private createOrChangePermission()V
    .locals 3

    .line 1
    const-string p0, "/system/bin/chmod 665 "

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    :try_start_1
    const-string v0, "/system/bin/sh"

    .line 25
    .line 26
    const-string v1, "-c"

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 54
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception p0

    .line 62
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_2
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_1
    return-void
.end method

.method private dumpToLogFile(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "could not dump to log file:"

    .line 2
    .line 3
    const-string v1, "could not dump to log file:"

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mObject:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v4

    .line 15
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->createOrChangePermission()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    const-string p1, "SemWifiApConfigStore"

    .line 41
    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    return-void

    .line 74
    :cond_2
    const/4 v0, 0x1

    .line 75
    const/4 v1, 0x0

    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    :try_start_1
    new-instance p2, Ljava/io/FileWriter;

    .line 79
    .line 80
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-direct {p2, v3, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 84
    .line 85
    .line 86
    :goto_1
    move-object v1, p2

    .line 87
    goto :goto_2

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto :goto_4

    .line 93
    :cond_3
    new-instance p2, Ljava/io/FileWriter;

    .line 94
    .line 95
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 96
    .line 97
    invoke-direct {p2, v3, v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-nez p2, :cond_4

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .line 109
    .line 110
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :catch_1
    move-exception p1

    .line 115
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    .line 121
    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_5

    .line 128
    :catch_2
    move-exception p1

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    :goto_5
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 138
    .line 139
    .line 140
    move-result-wide p1

    .line 141
    const-wide/16 v3, 0x1000

    .line 142
    .line 143
    cmp-long p1, p1, v3

    .line 144
    .line 145
    if-lez p1, :cond_7

    .line 146
    .line 147
    new-instance p1, Ljava/lang/StringBuffer;

    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance p2, Ljava/lang/StringBuffer;

    .line 153
    .line 154
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->readLogFile(Ljava/lang/StringBuffer;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v1, "\n"

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    array-length v1, p1

    .line 171
    div-int/lit8 v3, v1, 0x2

    .line 172
    .line 173
    :goto_6
    if-ltz v3, :cond_6

    .line 174
    .line 175
    if-ge v3, v1, :cond_6

    .line 176
    .line 177
    aget-object v4, p1, v3

    .line 178
    .line 179
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    .line 181
    .line 182
    const-string v4, "\n"

    .line 183
    .line 184
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    .line 186
    .line 187
    add-int/lit8 v3, v3, 0x1

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 195
    .line 196
    .line 197
    const-string p1, "logdumpfile is reduced from:"

    .line 198
    .line 199
    const-string p2, ",to:"

    .line 200
    .line 201
    invoke-static {p1, v1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 206
    .line 207
    .line 208
    move-result-wide v0

    .line 209
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    return-void

    .line 220
    :goto_7
    if-eqz v1, :cond_8

    .line 221
    .line 222
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 223
    .line 224
    .line 225
    goto :goto_8

    .line 226
    :catch_3
    move-exception p1

    .line 227
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    .line 229
    .line 230
    :cond_8
    :goto_8
    throw p0

    .line 231
    :goto_9
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 232
    throw p0
.end method

.method public static generateGuestPassword()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/security/SecureRandom;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    const/4 v4, 0x4

    .line 16
    if-ge v3, v4, :cond_0

    .line 17
    .line 18
    const/16 v4, 0x18

    .line 19
    .line 20
    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const-string v5, "abcdefghijkmnpqrstuvwxyz"

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :goto_1
    if-ge v2, v4, :cond_1

    .line 37
    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const-string v5, "23456789"

    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/16 v2, 0xe

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const-string v2, "!@#$%^&*()/~+?"

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method private static generatePassword()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/security/SecureRandom;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    const/16 v4, 0x20

    .line 17
    .line 18
    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const-string v5, "23456789abcdefghijkmnpqrstuvwxyz"

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method private getCSCRegion()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getRegion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "wifi_ap_guest_password"

    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generateGuestPassword()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 27
    .line 28
    const-string v1, "ro.product.first_api_level"

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 36
    .line 37
    .line 38
    const-string v1, " getDefaultAp 2.4GHz "

    .line 39
    .line 40
    const-string v2, "SemWifiApConfigStore"

    .line 41
    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, ",getDefaultAp 2.4GHz \n"

    .line 55
    .line 56
    invoke-static {v1, v3, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getSASSID()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const-string v5, "#ERROR#SSID#"

    .line 73
    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    invoke-direct {p0, v5, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string v7, ",getDefaultAp, parseSecProductFeatureSsid is errSSID\n"

    .line 96
    .line 97
    invoke-static {v4, v6, v7}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-nez v4, :cond_2

    .line 109
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    const-string v7, ",parseSecProductFeaturePassword is null, so set error SSID\n"

    .line 120
    .line 121
    invoke-static {v4, v6, v7}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p1, v4, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-virtual {p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const/16 v5, 0xa

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApMaxClientToFramework(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    const-string v1, "wifi_ap_disable_random_mac"

    .line 164
    .line 165
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-ne p0, v0, :cond_3

    .line 170
    .line 171
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :catch_0
    move-exception p0

    .line 176
    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 178
    .line 179
    .line 180
    const/4 p0, 0x0

    .line 181
    invoke-virtual {p1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :goto_1
    const-string v0, " setMacRandomizationSetting exception :"

    .line 186
    .line 187
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    .line 199
    .line 200
    if-eqz v0, :cond_4

    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v1, " getWifiApConfiguration mWifiApConfig SSID: "

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, " pwd:"

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, ",security:"

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    :cond_4
    return-object p1
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "phone"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, " getIMEI() imei : "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x6

    .line 29
    if-le v3, v1, :cond_0

    .line 30
    .line 31
    move v3, v1

    .line 32
    :cond_0
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    if-lt v1, p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_2
    const-string p1, " getIMEI() imei : null"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "SemWifiApConfigStore"

    .line 63
    .line 64
    const-string p1, "Fail to get IMEI"

    .line 65
    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_3
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method

.method private getJdmWifiMacAddress()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getFactoryMacAddresses()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-lez v1, :cond_1

    .line 10
    .line 11
    aget-object p0, v0, v2

    .line 12
    .line 13
    const-string v0, ":"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v3, 0xc

    .line 26
    .line 27
    if-ne v1, v3, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    new-array v4, v1, [Ljava/lang/CharSequence;

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    aput-object v6, v4, v2

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v6, 0x4

    .line 41
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    aput-object v7, v4, v2

    .line 46
    .line 47
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    aput-object v2, v4, v5

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    const/16 v5, 0x8

    .line 55
    .line 56
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    aput-object v1, v4, v2

    .line 61
    .line 62
    const/16 v1, 0xa

    .line 63
    .line 64
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    aput-object v2, v4, v6

    .line 69
    .line 70
    const/4 v2, 0x5

    .line 71
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    aput-object p0, v4, v2

    .line 76
    .line 77
    invoke-static {v0, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_1
    const-string v0, "SemWifiApConfigStore"

    .line 87
    .line 88
    const-string v1, "JDM mac length less than one:"

    .line 89
    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v0, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    const/4 p0, 0x0

    .line 113
    return-object p0
.end method

.method private getKddiMhsPassword()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    :goto_0
    add-long/2addr v0, v2

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method private getLastIMEI(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "phone"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, " getLastIMEI() "

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, " getIMEI() imei : "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x6

    .line 34
    if-le v3, v1, :cond_0

    .line 35
    .line 36
    move v3, v1

    .line 37
    :cond_0
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    if-lt v1, p1, :cond_3

    .line 56
    .line 57
    sub-int p0, v1, p1

    .line 58
    .line 59
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    const-string p1, " getLastIMEI() imei : null"

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "SemWifiApConfigStore"

    .line 70
    .line 71
    const-string p1, "Fail to get IMEI"

    .line 72
    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_3
    const/4 p0, 0x0

    .line 77
    return-object p0
.end method

.method private getMacAddressLast6DigitsForKOR()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "before   JDM factory mac:"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getWifiMacAddress()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "before   JDM random  mac:"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    const-wide/16 v1, 0x0

    .line 67
    .line 68
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, " getMacAddressLast6DigitsForKOR() mac:"

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    const-string p0, ":"

    .line 96
    .line 97
    const-string v1, "_"

    .line 98
    .line 99
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/16 v1, 0x11

    .line 108
    .line 109
    if-ne v0, v1, :cond_2

    .line 110
    .line 111
    add-int/lit8 v1, v0, -0x8

    .line 112
    .line 113
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_1
    const-string p0, "SemWifiApConfigStore"

    .line 119
    .line 120
    const-string v0, "MAC read fail"

    .line 121
    .line 122
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_2
    const/4 p0, 0x0

    .line 126
    return-object p0
.end method

.method private getMacAddressLastDigits(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    .line 14
    .line 15
    const-string v2, " lastDigits = "

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "before   JDM factory mac:"

    .line 22
    .line 23
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getWifiMacAddress()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "before   JDM random  mac:"

    .line 55
    .line 56
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v0, 0x0

    .line 80
    .line 81
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, " MacAddressLastDigits final mac:"

    .line 88
    .line 89
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    const-string p0, ":"

    .line 115
    .line 116
    const-string v1, ""

    .line 117
    .line 118
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    sub-int p1, v0, p1

    .line 127
    .line 128
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_1
    const-string p0, "SemWifiApConfigStore"

    .line 134
    .line 135
    const-string p1, "MAC read fail , generating random digits"

    .line 136
    .line 137
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    const/4 p0, 0x0

    .line 141
    return-object p0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "SAMSUNG-"

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    return-object p0
.end method

.method private getRandom12Chars()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x9

    .line 25
    .line 26
    const/16 v2, 0xd

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private getRandom4Chars()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private getRandom8Chars()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->longToBytes(J)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/security/SecureRandom;-><init>([B)V

    .line 18
    .line 19
    .line 20
    const-string p0, ""

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    :goto_0
    if-ge p2, p1, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/16 p3, 0x1a

    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    const-string v1, "abcdefghijklmnopqrstuvwxyz"

    .line 36
    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object p0
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    :cond_1
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    cmp-long v2, p2, v0

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide p2

    .line 26
    add-long/2addr p2, v0

    .line 27
    :cond_2
    new-instance v0, Ljava/security/SecureRandom;

    .line 28
    .line 29
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->longToBytes(J)[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/security/SecureRandom;-><init>([B)V

    .line 34
    .line 35
    .line 36
    const/16 p0, 0xa

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    move p3, p2

    .line 40
    :goto_0
    if-ge p3, p1, :cond_3

    .line 41
    .line 42
    mul-int/lit8 p0, p0, 0xa

    .line 43
    .line 44
    add-int/lit8 p3, p3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    const-string v1, "%0"

    .line 50
    .line 51
    const-string v2, "d"

    .line 52
    .line 53
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sub-int/2addr p0, p2

    .line 58
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p3, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method private static getRandomIntForDefaultSsid()I
    .locals 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2328

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit16 v0, v0, 0x3e8

    .line 13
    .line 14
    return v0
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->longToBytes(J)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/security/SecureRandom;-><init>([B)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuffer;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    :goto_0
    if-ge p2, p1, :cond_1

    .line 27
    .line 28
    const/16 p3, 0xa

    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    const-string v1, "!@#$/^&*()"

    .line 35
    .line 36
    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    add-int/lit8 p2, p2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method private getSASSID()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isSALoggedIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "hotspot_enabled_history"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultDeviceName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v4, "getSASSID SA loggedin with out MHS usage"

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getSamsungAccountProfileName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    const-string v4, "Galaxy"

    .line 65
    .line 66
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v4, "5G"

    .line 71
    .line 72
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v4, "(LTE)"

    .line 77
    .line 78
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v4, "LTE"

    .line 83
    .line 84
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const v4, 0x104110c

    .line 95
    .line 96
    .line 97
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    array-length v1, v1

    .line 112
    const/16 v3, 0x20

    .line 113
    .line 114
    if-le v1, v3, :cond_1

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    const-string v1, "1"

    .line 123
    .line 124
    invoke-static {p0, v2, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_2
    return-object v1
.end method

.method private getSamsungAccountProfileName()Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "Fail Getting SA Names"

    .line 2
    .line 3
    const-string v1, "Success Getting SA Names"

    .line 4
    .line 5
    const-string v2, "SemWifiApConfigStore"

    .line 6
    .line 7
    const-string v3, "Query Failed!"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const-string v5, "account_given_name"

    .line 18
    .line 19
    filled-new-array {v5}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    const/4 v12, 0x0

    .line 24
    :try_start_0
    sget-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->SINGLE_URI:Landroid/net/Uri;

    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    if-eqz v12, :cond_0

    .line 34
    .line 35
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object p0, v0

    .line 64
    goto :goto_4

    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_0
    if-eqz v12, :cond_1

    .line 74
    .line 75
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :goto_2
    :try_start_1
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    if-eqz v12, :cond_1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    :goto_3
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    .line 112
    .line 113
    if-eqz p0, :cond_2

    .line 114
    .line 115
    const-string p0, "givenName:"

    .line 116
    .line 117
    invoke-static {p0, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-object v4

    .line 121
    :goto_4
    if-eqz v12, :cond_3

    .line 122
    .line 123
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 124
    .line 125
    .line 126
    :cond_3
    throw p0
.end method

.method private getTelephonyNumber(IZ)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "phone"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, " getTelephonyNumber() min:["

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x6

    .line 30
    if-le v4, v2, :cond_0

    .line 31
    .line 32
    move v5, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v5, v4

    .line 35
    :goto_0
    const/4 v6, 0x0

    .line 36
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, "]retry:"

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    if-le v4, v2, :cond_1

    .line 61
    .line 62
    move v4, v2

    .line 63
    :cond_1
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p2, "000000"

    .line 68
    .line 69
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_2
    if-nez p1, :cond_3

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    if-lt v2, p1, :cond_5

    .line 80
    .line 81
    sub-int p0, v2, p1

    .line 82
    .line 83
    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_4
    const-string p1, " getTelephonyNumber() min:null"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "SemWifiApConfigStore"

    .line 94
    .line 95
    const-string p1, "Fail to get MSISDN"

    .line 96
    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_5
    return-object v1
.end method

.method private getTimeStamp()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    if-le p0, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_2
    return-object p1
.end method

.method private getWifiMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "JDM MAC error"

    .line 20
    .line 21
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "SemWifiApConfigStore"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method private isSALoggedIn()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "com.osp.app.signin"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    array-length p0, p0

    .line 14
    if-lez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method private synthetic lambda$registerCallbacks$0()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mIsShutdownIntentReceived:Z

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, " : ACTION_SHUTDOWN Intent received\n"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "ACTION_SHUTDOWN Intent received"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private synthetic lambda$registerCallbacks$1(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x8

    .line 4
    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->retrySAAccount:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "SamsungAccountStateListner rcvd"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, ",SamsungAccountStateListner rcvd\n"

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    const-wide/16 v0, 0x7530

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallbacks$2()V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->retrySAAccount:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "SamsungAccountProfileMerged rcvd"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, ",SamsungAccountProfileMerged rcvd\n"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    const-wide/16 v1, 0x2710

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallbacks$3(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v0, 0x190

    .line 15
    .line 16
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string p1, "SemWifiApConfigStore"

    .line 21
    .line 22
    const-string v0, "Thread sleep fail"

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getJdmWifiMacAddress()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->writeWifiMacInfo(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "updated JDM MAC address:"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ",updated JDM MAC address:"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "\n"

    .line 99
    .line 100
    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    :cond_0
    return-void
.end method

.method private longToBytes(J)[B
    .locals 4

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    new-array v0, p0, [B

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    :goto_0
    if-ltz v1, :cond_0

    .line 7
    .line 8
    const-wide/16 v2, 0xff

    .line 9
    .line 10
    and-long/2addr v2, p1

    .line 11
    long-to-int v2, v2

    .line 12
    int-to-byte v2, v2

    .line 13
    aput-byte v2, v0, v1

    .line 14
    .line 15
    shr-long/2addr p1, p0

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method private declared-synchronized parseSecProductFeaturePassword(Z)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, " pwd 8 "

    .line 2
    .line 3
    const-string v1, " pwd 15  "

    .line 4
    .line 5
    const-string v2, ", parseSecProductFeaturePassword() SamsungDefault retry:"

    .line 6
    .line 7
    const-string v3, " parseSecProductFeaturePassword() SamsungDefault retry:"

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, "\n"

    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    const-string p1, " dongle default password "

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getKddiMhsPassword()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    .line 82
    return-object p1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 86
    .line 87
    const-string v2, "ro.product.first_api_level"

    .line 88
    .line 89
    const/4 v3, -0x1

    .line 90
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/16 v2, 0x21

    .line 95
    .line 96
    if-lt p1, v2, :cond_1

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generatePassword()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p0

    .line 118
    return-object p1

    .line 119
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-wide/16 v0, 0x0

    .line 140
    .line 141
    const/4 v2, 0x4

    .line 142
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-wide/16 v0, 0x1

    .line 150
    .line 151
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    monitor-exit p0

    .line 163
    return-object p1

    .line 164
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    throw p1
.end method

.method private parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Galaxy_5GMW_,IMEILast4Digits"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "Default,Mac4Digits"

    .line 18
    .line 19
    :goto_0
    const-string v2, " parseSecProductFeatureSsid() "

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ",parseSecProductFeatureSsid(): "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, "\n"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    const-string v2, ","

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move v2, v3

    .line 68
    :goto_1
    array-length v4, v1

    .line 69
    const-string v5, " parseSecProductFeatureSsid() ssid:"

    .line 70
    .line 71
    if-ge v2, v4, :cond_25

    .line 72
    .line 73
    const-string v4, "Default"

    .line 74
    .line 75
    aget-object v6, v1, v2

    .line 76
    .line 77
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    const-string v6, " "

    .line 82
    .line 83
    if-nez v4, :cond_23

    .line 84
    .line 85
    const-string v4, "AndroidHotspot"

    .line 86
    .line 87
    aget-object v7, v1, v2

    .line 88
    .line 89
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_1
    const-string v4, "ModelName"

    .line 98
    .line 99
    aget-object v7, v1, v2

    .line 100
    .line 101
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_2
    const-string v4, "Random4Digits"

    .line 117
    .line 118
    aget-object v7, v1, v2

    .line 119
    .line 120
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    const-wide/16 v7, 0x0

    .line 125
    .line 126
    const/4 v9, 0x4

    .line 127
    if-eqz v4, :cond_3

    .line 128
    .line 129
    invoke-direct {p0, v9, v7, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_3
    const-string v4, "Mac4Digits"

    .line 139
    .line 140
    aget-object v10, v1, v2

    .line 141
    .line 142
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_6

    .line 147
    .line 148
    invoke-direct {p0, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getMacAddressLastDigits(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-eqz v4, :cond_4

    .line 153
    .line 154
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :cond_4
    if-eqz p2, :cond_5

    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :cond_6
    const-string v4, "Mac3Digits"

    .line 169
    .line 170
    aget-object v10, v1, v2

    .line 171
    .line 172
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_9

    .line 177
    .line 178
    const/4 v4, 0x3

    .line 179
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getMacAddressLastDigits(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-eqz v4, :cond_7

    .line 184
    .line 185
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    goto/16 :goto_5

    .line 189
    .line 190
    :cond_7
    if-eqz p2, :cond_8

    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :cond_8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    goto/16 :goto_5

    .line 198
    .line 199
    :cond_9
    const-string v4, "Mac2Digits"

    .line 200
    .line 201
    aget-object v10, v1, v2

    .line 202
    .line 203
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    const/4 v10, 0x2

    .line 208
    if-eqz v4, :cond_c

    .line 209
    .line 210
    invoke-direct {p0, v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getMacAddressLastDigits(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    if-eqz v4, :cond_a

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_a
    if-eqz p2, :cond_b

    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    goto/16 :goto_5

    .line 229
    .line 230
    :cond_c
    const-string v4, "Min4Digits"

    .line 231
    .line 232
    aget-object v11, v1, v2

    .line 233
    .line 234
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_13

    .line 239
    .line 240
    invoke-direct {p0, v9, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    if-eqz v4, :cond_d

    .line 245
    .line 246
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    goto/16 :goto_5

    .line 250
    .line 251
    :cond_d
    if-eqz p2, :cond_e

    .line 252
    .line 253
    goto/16 :goto_2

    .line 254
    .line 255
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getCSCRegion()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    if-eqz v4, :cond_f

    .line 260
    .line 261
    const-string v5, "KOR"

    .line 262
    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-nez v4, :cond_10

    .line 268
    .line 269
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 270
    .line 271
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_12

    .line 276
    .line 277
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getMacAddressLast6DigitsForKOR()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    if-eqz v4, :cond_11

    .line 282
    .line 283
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    goto/16 :goto_5

    .line 287
    .line 288
    :cond_11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    goto/16 :goto_5

    .line 292
    .line 293
    :cond_12
    invoke-direct {p0, v9, v7, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    goto/16 :goto_5

    .line 301
    .line 302
    :cond_13
    const-string v4, "Min2Digits"

    .line 303
    .line 304
    aget-object v7, v1, v2

    .line 305
    .line 306
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_16

    .line 311
    .line 312
    invoke-direct {p0, v10, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    if-eqz v4, :cond_14

    .line 317
    .line 318
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    goto/16 :goto_5

    .line 322
    .line 323
    :cond_14
    if-eqz p2, :cond_15

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    goto/16 :goto_5

    .line 330
    .line 331
    :cond_16
    const-string v4, "IMEILast2Digits"

    .line 332
    .line 333
    aget-object v7, v1, v2

    .line 334
    .line 335
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-eqz v4, :cond_19

    .line 340
    .line 341
    invoke-direct {p0, v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    if-eqz v4, :cond_17

    .line 346
    .line 347
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    goto/16 :goto_5

    .line 351
    .line 352
    :cond_17
    if-eqz p2, :cond_18

    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    goto/16 :goto_5

    .line 359
    .line 360
    :cond_19
    const-string v4, "IMEILast4Digits"

    .line 361
    .line 362
    aget-object v7, v1, v2

    .line 363
    .line 364
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_1c

    .line 369
    .line 370
    invoke-direct {p0, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    if-eqz v4, :cond_1a

    .line 375
    .line 376
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    goto/16 :goto_5

    .line 380
    .line 381
    :cond_1a
    if-eqz p2, :cond_1b

    .line 382
    .line 383
    :goto_2
    return-object p1

    .line 384
    :cond_1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    goto/16 :goto_5

    .line 388
    .line 389
    :cond_1c
    const-string v4, "Space"

    .line 390
    .line 391
    aget-object v7, v1, v2

    .line 392
    .line 393
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-eqz v4, :cond_1d

    .line 398
    .line 399
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    goto/16 :goto_5

    .line 403
    .line 404
    :cond_1d
    const-string v4, "BrandName"

    .line 405
    .line 406
    aget-object v6, v1, v2

    .line 407
    .line 408
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-eqz v4, :cond_1f

    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultDeviceName()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    const-string v5, ""

    .line 419
    .line 420
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    if-eqz v5, :cond_1e

    .line 425
    .line 426
    const-string v4, "brand"

    .line 427
    .line 428
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    goto/16 :goto_5

    .line 432
    .line 433
    :cond_1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    goto/16 :goto_5

    .line 437
    .line 438
    :cond_1f
    const-string v4, "ChameleonSSID"

    .line 439
    .line 440
    aget-object v6, v1, v2

    .line 441
    .line 442
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_22

    .line 447
    .line 448
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 449
    .line 450
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    const-string v6, "updateHotspotS"

    .line 455
    .line 456
    const-string v7, "SemWifiApConfigStore"

    .line 457
    .line 458
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    const-string v6, "chameleon_ssid"

    .line 462
    .line 463
    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    if-eqz v4, :cond_21

    .line 468
    .line 469
    const-string v6, "null"

    .line 470
    .line 471
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    if-eqz v6, :cond_20

    .line 476
    .line 477
    goto :goto_3

    .line 478
    :cond_20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    return-object p0

    .line 505
    :cond_21
    :goto_3
    const-string v4, "ChameleonSSID is null -> ModelName is used."

    .line 506
    .line 507
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    goto :goto_5

    .line 518
    :cond_22
    aget-object v4, v1, v2

    .line 519
    .line 520
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    goto :goto_5

    .line 524
    :cond_23
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultDeviceName()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    const-string v7, "global.device_name : "

    .line 531
    .line 532
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 536
    .line 537
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    const-string v8, "device_name"

    .line 542
    .line 543
    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    if-eqz v5, :cond_24

    .line 562
    .line 563
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 586
    .line 587
    goto/16 :goto_1

    .line 588
    .line 589
    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p2

    .line 598
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object p0

    .line 612
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 613
    .line 614
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    array-length p0, p0

    .line 619
    const/16 p2, 0x20

    .line 620
    .line 621
    if-le p0, p2, :cond_28

    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object p0

    .line 627
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 628
    .line 629
    .line 630
    move-result-object p1

    .line 631
    array-length p1, p1

    .line 632
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    if-le p1, v1, :cond_27

    .line 637
    .line 638
    move p1, v3

    .line 639
    move v0, p1

    .line 640
    move v1, v0

    .line 641
    :goto_6
    if-gt p1, p2, :cond_26

    .line 642
    .line 643
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    add-int v2, v0, v1

    .line 652
    .line 653
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 658
    .line 659
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    array-length v0, v0

    .line 664
    add-int/2addr p1, v0

    .line 665
    move v0, v2

    .line 666
    goto :goto_6

    .line 667
    :cond_26
    sub-int/2addr v0, v1

    .line 668
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object p0

    .line 672
    return-object p0

    .line 673
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    if-le p1, p2, :cond_28

    .line 678
    .line 679
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object p0

    .line 683
    return-object p0

    .line 684
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object p0

    .line 688
    return-object p0
.end method

.method private reGenerateAndWriteConfiguration(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "Re-Generate SSID"

    .line 2
    .line 3
    const-string v1, "SemWifiApConfigStore"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, ",reGenerateAndWriteConfiguration\n"

    .line 18
    .line 19
    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string v3, "wifi_ap_guest_password"

    .line 44
    .line 45
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generateGuestPassword()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v0, v3, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 59
    .line 60
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 63
    .line 64
    invoke-direct {v0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 68
    .line 69
    const-string v0, "XXXX"

    .line 70
    .line 71
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 76
    .line 77
    invoke-virtual {v4, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "wifi_ap_disable_random_mac"

    .line 87
    .line 88
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    const/4 v5, 0x1

    .line 93
    if-ne v4, v5, :cond_1

    .line 94
    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 96
    .line 97
    invoke-virtual {v4, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception v4

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-virtual {v4, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :goto_0
    const-string v6, " setMacRandomizationSetting exception :"

    .line 116
    .line 117
    invoke-static {v6, v4}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-nez v1, :cond_2

    .line 129
    .line 130
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 131
    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-wide/16 v6, 0x0

    .line 138
    .line 139
    const/4 v8, 0x4

    .line 140
    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-wide/16 v6, 0x1

    .line 148
    .line 149
    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 165
    .line 166
    invoke-virtual {v4, v1, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 167
    .line 168
    .line 169
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_5

    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 187
    .line 188
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 192
    .line 193
    if-eqz p1, :cond_3

    .line 194
    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    const-string v1, "wifiap_cloud_bnr_ssid_default"

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v0, v1, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string v0, "#ERROR#SSID#"

    .line 213
    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-nez p1, :cond_4

    .line 219
    .line 220
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    const-string v0, "\t#ERROR#SSID#\n"

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-nez p1, :cond_4

    .line 233
    .line 234
    const-string p1, "regen SSID is not error"

    .line 235
    .line 236
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 242
    .line 243
    invoke-static {p1, p0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_4
    const-string p1, "regen SSID is error. do not save"

    .line 248
    .line 249
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_5
    :goto_3
    return-void
.end method

.method private readLogFile(Ljava/lang/StringBuffer;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    .line 24
    .line 25
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-direct {v2, v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28
    .line 29
    .line 30
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    const-string v1, "\n"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    move-object v0, v2

    .line 52
    goto :goto_5

    .line 53
    :catch_0
    move-exception p1

    .line 54
    move-object v0, v2

    .line 55
    goto :goto_2

    .line 56
    :catch_1
    move-exception p1

    .line 57
    move-object v0, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :catch_2
    move-exception p1

    .line 64
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :catchall_2
    move-exception p1

    .line 69
    goto :goto_5

    .line 70
    :catch_3
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :catch_4
    move-exception p1

    .line 73
    goto :goto_3

    .line 74
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catch_5
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 86
    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :catch_6
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 97
    return-void

    .line 98
    :goto_5
    if-eqz v0, :cond_3

    .line 99
    .line 100
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_6

    .line 104
    :catch_7
    move-exception v0

    .line 105
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_6
    throw p1

    .line 109
    :goto_7
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 110
    throw p1
.end method

.method private registerCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 36
    .line 37
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$$ExternalSyntheticLambda3;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method private removeDummyFile()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/misc/wifi/dummySoftap.conf"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "removing Dummmy File,result:"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ",removing Dummmy File,result:"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "\n"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    const-string p0, "SemWifiApConfigStore"

    .line 70
    .line 71
    const-string v0, " Dummmy File is not present"

    .line 72
    .line 73
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3
    const-string v0, "SemWifiApConfigStore"

    const-string v1, "wifi_ap_settings_smart_switch_restoring"

    const-string v2, "wifi_ap_settings_cloud_backup_restoring"

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 5
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-eqz v4, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Restoring from cloud"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Restoring from smart switch"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->prepareHotspotLabLog(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-string p3, "#tag_wifi_ap_lab_config_event#"

    invoke-static {p3, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->saveWifiApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 15
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setAndSaveWifiApConfiguration - ConcurrentModificationException "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    return-void
.end method

.method private showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/16 v0, 0x11

    .line 13
    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0xc

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    const-string p0, "fe:dc:ab"

    .line 45
    .line 46
    return-object p0
.end method


# virtual methods
.method public addMHSDumpLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " mhs: "

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "SemWifiApConfigStore"

    .line 26
    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 36
    .line 37
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 38
    .line 39
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, "\n"

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const/16 v1, 0x64

    .line 86
    .line 87
    if-le p1, v1, :cond_0

    .line 88
    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public declared-synchronized getApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 12

    .line 1
    const-string v0, " setMacRandomizationSetting exception :"

    .line 2
    .line 3
    const-string v1, " RANDMAC is set  but mDisableRandomMac:"

    .line 4
    .line 5
    const-string v2, " setMacRandomizationSetting exception :"

    .line 6
    .line 7
    const-string v3, " RANDOM MAC NONE is set  but mDisableRandomMac:"

    .line 8
    .line 9
    const-string v4, "SSID is empty: isShutdownIntentReceived:"

    .line 10
    .line 11
    const-string v5, " getSoftApConfiguration exception1 :"

    .line 12
    .line 13
    const-string v6, " getSoftApConfiguration exception :"

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :catch_0
    move-exception v9

    .line 29
    :try_start_1
    const-string v10, "SemWifiApConfigStore"

    .line 30
    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v10, ", getSoftApConfiguration exception: "

    .line 59
    .line 60
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-direct {p0, v6, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 76
    .line 77
    .line 78
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    goto :goto_0

    .line 80
    :catch_1
    move-exception v6

    .line 81
    :try_start_3
    const-string v10, "SemWifiApConfigStore"

    .line 82
    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, ", getSoftApConfiguration exception1: "

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-direct {p0, v5, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    move-object v5, v7

    .line 126
    :goto_0
    if-eqz v5, :cond_0

    .line 127
    .line 128
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 129
    .line 130
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 131
    .line 132
    if-eqz v5, :cond_b

    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->isUserConfiguration()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    const/4 v6, 0x1

    .line 139
    if-nez v5, :cond_1

    .line 140
    .line 141
    const-string v0, "SemWifiApConfigStore"

    .line 142
    .line 143
    const-string v1, "AOSP generated configuration is found"

    .line 144
    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    const-string v0, "AOSP generated configuration is found"

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v1, ":regenerating,AOSP generated configuration is found\n"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-direct {p0, v0, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 175
    .line 176
    .line 177
    const-string v0, "Generating default config [AOSP configuration found]"

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setWifiApConfigurationToDefault(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_1
    move v8, v6

    .line 183
    goto/16 :goto_6

    .line 184
    .line 185
    :cond_1
    const-string v5, "#ERROR#SSID#"

    .line 186
    .line 187
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 188
    .line 189
    invoke-virtual {v9}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-nez v5, :cond_a

    .line 198
    .line 199
    const-string v5, "\t#ERROR#SSID#\n"

    .line 200
    .line 201
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 202
    .line 203
    invoke-virtual {v9}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_2

    .line 212
    .line 213
    goto/16 :goto_5

    .line 214
    .line 215
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 216
    .line 217
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-eqz v5, :cond_4

    .line 226
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mIsShutdownIntentReceived:Z

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mIsShutdownIntentReceived:Z

    .line 245
    .line 246
    if-nez v0, :cond_3

    .line 247
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ", getApConfig,SSID is empty, regenerating \n"

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-direct {p0, v0, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 270
    .line 271
    .line 272
    const-string v0, "ReGenerating config [SSID is empty]"

    .line 273
    .line 274
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->reGenerateAndWriteConfiguration(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v1, "SSID is empty, Do nothing\n"

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-direct {p0, v0, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_6

    .line 303
    .line 304
    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mIsShutdownIntentReceived:Z

    .line 305
    .line 306
    if-nez v4, :cond_b

    .line 307
    .line 308
    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 309
    .line 310
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 311
    .line 312
    invoke-direct {v4, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 313
    .line 314
    .line 315
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 316
    .line 317
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_5

    .line 322
    .line 323
    const-string v5, " AutoShutdown enabled"

    .line 324
    .line 325
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 329
    .line 330
    .line 331
    move v5, v6

    .line 332
    goto :goto_2

    .line 333
    :cond_5
    move v5, v8

    .line 334
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 335
    .line 336
    invoke-virtual {v9}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 341
    .line 342
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    array-length v9, v9

    .line 347
    const/16 v10, 0x20

    .line 348
    .line 349
    if-le v9, v10, :cond_6

    .line 350
    .line 351
    const-string v5, " SSID is more than 32 charachters, getapconfig"

    .line 352
    .line 353
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 357
    .line 358
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v4, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 367
    .line 368
    .line 369
    move v5, v6

    .line 370
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 371
    .line 372
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    const-string v10, "wifi_ap_disable_random_mac"

    .line 377
    .line 378
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 379
    .line 380
    .line 381
    move-result v9

    .line 382
    if-ne v9, v6, :cond_7

    .line 383
    .line 384
    move v9, v6

    .line 385
    goto :goto_3

    .line 386
    :cond_7
    move v9, v8

    .line 387
    :goto_3
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 388
    .line 389
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    if-nez v10, :cond_8

    .line 394
    .line 395
    if-nez v9, :cond_8

    .line 396
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 410
    .line 411
    .line 412
    :try_start_4
    invoke-virtual {v4, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 416
    .line 417
    .line 418
    goto :goto_4

    .line 419
    :catch_2
    move-exception v0

    .line 420
    :try_start_5
    const-string v1, "SemWifiApConfigStore"

    .line 421
    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :cond_8
    if-ne v10, v6, :cond_9

    .line 439
    .line 440
    if-eqz v9, :cond_9

    .line 441
    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 455
    .line 456
    .line 457
    :try_start_6
    invoke-virtual {v4, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 458
    .line 459
    .line 460
    goto :goto_4

    .line 461
    :catch_3
    move-exception v1

    .line 462
    :try_start_7
    const-string v2, "SemWifiApConfigStore"

    .line 463
    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    goto :goto_4

    .line 480
    :cond_9
    move v6, v5

    .line 481
    :goto_4
    if-eqz v6, :cond_b

    .line 482
    .line 483
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 488
    .line 489
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 490
    .line 491
    invoke-static {v1, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 492
    .line 493
    .line 494
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 495
    .line 496
    const-string v1, "Generating config [IllegalConfigOccurred]"

    .line 497
    .line 498
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    goto :goto_6

    .line 502
    :cond_a
    :goto_5
    const-string v0, "SemWifiApConfigStore"

    .line 503
    .line 504
    const-string v1, "SSID is error"

    .line 505
    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    const-string v0, "SSID is error"

    .line 510
    .line 511
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v1, ":regenerating,SSID is error\n"

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-direct {p0, v0, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 536
    .line 537
    .line 538
    const-string v0, "ReGenerating config [SSID error]"

    .line 539
    .line 540
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->reGenerateAndWriteConfiguration(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_1

    .line 544
    .line 545
    :cond_b
    :goto_6
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    .line 546
    .line 547
    if-eqz v0, :cond_c

    .line 548
    .line 549
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 550
    .line 551
    if-nez v0, :cond_e

    .line 552
    .line 553
    const-string v0, "SemWifiApConfigStore"

    .line 554
    .line 555
    const-string v1, "getWifiApConfiguration return null"

    .line 556
    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    goto :goto_7

    .line 561
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 562
    .line 563
    if-nez v0, :cond_d

    .line 564
    .line 565
    const-string v0, "SemWifiApConfigStore"

    .line 566
    .line 567
    const-string v1, "getWifiApConfiguration return null"

    .line 568
    .line 569
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    goto :goto_7

    .line 573
    :cond_d
    const-string v0, "SemWifiApConfigStore"

    .line 574
    .line 575
    const-string v1, "getWifiApConfiguration ssid"

    .line 576
    .line 577
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    :cond_e
    :goto_7
    if-eqz v8, :cond_f

    .line 581
    .line 582
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 583
    .line 584
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    .line 585
    .line 586
    .line 587
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 588
    monitor-exit p0

    .line 589
    return-object v0

    .line 590
    :cond_f
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 591
    .line 592
    monitor-exit p0

    .line 593
    return-object v0

    .line 594
    :goto_8
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 595
    throw v0
.end method

.method public getDefaultDeviceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "default_device_name"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "CscFeature_Common_ConfigDevBrandName"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :cond_2
    return-object p0
.end method

.method public getDumpLogs()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "--SemWifiApConfigStore \n"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getDumplog(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "during OS upgrage:"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "softap_migration_q_os_to_r"

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "\n"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "hotspot history used:"

    .line 57
    .line 58
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    const-string v4, "hotspot_enabled_history"

    .line 64
    .line 65
    invoke-static {v3, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v3, "WCM:"

    .line 94
    .line 95
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, "\n dump of"

    .line 127
    .line 128
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v4, ",size ="

    .line 137
    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    new-instance v4, Ljava/io/File;

    .line 142
    .line 143
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->readLogFile(Ljava/lang/StringBuffer;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0
.end method

.method getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "SSID is more than 32 characters"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v1, p0, :cond_1

    .line 14
    .line 15
    add-int/lit8 v3, v1, 0x1

    .line 16
    .line 17
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    array-length v4, v4

    .line 28
    add-int/2addr v2, v4

    .line 29
    const/16 v4, 0x20

    .line 30
    .line 31
    if-le v2, v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    move v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object p1
.end method

.method public declared-synchronized isCustomerChanged()Z
    .locals 5

    .line 1
    const-string v0, " put :"

    .line 2
    .line 3
    const-string v1, "isCustomerChanged() pre:"

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "wifi_ap_customer"

    .line 13
    .line 14
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " Curr:"

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "wifi_ap_customer"

    .line 53
    .line 54
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return v3

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    monitor-exit p0

    .line 68
    return v3

    .line 69
    :cond_1
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v2, "wifi_ap_customer"

    .line 82
    .line 83
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return v3

    .line 88
    :cond_2
    :try_start_3
    const-string v2, " diff, changed  return true"

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v4, ",isCustomerChanged\n"

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v2, "wifi_ap_customer"

    .line 139
    .line 140
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .line 142
    .line 143
    monitor-exit p0

    .line 144
    const/4 p0, 0x1

    .line 145
    return p0

    .line 146
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    throw v0
.end method

.method public receiveSoftNetworkReset()V
    .locals 3

    .line 1
    const-string v0, "SemWifiApConfigStore"

    .line 2
    .line 3
    const-string v1, "SETTINGS_NETWORK_RESET (Factory or Wifi-Bluetooth reset) is rcvd"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, " : SETTINGS_NETWORK_RESET  (Factory or Wifi-Bluetooth reset)  is rcvd\n"

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string v1, "hotspot_enabled_history"

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "Generating default config [Factory or Wifi-Bluetooth reset]"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setWifiApConfigurationToDefault(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public declared-synchronized setApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, " setApConfiguration() "

    .line 2
    .line 3
    const-string v1, " setMacRandomizationSetting exception :"

    .line 4
    .line 5
    const-string v2, " setapConfig RANDMAC is set  but mDisableRandomMac:"

    .line 6
    .line 7
    const-string v3, " setMacRandomizationSetting exception :"

    .line 8
    .line 9
    const-string v4, " setapConfig RANDOM MAC NONE is set  but mDisableRandomMac:"

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    const-string v5, "SemWifiApConfigStore"

    .line 13
    .line 14
    const-string v6, "setApConfiguration() - Start"

    .line 15
    .line 16
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, ", setApConfiguration: band:"

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v7, ",ssid:"

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v7, ",security:"

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v7, "\n"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-direct {p0, v6, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    :cond_0
    :goto_0
    const-string v6, "#ERROR#SSID#"

    .line 91
    .line 92
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v7}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_1

    .line 103
    .line 104
    const-string v6, "\t#ERROR#SSID#\n"

    .line 105
    .line 106
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v7}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_2

    .line 117
    .line 118
    :cond_1
    const-string v6, "SemWifiApConfigStore"

    .line 119
    .line 120
    const-string v7, "setApConfiguration() - SSID before updating is errSSID"

    .line 121
    .line 122
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    const-string v6, "XXXX"

    .line 126
    .line 127
    invoke-direct {p0, v6, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {v7, v6}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    if-nez p1, :cond_3

    .line 137
    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v6, ",setApConfiguration,config is null,get defaultConfig\n"

    .line 151
    .line 152
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 163
    .line 164
    invoke-direct {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 168
    .line 169
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 183
    .line 184
    if-eqz v6, :cond_4

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    if-eqz v6, :cond_4

    .line 191
    .line 192
    const-string v6, "#ERROR#SSID#"

    .line 193
    .line 194
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 195
    .line 196
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-nez v6, :cond_4

    .line 205
    .line 206
    const-string v6, "\t#ERROR#SSID#\n"

    .line 207
    .line 208
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 209
    .line 210
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_4

    .line 219
    .line 220
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 221
    .line 222
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-nez v6, :cond_4

    .line 235
    .line 236
    const-string v6, "SSID is modified ,so make hotspot usage history"

    .line 237
    .line 238
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    const-string v7, "hotspot_enabled_history"

    .line 244
    .line 245
    const-string v8, "1"

    .line 246
    .line 247
    invoke-static {v6, v7, v8}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 251
    .line 252
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    const-string v6, "wifi_ap_disable_random_mac"

    .line 259
    .line 260
    invoke-static {p1, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    const/4 v6, 0x1

    .line 265
    if-ne p1, v6, :cond_5

    .line 266
    .line 267
    move p1, v6

    .line 268
    goto :goto_2

    .line 269
    :cond_5
    move p1, v5

    .line 270
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 271
    .line 272
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-nez v7, :cond_6

    .line 277
    .line 278
    if-nez p1, :cond_6

    .line 279
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 296
    .line 297
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 298
    .line 299
    invoke-direct {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 300
    .line 301
    .line 302
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .line 304
    :try_start_1
    invoke-virtual {p1, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 308
    .line 309
    const/4 v1, 0x0

    .line 310
    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :catch_0
    move-exception p1

    .line 315
    :try_start_2
    const-string v1, "SemWifiApConfigStore"

    .line 316
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 333
    .line 334
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_6
    if-ne v7, v6, :cond_7

    .line 342
    .line 343
    if-eqz p1, :cond_7

    .line 344
    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 361
    .line 362
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 363
    .line 364
    invoke-direct {p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 365
    .line 366
    .line 367
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .line 369
    :try_start_3
    invoke-virtual {p1, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    .line 371
    .line 372
    goto :goto_4

    .line 373
    :catch_1
    move-exception p1

    .line 374
    :try_start_4
    const-string v2, "SemWifiApConfigStore"

    .line 375
    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 398
    .line 399
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    and-int/lit8 v1, v1, 0x4

    .line 410
    .line 411
    if-nez v1, :cond_8

    .line 412
    .line 413
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-le v1, v6, :cond_a

    .line 418
    .line 419
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    and-int/lit8 p1, p1, 0x4

    .line 424
    .line 425
    if-eqz p1, :cond_a

    .line 426
    .line 427
    :cond_8
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 428
    .line 429
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 430
    .line 431
    invoke-direct {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 432
    .line 433
    .line 434
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 435
    .line 436
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 437
    .line 438
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    if-ne p1, v6, :cond_9

    .line 443
    .line 444
    const-string p1, "SemWifiApConfigStore"

    .line 445
    .line 446
    const-string v1, "6GHz selected, but WPA2 is set, error"

    .line 447
    .line 448
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    const-string p1, " setApConfiguration() 6GHz selected, but WPA2 is set, error"

    .line 452
    .line 453
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v1, ", setApConfiguration() 6GHz selected, but WPA2 is set, error \n  "

    .line 469
    .line 470
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 478
    .line 479
    .line 480
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 481
    .line 482
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 483
    .line 484
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    const/4 v2, 0x3

    .line 489
    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 490
    .line 491
    .line 492
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 493
    .line 494
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 499
    .line 500
    goto :goto_6

    .line 501
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    if-nez p1, :cond_a

    .line 508
    .line 509
    const-string p1, "SemWifiApConfigStore"

    .line 510
    .line 511
    const-string p2, "6GHz selected, but OPEN type is set, error"

    .line 512
    .line 513
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    const-string p1, " setApConfiguration() 6GHz selected, but OPEN type is set, error "

    .line 517
    .line 518
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object p2

    .line 530
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string p2, ", ssetApConfiguration() 6GHz selected, but OPEN type is set, error \n "

    .line 534
    .line 535
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 543
    .line 544
    .line 545
    const-string p1, "SemWifiApConfigStore"

    .line 546
    .line 547
    const-string p2, "6GHz selected, but OPEN type is set, OWE not supported error"

    .line 548
    .line 549
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    const-string p1, " setApConfiguration() 6GHz selected, but OPEN type is set, OWE not supported error "

    .line 553
    .line 554
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object p2

    .line 566
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string p2, ", setApConfiguration() 6GHz selected, but OPEN type is set, OWE not supported error \n "

    .line 570
    .line 571
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 579
    .line 580
    .line 581
    monitor-exit p0

    .line 582
    return-void

    .line 583
    :cond_a
    :goto_6
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 589
    .line 590
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v0, " "

    .line 598
    .line 599
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 603
    .line 604
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 619
    .line 620
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 621
    .line 622
    .line 623
    monitor-exit p0

    .line 624
    return-void

    .line 625
    :goto_7
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 626
    throw p1
.end method

.method public declared-synchronized setWifiApConfigurationToDefault(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "setWifiApConfigurationToDefault(): "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ",setWifiApConfigurationToDefault() API\n"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 47
    .line 48
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAndSaveWifiApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "SemWifiApConfigStore"

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-static {p1, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setRestoreNetworkPasswordDialogToBeShowOnce(Landroid/content/Context;Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    const-string v1, "wifiap_cloud_bnr_ssid_default"

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v0, v1, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p1
.end method
