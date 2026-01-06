.class final Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;
.super Landroid/os/Handler;
.source "KMTDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/mtd/KMTDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KMTDConnHandler"
.end annotation


# static fields
.field static final RUN_ANALYSIS_CONTENT_RESULT:I = 0x4

.field static final RUN_ANALYSIS_COPY:I = 0x2

.field static final RUN_ANALYSIS_URL:I = 0x1

.field static final RUN_ANALYSIS_URL_RESULT:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/mtd/KMTDService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/mtd/KMTDService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
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

    .line 299
    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    .line 300
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "mkfbpService returned null, please try again"

    const-string v2, "Exception in KFBP Manager Service"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;

    .line 376
    .local v1, "mobj4":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 378
    .local v3, "identity":J
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler$2;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler$2;-><init>(Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;Lcom/samsung/android/knox/mtd/KMTDService$messageObject;)V

    .line 384
    .local v0, "mtdCallback":Lcom/samsung/android/knox/mtd/IMtdCallback;
    iget-object v5, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v5}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUrls()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeContents(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local v0    # "mtdCallback":Lcom/samsung/android/knox/mtd/IMtdCallback;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    nop

    .line 390
    .end local v1    # "mobj4":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "identity":J
    goto/16 :goto_a

    .line 388
    .restart local v1    # "mobj4":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .restart local v3    # "identity":J
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    throw v0

    .line 391
    .end local v1    # "mobj4":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "identity":J
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    goto/16 :goto_a

    .line 352
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;

    .line 354
    .local v1, "mobj3":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 356
    .restart local v3    # "identity":J
    :try_start_2
    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler$1;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler$1;-><init>(Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;Lcom/samsung/android/knox/mtd/KMTDService$messageObject;)V

    .line 362
    .local v0, "mtdCallback":Lcom/samsung/android/knox/mtd/IMtdCallback;
    iget-object v5, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v5}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUrls()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v0, v7}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeUrls(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    .end local v0    # "mtdCallback":Lcom/samsung/android/knox/mtd/IMtdCallback;
    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 363
    :catch_1
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 366
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    nop

    .line 368
    .end local v1    # "mobj3":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "identity":J
    goto/16 :goto_a

    .line 366
    .restart local v1    # "mobj3":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .restart local v3    # "identity":J
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw v0

    .line 369
    .end local v1    # "mobj3":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "identity":J
    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    goto/16 :goto_a

    .line 330
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;

    .line 332
    .local v1, "mobj2":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    const-wide/16 v3, 0x1

    .line 334
    .local v3, "identity1":J
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$smisDeviceManaged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v3, v5

    .line 336
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUserId()I

    move-result v7

    sget-object v8, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->DEVICE_OWNER:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v8}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v8

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeContent(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUserId()I

    move-result v7

    sget-object v8, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->MANAGED:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v8}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v8

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeContent(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 344
    :goto_4
    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 341
    :catch_2
    move-exception v0

    .line 342
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 344
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    nop

    .line 346
    .end local v1    # "mobj2":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "identity1":J
    goto/16 :goto_a

    .line 344
    .restart local v1    # "mobj2":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .restart local v3    # "identity1":J
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    throw v0

    .line 347
    .end local v1    # "mobj2":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "identity1":J
    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getKFBP returned null, please try again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    goto/16 :goto_a

    .line 307
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 308
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;

    .line 310
    .local v1, "mobj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    const-wide/16 v3, 0x1

    .line 312
    .local v3, "identity":J
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$smisDeviceManaged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v3, v5

    .line 314
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUserId()I

    move-result v8

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v9

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->DEVICE_OWNER:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v10

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;I)V

    goto :goto_7

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUserId()I

    move-result v5

    invoke-static {v0, v5}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$smisManagedUserId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUserId()I

    move-result v8

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v9

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->MANAGED:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v10

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;I)V

    goto :goto_7

    .line 318
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$KMTDConnHandler;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getUserId()I

    move-result v8

    invoke-virtual {v1}, Lcom/samsung/android/knox/mtd/KMTDService$messageObject;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v9

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->NORMAL:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v10

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/knox/mtd/IKfbpFramework;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 323
    :goto_7
    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_9

    .line 320
    :catch_3
    move-exception v0

    .line 321
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 323
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    nop

    .line 325
    .end local v1    # "mobj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "identity":J
    goto :goto_a

    .line 323
    .restart local v1    # "mobj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .restart local v3    # "identity":J
    :goto_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    throw v0

    .line 326
    .end local v1    # "mobj":Lcom/samsung/android/knox/mtd/KMTDService$messageObject;
    .end local v3    # "identity":J
    :cond_6
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    nop

    .line 398
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
