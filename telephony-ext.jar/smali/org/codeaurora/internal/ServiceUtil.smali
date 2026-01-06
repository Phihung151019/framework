.class public Lorg/codeaurora/internal/ServiceUtil;
.super Ljava/lang/Object;
.source "ServiceUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .line 45
    const-string v0, "qti.radio.extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    .local v0, "extTelephony":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 49
    .local v1, "success":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 50
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.qualcomm.qti.internal.telephony"

    const-string v4, "com.qualcomm.qti.internal.telephonycom.qualcomm.qti.internal.telephony.ExtTelephonyServiceImpl"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2, v0}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 59
    :cond_1
    return v1
.end method

.method public static blacklist unbindService(Landroid/content/ServiceConnection;)Z
    .locals 1
    .param p0, "onnection"    # Landroid/content/ServiceConnection;

    .line 64
    const/4 v0, 0x1

    return v0
.end method
