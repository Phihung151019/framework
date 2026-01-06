.class final Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/intelligence/ins/InsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrServiceConnection"
.end annotation


# instance fields
.field final mTask:Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;

.field final synthetic this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->mTask:Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    return-void
.end method

.method private killTrServiceProcess()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmContext(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "activity"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/ActivityManager;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 34
    .line 35
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, "com.samsung.android.wifi.intelligence.ins:INS_TRAIN_SERVICE"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string p0, "killTrServiceProcess  PID "

    .line 51
    .line 52
    const-string v1, "InsController"

    .line 53
    .line 54
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-ltz v0, :cond_2

    .line 58
    .line 59
    const/16 p0, 0x9

    .line 60
    .line 61
    invoke-static {v0, p0}, Landroid/os/Process;->sendSignal(II)V

    .line 62
    .line 63
    .line 64
    const-string p0, "KILLED TrService ..."

    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    const-string v0, "InsController"

    .line 2
    .line 3
    const-string v1, "IllegalArgumentException: "

    .line 4
    .line 5
    const-string v2, "Exception: "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 17
    .line 18
    invoke-static {v4}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmContext(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 23
    .line 24
    iget-object v5, v5, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->killTrServiceProcess()V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 33
    .line 34
    invoke-static {p0, v3}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fputmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v2

    .line 43
    goto :goto_2

    .line 44
    :goto_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->killTrServiceProcess()V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 67
    .line 68
    invoke-static {p0, v3}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fputmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;)V

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :goto_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->killTrServiceProcess()V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 96
    .line 97
    invoke-static {p0, v3}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fputmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_0
    :goto_4
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "InsController"

    .line 2
    .line 3
    const-string v0, "InsTrService connected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fputmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->mTask:Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const-string p0, "InsController"

    .line 2
    .line 3
    const-string p1, "InsTrService disconnected"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
