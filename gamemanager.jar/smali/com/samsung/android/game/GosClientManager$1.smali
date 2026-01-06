.class Lcom/samsung/android/game/GosClientManager$1;
.super Ljava/lang/Object;
.source "GosClientManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GosClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GosClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GosClientManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/GosClientManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 118
    const-string v0, "GosClientManager"

    const-string v1, "ServiceConnection.onServiceConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    invoke-static {v0}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fgetmLock(Lcom/samsung/android/game/GosClientManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    invoke-static {p2}, Lcom/samsung/android/game/gos/IGosSystemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/gos/IGosSystemService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fputmService(Lcom/samsung/android/game/GosClientManager;Lcom/samsung/android/game/gos/IGosSystemService;)V

    .line 122
    iget-object v1, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    iget-object v2, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    invoke-static {v2}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fgetmService(Lcom/samsung/android/game/GosClientManager;)Lcom/samsung/android/game/gos/IGosSystemService;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fputisBound(Lcom/samsung/android/game/GosClientManager;Z)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    invoke-static {v1}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fgetmLock(Lcom/samsung/android/game/GosClientManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 124
    monitor-exit v0

    .line 127
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/game/GosClientManager$1;
    .end local p1    # "className":Landroid/content/ComponentName;
    .end local p2    # "binder":Landroid/os/IBinder;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .restart local p0    # "this":Lcom/samsung/android/game/GosClientManager$1;
    .restart local p1    # "className":Landroid/content/ComponentName;
    .restart local p2    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GosClientManager"

    const-string v2, "ServiceConnection.onServiceConnected"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 132
    const-string v0, "GosClientManager"

    const-string v1, "ServiceConnection.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    invoke-static {v0}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fgetmLock(Lcom/samsung/android/game/GosClientManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fputmService(Lcom/samsung/android/game/GosClientManager;Lcom/samsung/android/game/gos/IGosSystemService;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fputisBound(Lcom/samsung/android/game/GosClientManager;Z)V

    .line 137
    iget-object v1, p0, Lcom/samsung/android/game/GosClientManager$1;->this$0:Lcom/samsung/android/game/GosClientManager;

    invoke-static {v1}, Lcom/samsung/android/game/GosClientManager;->-$$Nest$fgetmLock(Lcom/samsung/android/game/GosClientManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v0

    .line 141
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/game/GosClientManager$1;
    .end local p1    # "className":Landroid/content/ComponentName;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .restart local p0    # "this":Lcom/samsung/android/game/GosClientManager$1;
    .restart local p1    # "className":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GosClientManager"

    const-string v2, "ServiceConnection.onServiceDisconnected"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
