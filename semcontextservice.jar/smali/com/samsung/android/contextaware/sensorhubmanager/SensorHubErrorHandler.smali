.class public Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubErrorHandler;
.super Ljava/lang/Object;
.source "SensorHubErrorHandler.java"


# static fields
.field private static final ISSUE_TRACKER_ACTION:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ACTION"

.field private static final ISSUE_TRACKER_PKG_NAME:Ljava/lang/String; = "com.salab.issuetracker"

.field private static final SSR_DUMP_MAGIC_LEN:I = 0x7bf

.field private static final SSR_DUMP_MAGIC_NUM:I = 0x338

.field private static final TAG:Ljava/lang/String; = "SensorHubManager.ErrorHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static dumpSSP(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 38
    const-string v0, "SensorHubManager.ErrorHandler"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.salab.issuetracker"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v2, "com.sec.android.ISSUE_TRACKER_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v2, "ERRCODE"

    const/16 v3, -0x91

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string v2, "ERRNAME"

    const-string v3, "Sensor Silent Subsystem dump"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v2, "ERRPKG"

    const-string v3, "Sensor LPAIDSP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v2, "ERRMSG"

    const-string v3, "Sensor SSR Dump after SSR"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v2, "EXTLOG"

    const-string v3, "/data/vendor/ramdump/remoteproc-adsp.elf"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 48
    const-string v2, "Send SSR dump noti to Issuetracker"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "Failed to send intent"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method protected static handleError(Landroid/content/Context;IIILandroid/hardware/SensorEvent;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "datasize"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "event"    # Landroid/hardware/SensorEvent;

    .line 55
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_0

    const/16 v0, 0x338

    if-ne p3, v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubErrorHandler;->dumpSSP(Landroid/content/Context;)V

    .line 58
    :cond_0
    return-void
.end method
