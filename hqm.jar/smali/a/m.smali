.class public La/m;
.super Ljava/lang/Object;
.source "HqmExample.java"


# static fields
.field public static final d:Ljava/lang/String; = "com.samsung.context.hqmbigdata.intent"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, La/m;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, La/m;->a:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, La/l;

    .line 13
    .line 14
    invoke-direct {v0, p0}, La/l;-><init>(La/m;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, La/m;->c:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iput-object p1, p0, La/m;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {p0}, La/m;->c()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private c()V
    .locals 7

    .line 1
    new-instance v3, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "android.intent.action.TIME_SET"

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, La/m;->b:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v1, p0, La/m;->c:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    iget-object v0, p0, La/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "exampleIntent - start"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/os/HWParamParcel;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/os/HWParamParcel;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "Power-Intent"

    .line 15
    .line 16
    const-string v5, "POWE-I"

    .line 17
    .line 18
    const-string v6, "sm"

    .line 19
    .line 20
    const-string v7, "0.0"

    .line 21
    .line 22
    const-string v8, "sec"

    .line 23
    .line 24
    const-string v9, "\"key1\":\"value1\",\"key2\":\"value2\""

    .line 25
    .line 26
    const-string v10, "\"key3\":\"value3\",\"key4\":\"value4\""

    .line 27
    .line 28
    const-string v11, "\"key5\":\"value5\",\"key6\":\"value6\""

    .line 29
    .line 30
    const-string v12, ""

    .line 31
    .line 32
    invoke-virtual/range {v2 .. v12}, Landroid/os/HWParamParcel;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/content/Intent;

    .line 36
    .line 37
    const-string v1, "com.samsung.context.hqmbigdata.intent"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "hwparam"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, La/m;->b:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, La/m;->a:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "exampleIntent - end"

    .line 55
    .line 56
    invoke-static {p0, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public b()V
    .locals 11

    .line 1
    iget-object v0, p0, La/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "examplePublicAPI - start"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, La/m;->b:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "HqmManagerService"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Landroid/os/SemHqmManager;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "Power-API"

    .line 23
    .line 24
    const-string v4, "POWE-A"

    .line 25
    .line 26
    const-string v5, "sm"

    .line 27
    .line 28
    const-string v6, "0.0"

    .line 29
    .line 30
    const-string v7, "sec"

    .line 31
    .line 32
    const-string v8, "\"key1\":\"value1\",\"key2\":\"value2\""

    .line 33
    .line 34
    const-string v9, "\"key3\":\"value3\",\"key4\":\"value4\""

    .line 35
    .line 36
    const-string v10, "\"key5\":\"value5\",\"key6\":\"value6\""

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p0, p0, La/m;->a:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "examplePublicAPI - end"

    .line 44
    .line 45
    invoke-static {p0, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
