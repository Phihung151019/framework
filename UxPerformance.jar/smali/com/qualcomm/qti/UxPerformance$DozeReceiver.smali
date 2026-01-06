.class Lcom/qualcomm/qti/UxPerformance$DozeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UxPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/UxPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DozeReceiver"
.end annotation


# instance fields
.field private blacklist pAppsThreadCreated:Z

.field private blacklist screenOff:Z

.field final synthetic blacklist this$0:Lcom/qualcomm/qti/UxPerformance;


# direct methods
.method private constructor blacklist <init>(Lcom/qualcomm/qti/UxPerformance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->this$0:Lcom/qualcomm/qti/UxPerformance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 229
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->screenOff:Z

    .line 230
    iput-boolean p1, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->pAppsThreadCreated:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/qualcomm/qti/UxPerformance;Lcom/qualcomm/qti/UxPerformance-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;-><init>(Lcom/qualcomm/qti/UxPerformance;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 233
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetEnablePAppsSpeedInitialized()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "UxPerf"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 235
    :try_start_0
    const-string v0, "com.qualcomm.qti.Performance"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 236
    .local v0, "sPerfClass":Ljava/lang/Class;
    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v4

    .line 237
    .local v5, "argClasses":[Ljava/lang/Class;
    const-string v6, "perfGetProp"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 238
    .local v6, "sPerfGetPropFunc":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputmUxPerf(Ljava/lang/Object;)V

    .line 241
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "vendor.iop.enable_speed"

    const-string v9, "false"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 242
    .local v7, "retVal_3":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputEnablePAppsSpeed(Z)V

    .line 243
    invoke-static {v4}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputEnablePAppsSpeedInitialized(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v0    # "sPerfClass":Ljava/lang/Class;
    .end local v5    # "argClasses":[Ljava/lang/Class;
    .end local v6    # "sPerfGetPropFunc":Ljava/lang/reflect/Method;
    .end local v7    # "retVal_3":Ljava/lang/Object;
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Couldn\'t load Performance Class w/ context"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetEnablePAppsSpeedInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetEnablePAppsSpeed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    return-void

    .line 253
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_2

    :sswitch_1
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :sswitch_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 272
    :pswitch_0
    iput-boolean v3, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->screenOff:Z

    .line 273
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->this$0:Lcom/qualcomm/qti/UxPerformance;

    invoke-static {v0}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$fgetpAppsThread(Lcom/qualcomm/qti/UxPerformance;)Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->this$0:Lcom/qualcomm/qti/UxPerformance;

    invoke-static {v0}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$fgetpAppsThread(Lcom/qualcomm/qti/UxPerformance;)Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->setStopThread()V

    .line 276
    :cond_4
    iput-boolean v3, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->pAppsThreadCreated:Z

    .line 277
    goto :goto_3

    .line 269
    :pswitch_1
    iput-boolean v4, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->screenOff:Z

    .line 270
    goto :goto_3

    .line 256
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->this$0:Lcom/qualcomm/qti/UxPerformance;

    const-string v1, "Calling PMS broadcast receiver. Entered device idle mode"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 257
    iget-boolean v0, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->screenOff:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->pAppsThreadCreated:Z

    if-nez v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v1, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;

    iget-object v3, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->this$0:Lcom/qualcomm/qti/UxPerformance;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;-><init>(Lcom/qualcomm/qti/UxPerformance;Lcom/qualcomm/qti/UxPerformance-IA;)V

    invoke-static {v0, v1}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$fputpAppsThread(Lcom/qualcomm/qti/UxPerformance;Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;)V

    .line 259
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->this$0:Lcom/qualcomm/qti/UxPerformance;

    invoke-static {v0}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$fgetpAppsThread(Lcom/qualcomm/qti/UxPerformance;)Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 260
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->this$0:Lcom/qualcomm/qti/UxPerformance;

    invoke-static {v1}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$fgetpAppsThread(Lcom/qualcomm/qti/UxPerformance;)Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    :cond_5
    iput-boolean v4, p0, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;->pAppsThreadCreated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    :cond_6
    goto :goto_3

    .line 264
    :catch_1
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 281
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_2
        -0x56ac2893 -> :sswitch_1
        0x33e5d967 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
