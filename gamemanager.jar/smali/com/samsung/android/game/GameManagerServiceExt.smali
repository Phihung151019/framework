.class public Lcom/samsung/android/game/GameManagerServiceExt;
.super Ljava/lang/Object;
.source "GameManagerServiceExt.java"


# static fields
.field public static final AUTO_COLLECTION_STATE:Ljava/lang/String; = "collection_state"

.field private static final CONTROL_START_SUBTSPEVENT_SCAN:Ljava/lang/String; = "control_start_subtspevent_scan"

.field private static final CONTROL_START_TSPEVENT_SCAN:Ljava/lang/String; = "control_start_tspevent_scan"

.field private static final CONTROL_STOP_SUBTSPEVENT_SCAN:Ljava/lang/String; = "control_stop_subtspevent_scan"

.field private static final CONTROL_STOP_TSPEVENT_SCAN:Ljava/lang/String; = "control_stop_tspevent_scan"

.field private static final ENABLE_GAME_VIDEO_SPEEDY:Ljava/lang/String; = "enable_game_video_speedy"

.field public static final GET_FEATURE_VERSION_MAP_CHN:Ljava/lang/String; = "get_feature_version_map_chn"

.field private static final GET_SUBTSPEVENT_DATA:Ljava/lang/String; = "get_subtspevent_data"

.field private static final GET_TSPEVENT_DATA:Ljava/lang/String; = "get_tspevent_data"

.field public static final SET_COLLECTION_STATE:Ljava/lang/String; = "set_collection_state"

.field public static final SET_DISALLOW_LIST_GAME_VIDEO_SPEEDY:Ljava/lang/String; = "set_disallow_list_game_video_speedy"

.field private static final SET_INPUT_REDIRECTION:Ljava/lang/String; = "set_input_redirection"

.field private static final TAG:Ljava/lang/String; = "GameManagerExt"


# instance fields
.field private inputStream:Ljava/io/FileInputStream;

.field private inputSubStream:Ljava/io/FileInputStream;

.field mContext:Landroid/content/Context;

.field private mInputRedirectionHelper:Lcom/samsung/android/game/input/InputRedirectionHelper;

.field private mSubTspEventNode:Ljava/io/File;

.field private mTspEventNode:Ljava/io/File;

.field private readStream:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mTspEventNode:Ljava/io/File;

    .line 121
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mSubTspEventNode:Ljava/io/File;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputStream:Ljava/io/FileInputStream;

    .line 123
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputSubStream:Ljava/io/FileInputStream;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->readStream:Ljava/io/FileInputStream;

    .line 126
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mContext:Landroid/content/Context;

    .line 130
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method

