.class public Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0xbb8

.field private static final EVENT_TIMEOUT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemHalTestManager"

.field static final TEST_SETTINGS_KEY_DURATION:Ljava/lang/String; = "test_settings_key_duration"

.field static final TEST_SETTINGS_KEY_METHOD_NAME:Ljava/lang/String; = "test_settings_key_method_name"

.field static final TEST_SETTINGS_KEY_MODULE_NAME:Ljava/lang/String; = "test_settings_key_module_name"

.field static final TEST_SETTINGS_KEY_RESULT:Ljava/lang/String; = "test_settings_key_result"

.field static final TEST_SETTING_METHOD:Ljava/lang/String; = "method_name"

.field static final TEST_SETTING_MODULE:Ljava/lang/String; = "module_name"

.field static final TEST_SETTING_PARAMETERS:Ljava/lang/String; = "parameters"

.field static final TEST_SETTING_TIMEOUT:Ljava/lang/String; = "hal_timeout_ms"

.field static final WLAN_AUTO_TEST_ACTION:Ljava/lang/String; = "wlanautotest.hal"

.field static final WLAN_AUTO_TEST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.net.wifi.wlanautotest"

.field static final WLAN_AUTO_TEST_PERMISSION:Ljava/lang/String; = "com.samsung.permission.WIFI_FACTORY_TEST"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mTestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/halclient/IHalTest;",
            ">;"
        }
    .end annotation
.end field

.field private mTimedOut:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmTimedOut(Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTimedOut:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcast(Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->sendBroadcast(Landroid/os/Bundle;JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->initTestMap(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private initTestMap(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTestMap:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemISehWifiTest;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemISehWifiTest;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "ISehWifi"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTestMap:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;

    .line 21
    .line 22
    invoke-direct {v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "ISehSupplicantStaIface"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTestMap:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "IWifi"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTestMap:Ljava/util/HashMap;

    .line 43
    .line 44
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    .line 47
    .line 48
    .line 49
    const-string p1, "IWifiChip"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTestMap:Ljava/util/HashMap;

    .line 55
    .line 56
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;

    .line 57
    .line 58
    invoke-direct {v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "IWifiStaIface"

    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTestMap:Ljava/util/HashMap;

    .line 67
    .line 68
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;

    .line 69
    .line 70
    invoke-direct {v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "ISupplicantStaIface"

    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTestMap:Ljava/util/HashMap;

    .line 79
    .line 80
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemISupplicantTest;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemISupplicantTest;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 83
    .line 84
    .line 85
    const-string p2, "ISupplicant"

    .line 86
    .line 87
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager$1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private sendBroadcast(Landroid/os/Bundle;JLjava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTimedOut:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    cmp-long v0, p2, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    const-string v0, "module_name"

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "method_name"

    .line 22
    .line 23
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "sendBroadcast moduleName="

    .line 28
    .line 29
    const-string v2, ", methodName="

    .line 30
    .line 31
    const-string v3, ", duration="

    .line 32
    .line 33
    invoke-static {v1, v0, v2, p1, v3}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", result="

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "SemHalTestManager"

    .line 53
    .line 54
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v2, "wlanautotest.hal"

    .line 60
    .line 61
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "test_settings_key_duration"

    .line 65
    .line 66
    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const-string p2, "test_settings_key_result"

    .line 70
    .line 71
    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    const-string p2, "test_settings_key_module_name"

    .line 75
    .line 76
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const-string p2, "test_settings_key_method_name"

    .line 80
    .line 81
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string p1, "com.samsung.android.net.wifi.wlanautotest"

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    const-string p1, "com.samsung.permission.WIFI_FACTORY_TEST"

    .line 92
    .line 93
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public setTestSettings(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTimedOut:Z

    .line 3
    .line 4
    const-string v0, "module_name"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mTestMap:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/samsung/android/server/wifi/halclient/IHalTest;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v1, "hal_timeout_ms"

    .line 23
    .line 24
    const/16 v2, 0xbb8

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    const-string v4, "sendMessageDelayed "

    .line 40
    .line 41
    invoke-static {v1, v4}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "SemHalTestManager"

    .line 46
    .line 47
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    int-to-long v6, v1

    .line 53
    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/halclient/IHalTest;->setTestSettings(Landroid/os/Bundle;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    sub-long/2addr v6, v1

    .line 78
    const-string v1, "removeMessages"

    .line 79
    .line 80
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1, v6, v7, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;->sendBroadcast(Landroid/os/Bundle;JLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    return-void
.end method
