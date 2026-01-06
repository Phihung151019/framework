.class final Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mMotionEvents:I

.field final mMotionSensors:I

.field mPowerSharedCleint:Z

.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/os/IBinder;II)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "motion_sensors"    # I
    .param p4, "motion_events"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1223
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    .line 1225
    iput p3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    .line 1226
    iput p4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    .line 1227
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mPowerSharedCleint:Z

    .line 1228
    return-void
.end method

.method private checkConditionPackageName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "listenerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1344
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetINCALLUI_PACKAGE_NAME(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1345
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetINCALLUI_PACKAGE_NAME(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/String;

    move-result-object v0

    .line 1346
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1344
    :goto_1
    return v0
.end method

.method private getTopActivityPackageName()Ljava/lang/String;
    .locals 5

    .line 1351
    const/4 v0, 0x0

    .line 1352
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1354
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1355
    .local v2, "activityManager":Landroid/app/ActivityManager;
    if-eqz v2, :cond_0

    .line 1356
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 1360
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    goto :goto_0

    .line 1358
    :catch_0
    move-exception v2

    .line 1359
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "MotionRecognitionService"

    const-string v4, "Activity Running Task Info Error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1363
    .local v3, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1364
    const-string v4, "com.android.phone"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1365
    goto :goto_2

    .line 1367
    .end local v3    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    goto :goto_1

    .line 1369
    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1232
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    .line 1233
    const/4 v2, 0x1

    shl-int v3, v2, v1

    .line 1234
    .local v3, "motion_event":I
    :try_start_0
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 1235
    const-string v4, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .binderDied event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmRefCntEvents(Lcom/samsung/android/gesture/MotionRecognitionService;)[I

    move-result-object v4

    aget v5, v4, v1

    sub-int/2addr v5, v2

    aput v5, v4, v1

    .line 1232
    .end local v3    # "motion_event":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1239
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mupdateRegisteredMotions(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1241
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1242
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1243
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mfinalizeMotionEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1244
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1246
    :cond_2
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .binderDied : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1248
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1249
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mPowerSharedCleint:Z

    if-eqz v1, :cond_3

    .line 1250
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1252
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mdisableUnusedSensors(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1253
    monitor-exit v0

    .line 1254
    return-void

    .line 1253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public callback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 9
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 1257
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v0

    .line 1258
    .local v0, "motion":I
    const/4 v1, 0x1

    .line 1259
    .local v1, "shouldCallback":Z
    const-string v2, " [TOP & BX] skip "

    const-string v3, " [Bloom] skip "

    const-string v4, " state : "

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "MotionRecognitionService"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 1279
    :sswitch_0
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    if-ne v8, v6, :cond_0

    .line 1280
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    if-ne v8, v6, :cond_0

    .line 1281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v1, 0x0

    .line 1285
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1286
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1287
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1261
    :sswitch_1
    iget v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/2addr v8, v6

    if-nez v8, :cond_2

    .line 1262
    const-string v8, "mMotionSensors & MOTION_USE_ACC == 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/4 v1, 0x0

    .line 1265
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 1266
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 1267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/4 v1, 0x0

    .line 1271
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1272
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-eq v3, v6, :cond_4

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1273
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v1, 0x0

    .line 1301
    :cond_5
    :goto_0
    if-nez v1, :cond_6

    .line 1302
    return-void

    .line 1305
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_c

    .line 1307
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    move-result-object v2

    .line 1308
    .local v2, "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    if-nez v2, :cond_7

    .line 1309
    const-string v3, "IMotionRecognitionCallback is null!"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return-void

    .line 1313
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_8

    .line 1314
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_a

    .line 1316
    :cond_8
    const-string v3, "check current task for multi-window"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-interface {v2}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->getListenerPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, "listenerPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1320
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    .line 1322
    .local v6, "foundTopPackage":Z
    :goto_1
    if-eqz v6, :cond_a

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->checkConditionPackageName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip event(direct-call) due to working in the background pkg : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", listener : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/4 v1, 0x0

    .line 1330
    .end local v3    # "listenerPackageName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "foundTopPackage":Z
    :cond_a
    if-eqz v1, :cond_b

    .line 1331
    invoke-interface {v2, p1}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1334
    .end local v2    # "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    :catch_0
    move-exception v2

    .line 1335
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed motionCallback"

    invoke-static {v7, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1336
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b
    :goto_2
    goto :goto_3

    .line 1339
    :cond_c
    const-string v2, "null listener received motion event!"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x56 -> :sswitch_0
    .end sparse-switch
.end method
