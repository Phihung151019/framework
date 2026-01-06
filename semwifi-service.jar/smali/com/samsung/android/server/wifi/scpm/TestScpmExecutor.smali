.class public Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# static fields
.field static final CONFIG_NAME:Ljava/lang/String; = "TEST_WIFI"

.field private static final TAG:Ljava/lang/String; = "WIFITEST"

.field static final WLAN_AUTO_TEST_APP_NAME:Ljava/lang/String; = "com.samsung.android.net.wifi.wlanautotest"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private sendTestResult(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "send result to WlanAutoTest package, event: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WIFITEST"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "com.samsung.android.net.wifi.wlanautotest.scpm.RESULT"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "event"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p1, "configName"

    .line 25
    .line 26
    const-string v1, "TEST_WIFI"

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string p1, "com.samsung.android.net.wifi.wlanautotest"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->context:Landroid/content/Context;

    .line 37
    .line 38
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 39
    .line 40
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TEST_WIFI"

    .line 2
    .line 3
    return-object p0
.end method

.method public notifyScpmState(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Active"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "InActive"

    .line 7
    .line 8
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->sendTestResult(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 0

    .line 1
    const-string p1, "onScpmPolicyUpdated"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->sendTestResult(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 0

    .line 1
    const-string p1, "onScpmRegistered"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->sendTestResult(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
