.class Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;
.super Ljava/lang/Object;
.source "UxPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/UxPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PAppsSpeedThread"
.end annotation


# instance fields
.field private blacklist stopPAppsThread:Z

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

    .line 284
    iput-object p1, p0, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->stopPAppsThread:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/qualcomm/qti/UxPerformance;Lcom/qualcomm/qti/UxPerformance-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;-><init>(Lcom/qualcomm/qti/UxPerformance;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 22

    .line 294
    move-object/from16 v1, p0

    const-string v0, ""

    const/4 v2, 0x0

    .line 295
    .local v2, "s_low":Z
    :try_start_0
    const-string v3, "dalvik.vm.usejitprofiles"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v7, v3

    .line 297
    .local v7, "checkProfiles":Z
    const-string v3, "pm.dexopt.bg-dexopt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "defaultFilter":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetpm()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v5

    move v2, v5

    .line 299
    const-string v5, "speed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    return-void

    .line 301
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetUsePerfApiForPrefAppsInit()Z

    move-result v5

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v5, :cond_4

    .line 302
    const-string v5, "com.qualcomm.qti.Performance"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 303
    .local v5, "sPerfClass":Ljava/lang/Class;
    new-array v6, v12, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v13

    .line 304
    .local v6, "argClasses":[Ljava/lang/Class;
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 305
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputmUxPerf(Ljava/lang/Object;)V

    .line 307
    :cond_1
    const-string v8, "ro.board.first_api_level"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 308
    .local v8, "board_first_api_lvl":I
    const-string v9, "ro.board.api_level"

    invoke-static {v9, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 309
    .local v9, "board_api_lvl":I
    const/16 v10, 0x20

    if-ge v8, v10, :cond_2

    if-ge v9, v10, :cond_2

    move v10, v4

    goto :goto_0

    :cond_2
    move v10, v13

    :goto_0
    invoke-static {v10}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputUsePerfApiForPrefApps(Z)V

    .line 310
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetUsePerfApiForPrefApps()Z

    move-result v10

    const/4 v11, 0x3

    const/4 v14, 0x4

    if-eqz v10, :cond_3

    .line 311
    new-array v10, v13, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v10, v4

    .line 312
    .end local v6    # "argClasses":[Ljava/lang/Class;
    .local v10, "argClasses":[Ljava/lang/Class;
    const-string v6, "perfSyncRequest"

    invoke-virtual {v5, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputsUxeTrigFunc(Ljava/lang/reflect/Method;)V

    .line 313
    new-array v6, v14, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v6, v4

    const-class v14, Ljava/lang/String;

    aput-object v14, v6, v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v6, v12

    const-class v14, [I

    aput-object v14, v6, v11

    .line 314
    .end local v10    # "argClasses":[Ljava/lang/Class;
    .restart local v6    # "argClasses":[Ljava/lang/Class;
    const-string v10, "perfEvent"

    invoke-virtual {v5, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputsUxeEventFunc(Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 316
    :cond_3
    new-array v10, v13, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v10, v4

    .line 317
    .end local v6    # "argClasses":[Ljava/lang/Class;
    .restart local v10    # "argClasses":[Ljava/lang/Class;
    const-string v6, "perfUXEngine_trigger"

    invoke-virtual {v5, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputsUxeTrigFunc(Ljava/lang/reflect/Method;)V

    .line 318
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v6, v4

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v6, v13

    const-class v15, Ljava/lang/String;

    aput-object v15, v6, v12

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v6, v11

    const-class v11, Ljava/lang/String;

    aput-object v11, v6, v14

    .line 319
    .end local v10    # "argClasses":[Ljava/lang/Class;
    .restart local v6    # "argClasses":[Ljava/lang/Class;
    const-string v10, "perfUXEngine_events"

    invoke-virtual {v5, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputsUxeEventFunc(Ljava/lang/reflect/Method;)V

    .line 321
    :goto_1
    invoke-static {v13}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfputUsePerfApiForPrefAppsInit(Z)V

    .line 323
    .end local v5    # "sPerfClass":Ljava/lang/Class;
    .end local v6    # "argClasses":[Ljava/lang/Class;
    .end local v8    # "board_first_api_lvl":I
    .end local v9    # "board_api_lvl":I
    :cond_4
    move-object v5, v0

    .line 324
    .local v5, "retVal":Ljava/lang/Object;
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeTrigFunc()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 325
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetUsePerfApiForPrefApps()Z

    move-result v6

    if-nez v6, :cond_5

    .line 326
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeTrigFunc()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    move-object v14, v5

    goto :goto_2

    .line 328
    :cond_5
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeTrigFunc()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x1605

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    move-object v14, v5

    goto :goto_2

    .line 324
    :cond_6
    move-object v14, v5

    .line 331
    .end local v5    # "retVal":Ljava/lang/Object;
    .local v14, "retVal":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    .line 332
    .local v15, "ret":Ljava/lang/String;
    if-eqz v15, :cond_13

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_9

    .line 334
    :cond_7
    iget-object v0, v1, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Obtained PApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 335
    const-string v0, "="

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "pApps_del":[Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_3
    array-length v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v16, 0xc

    const-string v8, " to speed mode. Result: "

    const/4 v9, 0x0

    const/16 v17, 0x10a2

    const/4 v10, -0x1

    if-ge v5, v6, :cond_b

    .line 337
    :try_start_1
    iget-boolean v6, v1, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->stopPAppsThread:Z

    if-eqz v6, :cond_8

    .line 338
    move/from16 v18, v4

    move-object v4, v8

    move-object v13, v9

    move v6, v10

    goto/16 :goto_5

    .line 340
    :cond_8
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetpm()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move v11, v6

    .end local v6    # "i":I
    .local v11, "i":I
    aget-object v6, v0, v11

    move-object/from16 v18, v8

    const-string v8, "speed-profile"

    move/from16 v19, v10

    const/4 v10, 0x1

    move/from16 v20, v11

    .end local v11    # "i":I
    .local v20, "i":I
    const/4 v11, 0x0

    move-object/from16 v21, v9

    const/4 v9, 0x1

    move-object/from16 v13, v18

    move/from16 v18, v4

    move-object v4, v13

    move-object/from16 v13, v21

    move/from16 v21, v19

    invoke-interface/range {v5 .. v11}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v5

    .line 342
    .local v5, "tmp":Z
    iget-object v6, v1, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed pApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 344
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetUsePerfApiForPrefApps()Z

    move-result v4

    if-nez v4, :cond_9

    .line 345
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v0, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v8, v9, v10, v11, v13}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 347
    :cond_9
    move/from16 v6, v21

    filled-new-array {v12, v6}, [I

    move-result-object v4

    .line 348
    .local v4, "arr":[I
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v0, v20

    array-length v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v10, v11, v4}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v4    # "arr":[I
    .end local v5    # "tmp":Z
    :cond_a
    :goto_4
    add-int/lit8 v5, v20, 0x1

    move/from16 v4, v18

    const/4 v13, 0x1

    .end local v20    # "i":I
    .local v5, "i":I
    goto/16 :goto_3

    :cond_b
    move/from16 v18, v4

    move/from16 v20, v5

    move-object v4, v8

    move-object v13, v9

    move v6, v10

    .line 353
    .end local v5    # "i":I
    :goto_5
    aget-object v5, v0, v18

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "pApps_add":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    array-length v9, v5

    if-ge v8, v9, :cond_12

    .line 355
    if-nez v2, :cond_11

    iget-boolean v9, v1, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->stopPAppsThread:Z

    if-eqz v9, :cond_c

    .line 356
    goto/16 :goto_8

    .line 358
    :cond_c
    move-object v9, v5

    .end local v5    # "pApps_add":[Ljava/lang/String;
    .local v9, "pApps_add":[Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetpm()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move/from16 v21, v6

    aget-object v6, v9, v8

    move v10, v8

    .end local v8    # "i":I
    .local v10, "i":I
    const-string v8, "speed"

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    const/4 v10, 0x1

    move/from16 v18, v11

    .end local v11    # "i":I
    .local v18, "i":I
    const/4 v11, 0x0

    move-object/from16 v20, v9

    .end local v9    # "pApps_add":[Ljava/lang/String;
    .local v20, "pApps_add":[Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface/range {v5 .. v11}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v5

    .line 360
    .local v5, "tmp":Z
    iget-object v6, v1, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added pApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v20, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 362
    if-eqz v5, :cond_e

    .line 363
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetUsePerfApiForPrefApps()Z

    move-result v6

    if-nez v6, :cond_d

    .line 364
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0xb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget-object v11, v20, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 366
    :cond_d
    move/from16 v6, v21

    const/4 v8, 0x1

    filled-new-array {v8, v6}, [I

    move-result-object v9

    .line 367
    .local v9, "arr":[I
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aget-object v8, v20, v18

    move/from16 v21, v6

    array-length v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v12, v8, v6, v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v10, v11, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    nop

    .end local v9    # "arr":[I
    goto :goto_7

    .line 370
    :cond_e
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetUsePerfApiForPrefApps()Z

    move-result v6

    if-nez v6, :cond_f

    .line 371
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget-object v11, v20, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 373
    :cond_f
    move/from16 v8, v21

    const/4 v6, 0x2

    filled-new-array {v6, v8}, [I

    move-result-object v9

    .line 374
    .restart local v9    # "arr":[I
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetmUxPerf()Ljava/lang/Object;

    move-result-object v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aget-object v6, v20, v18

    array-length v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v12, v6, v8, v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v10, v11, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    .end local v5    # "tmp":Z
    .end local v9    # "arr":[I
    :cond_10
    :goto_7
    add-int/lit8 v8, v18, 0x1

    move-object/from16 v5, v20

    const/4 v6, -0x1

    const/4 v12, 0x2

    .end local v18    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_6

    .line 355
    .end local v20    # "pApps_add":[Ljava/lang/String;
    .local v5, "pApps_add":[Ljava/lang/String;
    :cond_11
    move-object/from16 v20, v5

    move/from16 v18, v8

    .end local v5    # "pApps_add":[Ljava/lang/String;
    .end local v8    # "i":I
    .restart local v18    # "i":I
    .restart local v20    # "pApps_add":[Ljava/lang/String;
    goto :goto_8

    .line 354
    .end local v18    # "i":I
    .end local v20    # "pApps_add":[Ljava/lang/String;
    .restart local v5    # "pApps_add":[Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_12
    move-object/from16 v20, v5

    move/from16 v18, v8

    .line 381
    .end local v0    # "pApps_del":[Ljava/lang/String;
    .end local v2    # "s_low":Z
    .end local v3    # "defaultFilter":Ljava/lang/String;
    .end local v5    # "pApps_add":[Ljava/lang/String;
    .end local v7    # "checkProfiles":Z
    .end local v8    # "i":I
    .end local v14    # "retVal":Ljava/lang/Object;
    .end local v15    # "ret":Ljava/lang/String;
    :goto_8
    goto :goto_a

    .line 333
    .restart local v2    # "s_low":Z
    .restart local v3    # "defaultFilter":Ljava/lang/String;
    .restart local v7    # "checkProfiles":Z
    .restart local v14    # "retVal":Ljava/lang/Object;
    .restart local v15    # "ret":Ljava/lang/String;
    :cond_13
    :goto_9
    return-void

    .line 379
    .end local v2    # "s_low":Z
    .end local v3    # "defaultFilter":Ljava/lang/String;
    .end local v7    # "checkProfiles":Z
    .end local v14    # "retVal":Ljava/lang/Object;
    .end local v15    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UxPerf"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public blacklist setStopThread()V
    .locals 1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;->stopPAppsThread:Z

    .line 290
    return-void
.end method
