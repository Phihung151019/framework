.class public final Lcom/android/commands/sm/Sm;
.super Ljava/lang/Object;
.source "Sm.java"


# static fields
.field private static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final TAG:Ljava/lang/String; = "Sm"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I

.field mSm:Landroid/os/storage/IStorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkBuildType()Ljava/lang/String;
    .locals 3

    .line 466
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "checkType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBuildType checkType from SystemProperty is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sm"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const-string v1, "ENG"

    .local v1, "buildType":Ljava/lang/String;
    goto :goto_0

    .line 472
    .end local v1    # "buildType":Ljava/lang/String;
    :cond_0
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    const-string v1, "USER"

    .restart local v1    # "buildType":Ljava/lang/String;
    goto :goto_0

    .line 475
    .end local v1    # "buildType":Ljava/lang/String;
    :cond_1
    const-string v1, "ENG"

    .line 478
    .restart local v1    # "buildType":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private cleanupContainers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "containers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 407
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IStorageManager;->destroySecureContainer(Ljava/lang/String;Z)I

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private containerExists(Ljava/lang/String;)Z
    .locals 4
    .param p1, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "containers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 416
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "existed"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    const/4 v2, 0x1

    return v2

    .line 415
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 422
    const/4 v1, 0x0

    return v1
.end method

.method private createContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "filesystem"    # Ljava/lang/String;
    .param p5, "isExternal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v3, p4

    move v6, p5

    .end local p1    # "localId":Ljava/lang/String;
    .end local p2    # "size":I
    .end local p3    # "key":Ljava/lang/String;
    .end local p4    # "filesystem":Ljava/lang/String;
    .end local p5    # "isExternal":Z
    .local v1, "localId":Ljava/lang/String;
    .local v2, "size":I
    .local v3, "filesystem":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    .local v6, "isExternal":Z
    invoke-interface/range {v0 .. v6}, Landroid/os/storage/IStorageManager;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method