.method private checkSettingPermission()Z
    .locals 10

    .line 475
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 476
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 477
    .local v1, "uid":I
    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 480
    return v4

    .line 482
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "packages":[Ljava/lang/String;
    const-string v5, "GameManagerExt"

    if-nez v3, :cond_2

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages is null. uid: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return v4

    .line 487
    :cond_2
    array-length v6, v3

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v3, v7

    .line 488
    .local v8, "pkg":Ljava/lang/String;
    const-string v9, "android"

    invoke-virtual {v0, v9, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 489
    .local v9, "match":I
    if-nez v9, :cond_3

    .line 490
    return v2

    .line 487
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "match":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 493
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSettingPermission(). no permission. "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return v4

    .line 478
    .end local v3    # "packages":[Ljava/lang/String;
    :cond_5
    :goto_1
    return v2
.end method

.method private checkTSPActive(Ljava/io/File;)I
    .locals 4
    .param p1, "checkPath"    # Ljava/io/File;

    .line 283
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "enableFile1":Ljava/io/File;
    const/4 v1, 0x0

    .line 287
    .local v1, "value":I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerServiceExt;->readStream:Ljava/io/FileInputStream;

    .line 288
    const/4 v2, 0x5

    new-array v2, v2, [B

    .line 289
    .local v2, "resultBuf":[B
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerServiceExt;->readStream:Ljava/io/FileInputStream;

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 290
    const/4 v3, 0x0

    aget-byte v3, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 294
    .end local v2    # "resultBuf":[B
    :cond_0
    nop

    .line 295
    return v1

    .line 292
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private enableGameVideoSpeedy(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 417
    const-string v0, "value_bool_1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGameVideoSpeedUp(), jsonParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "log":Ljava/lang/String;
    const-string v2, "GameManagerExt"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 423
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    .local v4, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 426
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerServiceExt;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 428
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 430
    .local v0, "enable":Z
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSPERF_ACTIVE_APP_GVS_ENABLE:Z

    if-eqz v5, :cond_2

    .line 431
    iget-object v5, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mContext:Landroid/content/Context;

    const-string v6, "PkgPredictorService"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ipm/SecIpmManager;

    .line 432
    .local v5, "mSecIpmManager":Lcom/samsung/android/ipm/SecIpmManager;
    if-eqz v5, :cond_2

    .line 433
    invoke-virtual {v5, v0}, Lcom/samsung/android/ipm/SecIpmManager;->enableGameVideoSpeedy(Z)V

    .line 436
    .end local v5    # "mSecIpmManager":Lcom/samsung/android/ipm/SecIpmManager;
    :cond_2
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/samsung/android/game/GameManagerServiceExt;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 437
    .end local v0    # "enable":Z
    .end local v4    # "requestJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "enableGameVideoSpeedy()-remote exception"

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerServiceExt;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchTSPNodeNum(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "scanPath"    # Ljava/io/File;

    .line 235
    move-object v0, p1

    .line 236
    .local v0, "checkPath":Ljava/io/File;
    const-string v1, ""

    .line 237
    .local v1, "returnNode":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 240
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "event"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we know TSP event node is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManagerExt"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    goto :goto_1

    .line 238
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 247
    :cond_1
    :goto_1
    return-object v1
.end method

.method private fetchTSPNumFromInputFW()Ljava/lang/String;
    .locals 11

    .line 251
    const-string v0, "GameManagerExt"

    const-string v1, ""

    .line 254
    .local v1, "returnNode":Ljava/lang/String;
    :try_start_0
    const-string v2, "start fetch TSP num."

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "input"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 257
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v3, -0x1

    .line 258
    .local v3, "tspDeviceId":I
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    .line 259
    .local v7, "deviceid":I
    invoke-virtual {v2, v7}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v8

    .line 260
    .local v8, "inputDevice":Landroid/view/InputDevice;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sec_touchscreen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 263
    move v3, v7

    .line 264
    goto :goto_1

    .line 258
    .end local v7    # "deviceid":I
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 267
    :cond_1
    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 268
    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager;->getInputDevicePath(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v1, v4

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return TSP num: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v3    # "tspDeviceId":I
    :cond_2
    goto :goto_2

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run getevent fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method private getChnFeatureVersionJson()Ljava/lang/String;
    .locals 8

    .line 527
    const-string v0, "GameManagerExt"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 530
    .local v1, "responseJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/MetaChn$Feature;->getFeatureNames()Ljava/util/Set;

    move-result-object v2

    .line 531
    .local v2, "featureNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 532
    .local v4, "featureName":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/game/MetaChn$Feature;->getVersion(Ljava/lang/String;)I

    move-result v5

    .line 533
    .local v5, "version":I
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getChnFeatureVersionJson(), feature="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v4    # "featureName":Ljava/lang/String;
    .end local v5    # "version":I
    goto :goto_0

    .line 538
    .end local v2    # "featureNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_1

    .line 536
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "getChnFeatureVersionJson()"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubTSPEventNodeReportData()Ljava/lang/String;
    .locals 8

    .line 214
    const-string v0, ""

    .line 215
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mSubTspEventNode:Ljava/io/File;

    const-string v2, "GameManagerExt"

    if-nez v1, :cond_0

    .line 216
    const-string v1, "tsp node is not initialized, ignore."

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "0000:"

    .line 218
    return-object v0

    .line 222
    :cond_0
    const/16 v1, 0x400

    :try_start_0
    new-array v3, v1, [B

    .line 223
    .local v3, "buf":[B
    iget-object v4, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputSubStream:Ljava/io/FileInputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 224
    .local v1, "result":I
    new-instance v4, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "readStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%04d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "response":Ljava/lang/String;
    .end local v1    # "result":I
    .end local v3    # "buf":[B
    .end local v4    # "readStr":Ljava/lang/String;
    .local v2, "response":Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v2    # "response":Ljava/lang/String;
    .restart local v0    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTSPEventNodeReportData()-sysfs data read exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "0000:"

    .line 231
    .end local v0    # "response":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "response":Ljava/lang/String;
    :goto_0
    return-object v2
.end method

.method private getTSPEventNodeReportData()Ljava/lang/String;
    .locals 8

    .line 188
    const-string v0, ""

    .line 189
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mTspEventNode:Ljava/io/File;

    const-string v2, "GameManagerExt"

    if-nez v1, :cond_0

    .line 190
    const-string v1, "tsp node is not initialized, ignore."

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "0000:"

    .line 192
    return-object v0

    .line 198
    :cond_0
    const/16 v1, 0x400

    :try_start_0
    new-array v3, v1, [B

    .line 199
    .local v3, "buf":[B
    iget-object v4, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputStream:Ljava/io/FileInputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 201
    .local v1, "result":I
    new-instance v4, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "readStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%04d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "response":Ljava/lang/String;
    .end local v1    # "result":I
    .end local v3    # "buf":[B
    .end local v4    # "readStr":Ljava/lang/String;
    .local v2, "response":Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v2    # "response":Ljava/lang/String;
    .restart local v0    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTSPEventNodeReportData()-sysfs data read exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "0000:"

    .line 210
    .end local v0    # "response":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "response":Ljava/lang/String;
    :goto_0
    return-object v2
.end method

.method private putBoolToStrJson(Z)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Z

    .line 498
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 500
    .local v0, "responseJson":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "value_bool_1"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    goto :goto_0

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 504
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setCollectionState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "JsonParam"    # Ljava/lang/String;

    .line 508
    if-nez p1, :cond_0

    .line 509
    const-string v0, "false"

    return-object v0

    .line 511
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, "requestJson":Lorg/json/JSONObject;
    const-string v1, "collection_state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "clickPosition":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 514
    .local v2, "positionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 515
    .local v3, "x":I
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 516
    .local v4, "y":I
    iget-object v5, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mInputRedirectionHelper:Lcom/samsung/android/game/input/InputRedirectionHelper;

    if-eqz v5, :cond_1

    .line 517
    iget-object v5, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mInputRedirectionHelper:Lcom/samsung/android/game/input/InputRedirectionHelper;

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/game/input/InputRedirectionHelper;->setInputPickUpCommand(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v0    # "requestJson":Lorg/json/JSONObject;
    .end local v1    # "clickPosition":Ljava/lang/String;
    .end local v2    # "positionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 523
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    const-string v0, "true"

    return-object v0
.end method

.method private setGameVideoSpeedyDisAllowList(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 444
    const-string v0, "package_name_list"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGameVideoSpeedyDisAllowList(), jsonParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "log":Ljava/lang/String;
    const-string v2, "GameManagerExt"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 450
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 452
    .local v4, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 453
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerServiceExt;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 455
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "pkgNameCsv":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 458
    .local v5, "disAllowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SYSPERF_ACTIVE_APP_GVS_ENABLE:Z

    if-eqz v6, :cond_2

    .line 459
    iget-object v6, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mContext:Landroid/content/Context;

    const-string v7, "PkgPredictorService"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/ipm/SecIpmManager;

    .line 460
    .local v6, "mSecIpmManager":Lcom/samsung/android/ipm/SecIpmManager;
    if-eqz v6, :cond_2

    .line 461
    invoke-virtual {v6, v5}, Lcom/samsung/android/ipm/SecIpmManager;->setGameVideoSpeedyDisAllowList(Ljava/util/List;)V

    .line 464
    .end local v6    # "mSecIpmManager":Lcom/samsung/android/ipm/SecIpmManager;
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/game/GameManagerServiceExt;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 465
    .end local v0    # "pkgNameCsv":Ljava/lang/String;
    .end local v4    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "disAllowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGameVideoSpeedyDisAllowList()-remote exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerServiceExt;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startSubTSPNodeScanning()Ljava/lang/String;
    .locals 7

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    return-object v0

    .line 350
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp1/input"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "tsp1Dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp2/input"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, "tsp2Dir":Ljava/io/File;
    const-string v2, ""

    .line 353
    .local v2, "numNode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "GameManagerExt"

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerServiceExt;->checkTSPActive(Ljava/io/File;)I

    move-result v3

    const/16 v5, 0x31

    if-ne v3, v5, :cond_1

    .line 355
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerServiceExt;->fetchTSPNodeNum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 357
    :cond_1
    const-string v3, "strange case, 2 node is disabled, maybe suspend."

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_2
    const-string v3, "tsp folder is not exist."

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerServiceExt;->readStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_3

    .line 364
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerServiceExt;->readStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    :cond_3
    nop

    .line 370
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/dev/input/event"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, "tspNode":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 372
    iput-object v3, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mSubTspEventNode:Ljava/io/File;

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found TSP event node is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mSubTspEventNode:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputSubStream:Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    nop

    .line 380
    return-object v2

    .line 377
    :catch_0
    move-exception v4

    .line 378
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 382
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    const-string v5, "tsp event node is not exist."

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v4, "-1"

    return-object v4

    .line 366
    .end local v3    # "tspNode":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 367
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private startTSPNodeScanning()Ljava/lang/String;
    .locals 8

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/input"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "tspDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp1/input"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, "tsp1Dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/tsp2/input"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, "tsp2Dir":Ljava/io/File;
    const-string v3, ""

    .line 305
    .local v3, "numNode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "GameManagerExt"

    if-eqz v4, :cond_1

    .line 307
    invoke-direct {p0, v0}, Lcom/samsung/android/game/GameManagerServiceExt;->fetchTSPNodeNum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 309
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerServiceExt;->checkTSPActive(Ljava/io/File;)I

    move-result v4

    const/16 v6, 0x31

    if-ne v4, v6, :cond_2

    .line 310
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerServiceExt;->fetchTSPNodeNum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 311
    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/game/GameManagerServiceExt;->checkTSPActive(Ljava/io/File;)I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 312
    invoke-direct {p0, v2}, Lcom/samsung/android/game/GameManagerServiceExt;->fetchTSPNodeNum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 314
    :cond_3
    const-string v4, "strange case, 2 node is disabled, maybe suspend."

    invoke-static {v5, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->fetchTSPNumFromInputFW()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 319
    const-string v4, "tsp folder is not exist."

    invoke-static {v5, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_5
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/game/GameManagerServiceExt;->readStream:Ljava/io/FileInputStream;

    if-eqz v4, :cond_6

    .line 324
    iget-object v4, p0, Lcom/samsung/android/game/GameManagerServiceExt;->readStream:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :cond_6
    nop

    .line 330
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/dev/input/event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v4, "tspNode":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 332
    iput-object v4, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mTspEventNode:Ljava/io/File;

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found TSP event node is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mTspEventNode:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputStream:Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    nop

    .line 340
    return-object v3

    .line 337
    :catch_0
    move-exception v5

    .line 338
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 342
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    const-string v6, "tsp event node is not exist."

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v5, "-1"

    return-object v5

    .line 326
    .end local v4    # "tspNode":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 327
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private stopSubTSPNodeScanning()Ljava/lang/String;
    .locals 2

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    return-object v0

    .line 404
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mSubTspEventNode:Ljava/io/File;

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputSubStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputSubStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_1
    nop

    .line 412
    const-string v0, "true"

    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopTSPNodeScanning()Ljava/lang/String;
    .locals 2

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    return-object v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mTspEventNode:Ljava/io/File;

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerServiceExt;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_1
    nop

    .line 398
    const-string v0, "true"

    return-object v0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public respondWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "response":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "get_subtspevent_data"

    const-string v3, "get_tspevent_data"

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "get_feature_version_map_chn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "set_input_redirection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "control_stop_tspevent_scan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "set_disallow_list_game_video_speedy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "control_start_subtspevent_scan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "set_collection_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_8
    const-string v1, "enable_game_video_speedy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_9
    const-string v1, "control_stop_subtspevent_scan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_a
    const-string v1, "control_start_tspevent_scan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 176
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->getChnFeatureVersionJson()Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_2

    .line 173
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerServiceExt;->setCollectionState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    goto :goto_2

    .line 169
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerServiceExt;->setGameVideoSpeedyDisAllowList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    goto :goto_2

    .line 166
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerServiceExt;->enableGameVideoSpeedy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    goto :goto_2

    .line 162
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->stopSubTSPNodeScanning()Ljava/lang/String;

    move-result-object v0

    .line 163
    goto :goto_2

    .line 159
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->startSubTSPNodeScanning()Ljava/lang/String;

    move-result-object v0

    .line 160
    goto :goto_2

    .line 156
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->getSubTSPEventNodeReportData()Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_2

    .line 153
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->stopTSPNodeScanning()Ljava/lang/String;

    move-result-object v0

    .line 154
    goto :goto_2

    .line 150
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->startTSPNodeScanning()Ljava/lang/String;

    move-result-object v0

    .line 151
    goto :goto_2

    .line 147
    :pswitch_9
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerServiceExt;->getTSPEventNodeReportData()Ljava/lang/String;

    move-result-object v0

    .line 148
    goto :goto_2

    .line 140
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mInputRedirectionHelper:Lcom/samsung/android/game/input/InputRedirectionHelper;

    if-nez v1, :cond_2

    .line 141
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 142
    .local v1, "windowManagerService":Lcom/android/server/wm/WindowManagerInternal;
    new-instance v4, Lcom/samsung/android/game/input/InputRedirectionHelper;

    iget-object v5, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/samsung/android/game/input/InputRedirectionHelper;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V

    iput-object v4, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mInputRedirectionHelper:Lcom/samsung/android/game/input/InputRedirectionHelper;

    .line 144
    .end local v1    # "windowManagerService":Lcom/android/server/wm/WindowManagerInternal;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerServiceExt;->mInputRedirectionHelper:Lcom/samsung/android/game/input/InputRedirectionHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/input/InputRedirectionHelper;->setInputFilterCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    nop

    .line 181
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respondWithJsonForChina. command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\njsonParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresponse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManagerExt"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7eb70d6c -> :sswitch_a
        -0x4c09d772 -> :sswitch_9
        -0x4a049339 -> :sswitch_8
        -0x25756213 -> :sswitch_7
        -0x21ed194e -> :sswitch_6
        -0x1d81f669 -> :sswitch_5
        -0x13f3377 -> :sswitch_4
        0x8745e38 -> :sswitch_3
        0x1b0e4a49 -> :sswitch_2
        0x1f58ab1a -> :sswitch_1
        0x46e849ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
