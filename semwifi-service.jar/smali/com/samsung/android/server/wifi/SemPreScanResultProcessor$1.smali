.class Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/nl80211/WifiNl80211Manager$PreScanResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;


# direct methods
.method public static synthetic $r8$lambda$aonLDl5HvrccoAB8cOq2BokO4rY(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;[Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;Ljava/util/List;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;->lambda$onPreScanResult$0([Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;Ljava/util/List;I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;->this$0:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onPreScanResult$0([Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;Ljava/util/List;I)Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;->this$0:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->-$$Nest$fgetcallbacks(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    aput-object v0, p1, v1

    .line 25
    .line 26
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;->handleHookedScanResult(Ljava/util/List;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public onPreScanResult(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "HookCallback timeout occurred, "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    filled-new-array {v1}, [Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;->this$0:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->-$$Nest$fgetcallbacks(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;->this$0:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v4, p0, v1, p1, p2}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;[Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;Ljava/util/List;I)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    aget-object p2, v1, p1

    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;->this$0:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 46
    .line 47
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    aget-object v0, v1, p1

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;->reqClassName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;->this$0:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 73
    .line 74
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->-$$Nest$fgetcallbacks(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    aget-object p2, v1, p1

    .line 79
    .line 80
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    aget-object p0, v1, p1

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;->handleCallbackTimeout()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    monitor-exit v2

    .line 92
    return-void

    .line 93
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method
