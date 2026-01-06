.class Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "TopAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/TopAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopAppObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/TopAppManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/TopAppManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "isTopAppChanged":Z
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p3, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 220
    :cond_0
    if-eqz p3, :cond_1

    .line 221
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 225
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-eqz v0, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmCfms(Lcom/android/server/ssrm/fgapps/TopAppManager;)Lcom/android/server/ssrm/CustomFrequencyManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onTopAppChanged()V

    .line 229
    :cond_2
    return-void

    .line 225
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public onProcessDied(II)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "threadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 239
    .local v1, "threadTypeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/Integer;>;>;"
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 243
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmProcessThreadForTypeMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 244
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmProcessThreadForTypeMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object v1, v2

    .line 245
    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 247
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 248
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    .line 249
    .local v6, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string v7, "ANIMATION"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 250
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 251
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v8}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmAnimationThreadSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 252
    :goto_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 253
    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v9}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmAnimationThreadSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :try_start_3
    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 257
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v8}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmCfms(Lcom/android/server/ssrm/fgapps/TopAppManager;)Lcom/android/server/ssrm/CustomFrequencyManagerService;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->setLauncherPidInitialized(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 255
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "threadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "threadTypeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/Integer;>;>;"
    .end local p0    # "this":Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;
    .end local p1    # "pid":I
    .end local p2    # "uid":I
    :try_start_5
    throw v2

    .line 259
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/Integer;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v0    # "threadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "threadTypeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/Integer;>;>;"
    .restart local p0    # "this":Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;
    .restart local p1    # "pid":I
    .restart local p2    # "uid":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 261
    :cond_2
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 263
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmProcessThreadMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 264
    :try_start_6
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmProcessThreadMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    move-object v0, v3

    .line 265
    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 268
    :cond_3
    monitor-exit v2

    .line 269
    return-void

    .line 268
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 261
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 241
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "processUid"    # I
    .param p3, "packageUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;

    .line 211
    return-void
.end method
