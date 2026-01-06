.class public Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# static fields
.field static final ACTION_SCPM_CLEAR_DATA:Ljava/lang/String; = "com.samsung.android.scpm.policy.CLEAR_DATA"

.field static final ACTION_SCPM_UPDATED_PREFIX:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE."

.field static final APP_ID:Ljava/lang/String; = "2g2wnlhqx9"

.field static final APP_VERSION:Ljava/lang/String;

.field static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final INTENT_DATA_SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field static final KEY_RESULT:Ljava/lang/String; = "result"

.field static final KEY_RESULT_CODE:Ljava/lang/String; = "rcode"

.field static final KEY_RESULT_MESSAGE:Ljava/lang/String; = "rmsg"

.field static final KEY_TOKEN:Ljava/lang/String; = "token"

.field static final METHOD_GET_LAST_ERROR:Ljava/lang/String; = "getLastError"

.field static final METHOD_REGISTER:Ljava/lang/String; = "register"

.field static final METHOD_UNREGISTER:Ljava/lang/String; = "unregister"

.field static final PROVIDER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field private static final TAG:Ljava/lang/String; = "SemWifi.Scpm"

.field static final UNKNOWN_ERROR_CODE:I = -0x1


# instance fields
.field private activeScpmPackageName:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private isPendingToUpdateToken:Z

.field private lastErrorMessage:Ljava/lang/String;

.field private final receiverLock:Ljava/lang/Object;

.field private final receivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Landroid/content/ContentResolver;

.field private testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

.field private token:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$brdnuBWAXde7u2SBYh7yVdfZ6Yc(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lambda$notifyToClients$0(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$sTWnChgShvFwE4tpv8Uabp96aiI(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lambda$dump$1(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;Landroid/content/BroadcastReceiver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPendingToUpdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isPendingToUpdateToken:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputisPendingToUpdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isPendingToUpdateToken:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->updateToken()Z

    .line 2
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
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, ".0.3"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->APP_VERSION:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receiverLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    return-void
.end method

.method private getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string p0, "rcode"

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const-string v0, "rmsg"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->getScpmConfigurationName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic lambda$notifyToClients$0(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private notifyToClients()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receiverLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method private registerAppToSpcm()Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "SemWifi.Scpm"

    .line 4
    .line 5
    const-string v2, "android"

    .line 6
    .line 7
    const-string v3, "register fail rCode:"

    .line 8
    .line 9
    const-string v4, "trying to register package: android version:"

    .line 10
    .line 11
    const-string v5, "content://com.samsung.android.scpm.policy/"

    .line 12
    .line 13
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v7, "packageName"

    .line 23
    .line 24
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v7, "appId"

    .line 28
    .line 29
    const-string v8, "2g2wnlhqx9"

    .line 30
    .line 31
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v7, "version"

    .line 35
    .line 36
    sget-object v8, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->APP_VERSION:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v7, "receiverPackageName"

    .line 42
    .line 43
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v7, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    .line 47
    .line 48
    const-string v9, "register"

    .line 49
    .line 50
    invoke-virtual {v7, v5, v9, v2, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    const-string v5, "result"

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-ne v5, v6, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v6, 0x0

    .line 67
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, " status: "

    .line 76
    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    const-string v4, "registered"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception v2

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-string v4, "failed"

    .line 88
    .line 89
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    if-nez v6, :cond_2

    .line 100
    .line 101
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v3, ","

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v2, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iput-object v2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :cond_2
    const-string v3, "token"

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-object p0

    .line 144
    :goto_2
    const-string v3, "failed to register (maybe scpm agent was disabled) "

    .line 145
    .line 146
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iput-object v2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_3
    return-object v0
.end method

.method private setScpmPackageReceiver()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 16
    .line 17
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "package"

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v4, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string v0, "SemWifi.Scpm"

    .line 32
    .line 33
    const-string v1, "setup scpm package status receiver"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    .line 39
    .line 40
    new-instance v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    .line 43
    .line 44
    .line 45
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 46
    .line 47
    iget-object v6, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    .line 48
    .line 49
    const/4 v7, 0x2

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    iget-object v5, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    .line 55
    .line 56
    new-instance v6, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;

    .line 57
    .line 58
    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    .line 59
    .line 60
    .line 61
    new-instance v8, Landroid/content/IntentFilter;

    .line 62
    .line 63
    const-string v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 64
    .line 65
    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v10, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    .line 69
    .line 70
    const/4 v11, 0x2

    .line 71
    const/4 v9, 0x0

    .line 72
    move-object v7, v3

    .line 73
    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private unregisterAppToSpcm()V
    .locals 4

    .line 1
    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "appId"

    .line 13
    .line 14
    const-string v3, "2g2wnlhqx9"

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    .line 20
    .line 21
    const-string v2, "unregister"

    .line 22
    .line 23
    const-string v3, "android"

    .line 24
    .line 25
    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "failed to unregister (maybe scpm agent was disabled) "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "SemWifi.Scpm"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private updateToken()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isPendingToUpdateToken:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isAvailable()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->unregisterAppToSpcm()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->registerAppToSpcm()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v0, ""

    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string v1, "SemWifi.Scpm"

    .line 37
    .line 38
    const-string v2, "token was updated"

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->notifyToClients()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return v0
.end method


# virtual methods
.method public checkAndStart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SemWifi.Scpm"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "unavailable SCPM service"

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->setScpmPackageReceiver()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->updateToken()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const-string p0, "ready"

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "active"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "inactive"

    .line 11
    .line 12
    :goto_0
    const-string v1, "WifiScpmMonitor is "

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, " - agent: "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, " - managed config names:"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    .line 52
    .line 53
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, " - last error message: "

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method

.method public getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "/"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    .line 38
    .line 39
    const-string v0, "r"

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    return-object p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "failed to get data, "

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "SemWifi.Scpm"

    .line 66
    .line 67
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-object v2
.end method

.method public getLastError()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "token"

    .line 19
    .line 20
    iget-object v3, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    .line 26
    .line 27
    const-string v3, "getLastError"

    .line 28
    .line 29
    const-string v4, "android"

    .line 30
    .line 31
    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "cannot get error : "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "SemWifi.Scpm"

    .line 62
    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_0
    const/4 p0, -0x1

    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string v0, ""

    .line 72
    .line 73
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public isActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method isAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.scpm.policy"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    return v2
.end method

.method public register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "com.samsung.android.scpm.policy.UPDATE."

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->getScpmConfigurationName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    .line 45
    .line 46
    const/4 v6, 0x2

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receiverLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    :try_start_1
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    move-object p0, v0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    move-object p0, v0

    .line 78
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0

    .line 80
    :cond_0
    :goto_0
    return-void
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "enable"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->notifyScpmState(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->unregister(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public unregister(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receiverLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_0
    return-void
.end method
