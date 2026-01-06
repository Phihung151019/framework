.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;,
        Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;
    }
.end annotation


# static fields
.field static final ACTION_STRING:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final DBG:Z

.field static final DIAGMONAGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final TAG:Ljava/lang/String; = "SemWifi.SALog"


# instance fields
.field private final context:Landroid/content/Context;

.field private final packageName:Ljava/lang/String;

.field private final runner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

.field private final trackingId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0PnbAhBUyY9yxB_q91u1GZHOAMA(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->lambda$sendBroadcast$0(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->trackingId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->runner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 11
    .line 12
    return-void
.end method

.method private getIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v0, "com.sec.android.diagmonagent"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method private synthetic lambda$sendBroadcast$0(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "SemWifi.SALog"

    .line 2
    .line 3
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->DBG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "send broadcast"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->context:Landroid/content/Context;

    .line 13
    .line 14
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->DBG:Z

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const-string p0, "failed to broadcast"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private sendBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->runner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method getFeatureBundle(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;)Landroid/os/Bundle;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Event:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 2
    .line 3
    if-eq p2, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Device:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->getTypedBundle(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->getTypedBundle(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p2, "feature"

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method getTypedBundle(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tracking_id"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->trackingId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "pkg_name"

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "type"

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Event:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->getFeatureBundle(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->hasIntValue()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "value"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->intValue:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->hasLongValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->longValue:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->hasExtraValue()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const-string v1, "extra"

    .line 47
    .line 48
    iget-object v2, p2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->extraValue:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->hasDimension()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const-string v1, "dimension"

    .line 60
    .line 61
    iget-object v2, p2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->dimension:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->DBG:Z

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "send event - feature = "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, " , data = "

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string p2, "SemWifi.SALog"

    .line 93
    .line 94
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->getIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method sendSettings(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Setting:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->getTypedBundle(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "setting"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 10
    .line 11
    .line 12
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->DBG:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "{ "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, ":"

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " "

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string p1, "}"

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "send settings "

    .line 80
    .line 81
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v1, "SemWifi.SALog"

    .line 92
    .line 93
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->getIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public sendSettingsStatus()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getHangCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "hang_count"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getHalIssueCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "hal_issue_count"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 39
    .line 40
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getEasySetupLaunchCount()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "easysetup_launch_count"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 54
    .line 55
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getEasySetupPartialScanCount()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "easysetup_partial_scan_count"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 69
    .line 70
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getLocationNullCount()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "location_null_count"

    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 84
    .line 85
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getPskNetworkDistanceError600mTo5kmCount()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "psk_network_distance_error_600m_to_5km"

    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 99
    .line 100
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getPskNetworkDistanceError5kmTo10kmCount()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "psk_network_distance_error_5km_to_10km"

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 114
    .line 115
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getPskNetworkDistanceError10kmTo100mCount()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "psk_network_distance_error_10km_to_100km"

    .line 124
    .line 125
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 129
    .line 130
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getOpenNetworkDistanceError600mTo5kmCount()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "open_network_distance_error_600m_to_5km"

    .line 139
    .line 140
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 144
    .line 145
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getOpenNetworkDistanceError5kmTo10kmCount()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string v2, "open_network_distance_error_5km_to_10km"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 159
    .line 160
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getOpenNetworkDistanceError10kmTo100mCount()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v2, "open_network_distance_error_10km_to_100km"

    .line 169
    .line 170
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 174
    .line 175
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getOtherNetworkDistanceError600mTo5kmCount()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const-string v2, "other_network_distance_error_600m_to_5km"

    .line 184
    .line 185
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 189
    .line 190
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getOtherNetworkDistanceError5kmTo10kmCount()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v2, "other_network_distance_error_5km_to_10km"

    .line 199
    .line 200
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 204
    .line 205
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getOtherNetworkDistanceError10kmTo100mCount()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string v2, "other_network_distance_error_10km_to_100km"

    .line 214
    .line 215
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 219
    .line 220
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getScanCount()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const-string v2, "srr_scan_count"

    .line 229
    .line 230
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 234
    .line 235
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getNoScanResultCount()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const-string v2, "srr_no_scan_result_count"

    .line 244
    .line 245
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 249
    .line 250
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getNoCandidateCount()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const-string v2, "srr_no_candidate_count"

    .line 259
    .line 260
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 264
    .line 265
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getRoamFailCount()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const-string v2, "srr_roam_fail_count"

    .line 274
    .line 275
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 279
    .line 280
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getSilentRoamingW24hVersion()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    const-string v2, "silent_roaming_version"

    .line 285
    .line 286
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 290
    .line 291
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getSilentRoamingW24hToggleCount()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v2, "silent_roaming_toggle"

    .line 300
    .line 301
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 305
    .line 306
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getSilentRoamingW24hSwitchCount()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const-string v2, "silent_roaming_switch"

    .line 315
    .line 316
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 320
    .line 321
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getSilentRoamingW24hSwitchSuccessCount()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const-string v2, "silent_roaming_switch_success"

    .line 330
    .line 331
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 335
    .line 336
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getSilentRoamingW24hSwitchFailureCount()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    const-string v2, "silent_roaming_switch_failure"

    .line 345
    .line 346
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 350
    .line 351
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getSilentRoamingW24hSwitchAbortedCount()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    const-string v2, "silent_roaming_switch_aborted"

    .line 360
    .line 361
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 365
    .line 366
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getSilentRoamingW24hSwitchNoInternetCount()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    const-string v2, "silent_roaming_switch_no_internet"

    .line 375
    .line 376
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 380
    .line 381
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getScannedOpenroamingApCount()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    const-string v2, "scanned_openroaming_ap_count"

    .line 390
    .line 391
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 395
    .line 396
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getConnectedOpenroamingApCount()I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    const-string v2, "connected_openroaming_ap_count"

    .line 405
    .line 406
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 410
    .line 411
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getConnectedCarrierPasspointApCount()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    const-string v2, "connected_carrier_passpoint_ap_count"

    .line 420
    .line 421
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 425
    .line 426
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getConnectedUnknownCarrierPasspointApCount()I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    const-string v2, "connected_unknown_carrier_passpoint_ap_count"

    .line 435
    .line 436
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 440
    .line 441
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getL4sConnectionCount()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    const-string v2, "l4s_connection_count"

    .line 450
    .line 451
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 455
    .line 456
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getMscsSupportedUniqueApCount()I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    const-string v2, "mscs_supported_unique_ap_count"

    .line 465
    .line 466
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 470
    .line 471
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;->getTotalUniqueApCount()I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    const-string v2, "total_unique_ap_count"

    .line 480
    .line 481
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendSettings(Ljava/util/HashMap;)V

    .line 485
    .line 486
    .line 487
    :cond_0
    return-object v0
.end method

.method public setSettingsStatusProvider(Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->statusProvider:Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;

    .line 2
    .line 3
    return-void
.end method