.method private destroyContainer(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private isContainerMounted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMediaMounted()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 452
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "mPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "success":Z
    :try_start_0
    new-instance v1, Lcom/android/commands/sm/Sm;

    invoke-direct {v1}, Lcom/android/commands/sm/Sm;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/commands/sm/Sm;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_0

    .line 55
    invoke-static {}, Lcom/android/commands/sm/Sm;->showUsage()I

    .line 56
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 58
    :cond_0
    const-string v2, "Sm"

    const-string v3, "Error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 62
    return-void
.end method

.method private mountContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/storage/IStorageManager;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 2

    .line 338
    iget v0, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 339
    const/4 v0, 0x0

    return-object v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    aget-object v0, v0, v1

    .line 342
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    .line 343
    return-object v0
.end method

.method private renameContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "localId1"    # Ljava/lang/String;
    .param p2, "localId2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private runStartCheckpoint()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    const-string v0, "<num-retries> must be a positive integer"

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "numRetriesString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 323
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v2, "numRetries":I
    nop

    .line 327
    if-lez v2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V

    .line 331
    return-void

    .line 328
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    .end local v2    # "numRetries":I
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected <num-retries>"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runSupportsCheckpoint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    .line 335
    return-void
.end method

.method private static showUsage()I
    .locals 3

    .line 347
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: sm list-disks [adoptable]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm list-volumes [public|private|emulated|stub|all]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm has-adoptable"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm get-primary-storage-uuid"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm set-force-adoptable [on|off|default]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm set-virtual-disk [true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm partition DISK [public|private|mixed] [ratio]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm mount VOLUME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm unmount VOLUME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm format VOLUME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm benchmark VOLUME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm idle-maint [run|abort]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm fstrim"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm forget [UUID|all]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm start-checkpoint <num-retries>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm supports-checkpoint"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm unmount-app-data-dirs PACKAGE_NAME PID USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method private trimContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/storage/IStorageManager;->trimSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private unmountContainer(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_15

    .line 69
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    .line 70
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    if-eqz v2, :cond_14

    .line 74
    iput-object p1, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    .line 75
    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 76
    .local v2, "op":Ljava/lang/String;
    iput v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    .line 78
    const-string v1, "list-disks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runListDisks()V

    goto/16 :goto_0

    .line 80
    :cond_0
    const-string v1, "list-volumes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runListVolumes()V

    goto/16 :goto_0

    .line 82
    :cond_1
    const-string v1, "has-adoptable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runHasAdoptable()V

    goto/16 :goto_0

    .line 84
    :cond_2
    const-string v1, "get-primary-storage-uuid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runGetPrimaryStorageUuid()V

    goto/16 :goto_0

    .line 86
    :cond_3
    const-string v1, "set-force-adoptable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetForceAdoptable()V

    goto/16 :goto_0

    .line 88
    :cond_4
    const-string v1, "set-sdcardfs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetSdcardfs()V

    goto/16 :goto_0

    .line 90
    :cond_5
    const-string v1, "partition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runPartition()V

    goto/16 :goto_0

    .line 92
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runMount()V

    goto/16 :goto_0

    .line 94
    :cond_7
    const-string v0, "unmount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 95
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runUnmount()V

    goto/16 :goto_0

    .line 96
    :cond_8
    const-string v0, "format"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 97
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runFormat()V

    goto/16 :goto_0

    .line 98
    :cond_9
    const-string v0, "benchmark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runBenchmark()V

    goto/16 :goto_0

    .line 100
    :cond_a
    const-string v0, "forget"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runForget()V

    goto/16 :goto_0

    .line 102
    :cond_b
    const-string v0, "get-fbe-mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 103
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runGetFbeMode()V

    goto :goto_0

    .line 104
    :cond_c
    const-string v0, "idle-maint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runIdleMaint()V

    goto :goto_0

    .line 106
    :cond_d
    const-string v0, "fstrim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 107
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runFstrim()V

    goto :goto_0

    .line 108
    :cond_e
    const-string v0, "set-virtual-disk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 109
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetVirtualDisk()V

    goto :goto_0

    .line 110
    :cond_f
    const-string v0, "start-checkpoint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 111
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->runStartCheckpoint()V

    goto :goto_0

    .line 112
    :cond_10
    const-string v0, "supports-checkpoint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 113
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->runSupportsCheckpoint()V

    goto :goto_0

    .line 114
    :cond_11
    const-string v0, "unmount-app-data-dirs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 115
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runDisableAppDataIsolation()V

    goto :goto_0

    .line 117
    :cond_12
    const-string v0, "ENG"

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->checkBuildType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "asec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 118
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runAsecTest()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    .end local v2    # "op":Ljava/lang/String;
    :cond_14
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Failed to find running mount service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public runAsecTest()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "command":Ljava/lang/String;
    :try_start_0
    const-string v0, "cleanup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->cleanupContainers()V

    move-object v3, p0

    goto/16 :goto_0

    .line 379
    :cond_0
    const-string v0, "exist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, " ret "

    if-eqz v0, :cond_1

    .line 380
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/sm/Sm;->containerExists(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v3, p0

    goto/16 :goto_0

    .line 381
    :cond_1
    const-string v0, "create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 383
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    move-object v3, p0

    :try_start_2
    invoke-direct/range {v3 .. v8}, Lcom/android/commands/sm/Sm;->createContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :cond_2
    move-object v3, p0

    const-string v0, "mount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/commands/sm/Sm;->mountContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_3
    const-string v0, "rename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/commands/sm/Sm;->renameContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    :cond_4
    const-string v0, "unmount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/commands/sm/Sm;->unmountContainer(Ljava/lang/String;Z)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_5
    const-string v0, "destroy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/commands/sm/Sm;->destroyContainer(Ljava/lang/String;Z)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_6
    const-string v0, "ismounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 393
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/commands/sm/Sm;->isContainerMounted(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_7
    const-string v0, "trim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 395
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 396
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v6

    .line 395
    invoke-direct {p0, v4, v5, v6}, Lcom/android/commands/sm/Sm;->trimContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 400
    :cond_8
    :goto_0
    goto :goto_2

    .line 398
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, p0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public runBenchmark()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "volId":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 246
    .local v1, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/PersistableBundle;>;"
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    new-instance v3, Lcom/android/commands/sm/Sm$1;

    invoke-direct {v3, p0, v1}, Lcom/android/commands/sm/Sm$1;-><init>(Lcom/android/commands/sm/Sm;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v2, v0, v3}, Landroid/os/storage/IStorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 259
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public runDisableAppDataIsolation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    const-string v0, "persist.sys.vold_app_data_isolation_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Storage app data isolation is not enabled."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 270
    .local v1, "pid":I
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 271
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v0, v1, v2}, Landroid/os/storage/IStorageManager;->disableAppDataIsolation(Ljava/lang/String;II)V

    .line 272
    return-void
.end method

.method public runForget()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "fsUuid":Ljava/lang/String;
    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->forgetAllVolumes()V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void
.end method

.method public runFormat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->format(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public runFstrim()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 285
    .local v0, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/PersistableBundle;>;"
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    new-instance v2, Lcom/android/commands/sm/Sm$2;

    invoke-direct {v2, p0, v0}, Lcom/android/commands/sm/Sm$2;-><init>(Lcom/android/commands/sm/Sm;Ljava/util/concurrent/CompletableFuture;)V

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 298
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public runGetFbeMode()V
    .locals 2

    .line 206
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void
.end method

.method public runGetPrimaryStorageUuid()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public runHasAdoptable()V
    .locals 2

    .line 163
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public runIdleMaint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    const-string v0, "run"

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 309
    .local v0, "im_run":Z
    if-eqz v0, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->runIdleMaintenance()V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->abortIdleMaintenance()V

    .line 314
    :goto_0
    return-void
.end method

.method public runListDisks()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const-string v0, "adoptable"

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    .local v0, "onlyAdoptable":Z
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v1

    .line 128
    .local v1, "disks":[Landroid/os/storage/DiskInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 129
    .local v4, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    .end local v4    # "disk":Landroid/os/storage/DiskInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_2
    return-void
.end method

.method public runListVolumes()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "filter":Ljava/lang/String;
    const-string v1, "public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x0

    .local v1, "filterType":I
    goto :goto_0

    .line 140
    .end local v1    # "filterType":I
    :cond_0
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x1

    .restart local v1    # "filterType":I
    goto :goto_0

    .line 142
    .end local v1    # "filterType":I
    :cond_1
    const-string v1, "emulated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const/4 v1, 0x2

    .restart local v1    # "filterType":I
    goto :goto_0

    .line 144
    .end local v1    # "filterType":I
    :cond_2
    const-string v1, "stub"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    const/4 v1, 0x5

    .restart local v1    # "filterType":I
    goto :goto_0

    .line 147
    .end local v1    # "filterType":I
    :cond_3
    const/4 v1, -0x1

    .line 150
    .restart local v1    # "filterType":I
    :goto_0
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 151
    .local v2, "vols":[Landroid/os/storage/VolumeInfo;
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v5, v2, v3

    .line 152
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v1, v6, :cond_5

    .line 153
    :cond_4
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    invoke-static {v6}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "envState":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v6    # "envState":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    :cond_6
    return-void
.end method

.method public runMount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public runPartition()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "diskId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "type":Ljava/lang/String;
    const-string v2, "public"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, v0}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    const-string v2, "private"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, v0}, Landroid/os/storage/IStorageManager;->partitionPrivate(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    const-string v2, "mixed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 222
    .local v2, "ratio":I
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v0, v2}, Landroid/os/storage/IStorageManager;->partitionMixed(Ljava/lang/String;I)V

    .line 223
    .end local v2    # "ratio":I
    nop

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported partition type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public runSetForceAdoptable()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x3

    .line 174
    .local v0, "mask":I
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 184
    :pswitch_0
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v3, v6}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    goto :goto_2

    .line 180
    :pswitch_1
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v4, v6}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 181
    goto :goto_2

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v5, v6}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 178
    nop

    .line 187
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_4
        0x1ad6f -> :sswitch_3
        0x36758e -> :sswitch_2
        0x5cb1923 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public runSetSdcardfs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    const/16 v0, 0xc

    .line 192
    .local v0, "mask":I
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/16 v2, 0xc

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 200
    :pswitch_0
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    goto :goto_2

    .line 197
    :pswitch_1
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/16 v3, 0x8

    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 198
    goto :goto_2

    .line 194
    :pswitch_2
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/4 v3, 0x4

    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 195
    nop

    .line 203
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public runSetVirtualDisk()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 303
    .local v0, "virtualDisk":Z
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/16 v2, 0x10

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 305
    return-void
.end method

.method public runUnmount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V

    .line 236
    return-void
.end method
