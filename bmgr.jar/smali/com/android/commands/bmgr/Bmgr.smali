.class public Lcom/android/commands/bmgr/Bmgr;
.super Ljava/lang/Object;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/bmgr/Bmgr$BackupObserver;,
        Lcom/android/commands/bmgr/Bmgr$BackupMonitor;,
        Lcom/android/commands/bmgr/Bmgr$Monitor;,
        Lcom/android/commands/bmgr/Bmgr$InitObserver;,
        Lcom/android/commands/bmgr/Bmgr$RestoreObserver;,
        Lcom/android/commands/bmgr/Bmgr$Observer;
    }
.end annotation


# static fields
.field private static final BMGR_ERR_NO_RESTORESESSION_FOR_USER:Ljava/lang/String; = "Error: Could not get restore session for user "

.field private static final BMGR_NOT_ACTIVATED_FOR_USER:Ljava/lang/String; = "Error: Backup Manager is not activated for user "

.field private static final BMGR_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Backup Manager.  Is the system running?"

.field private static final INVALID_USER_ID_ERR_TEMPLATE:Ljava/lang/String; = "Error: Invalid user id (%d).\n"

.field private static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"

.field public static final TAG:Ljava/lang/String; = "Bmgr"

.field private static final TRANSPORT_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the backup transport.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private final mBmgr:Landroid/app/backup/IBackupManager;

.field private mNextArg:I

.field private mRestore:Landroid/app/backup/IRestoreSession;


# direct methods
.method static bridge synthetic -$$Nest$smconvertBackupStatusToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/commands/bmgr/Bmgr;->convertBackupStatusToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smeventCategoryToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/commands/bmgr/Bmgr;->eventCategoryToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smeventIdToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/commands/bmgr/Bmgr;->eventIdToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/app/backup/IBackupManager;)V
    .locals 0
    .param p1, "bmgr"    # Landroid/app/backup/IBackupManager;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 86
    return-void
.end method

.method private activatedToString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "activated"    # Z

    .line 276
    if-eqz p1, :cond_0

    const-string v0, "activated"

    goto :goto_0

    :cond_0
    const-string v0, "deactivated"

    :goto_0
    return-object v0
.end method

.method private backupNowAllPackages(IZI)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "nonIncrementalBackup"    # Z
    .param p3, "monitorState"    # I

    .line 465
    nop

    .line 466
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 467
    .local v0, "mPm":Landroid/content/pm/IPackageManager;
    const-string v1, "Error: Could not access the Package Manager.  Is the system running?"

    if-nez v0, :cond_0

    .line 468
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    return-void

    .line 471
    :cond_0
    const/4 v2, 0x0

    .line 473
    .local v2, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-interface {v0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 477
    goto :goto_0

    .line 474
    :catch_0
    move-exception v3

    .line 475
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v2, :cond_1

    .line 479
    nop

    .line 480
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 481
    .local v1, "packages":[Ljava/lang/String;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 483
    .local v3, "filteredPackages":[Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v4, p1, v1}, Landroid/app/backup/IBackupManager;->filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 486
    goto :goto_1

    .line 484
    :catch_1
    move-exception v4

    .line 485
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v4}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 487
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/commands/bmgr/Bmgr;->backupNowPackages(ILjava/util/List;ZI)V

    .line 490
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v3    # "filteredPackages":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private backupNowPackages(ILjava/util/List;ZI)V
    .locals 7
    .param p1, "userId"    # I
    .param p3, "nonIncrementalBackup"    # Z
    .param p4, "monitorState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 495
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 496
    .local v0, "flags":I
    if-eqz p3, :cond_0

    .line 497
    or-int/lit8 v0, v0, 0x1

    move v6, v0

    goto :goto_0

    .line 496
    :cond_0
    move v6, v0

    .line 500
    .end local v0    # "flags":I
    .local v6, "flags":I
    :goto_0
    :try_start_0
    new-instance v4, Lcom/android/commands/bmgr/Bmgr$BackupObserver;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;-><init>(Lcom/android/commands/bmgr/Bmgr-IA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 502
    .local v4, "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    if-eqz p4, :cond_2

    .line 503
    :try_start_1
    new-instance v1, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;

    const/4 v2, 0x2

    if-ne p4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v1, v2, v0}, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;-><init>(ZLcom/android/commands/bmgr/Bmgr-IA;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v1

    goto :goto_2

    .line 517
    .end local v4    # "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    :catch_0
    move-exception v0

    move v2, p1

    goto :goto_4

    .line 504
    .restart local v4    # "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    :cond_2
    move-object v5, v0

    :goto_2
    nop

    .line 505
    .local v5, "monitor":Lcom/android/commands/bmgr/Bmgr$BackupMonitor;
    :try_start_2
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 507
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 505
    move v2, p1

    .end local p1    # "userId":I
    .local v2, "userId":I
    :try_start_3
    invoke-interface/range {v1 .. v6}, Landroid/app/backup/IBackupManager;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p1

    .line 511
    .local p1, "err":I
    if-nez p1, :cond_3

    .line 513
    invoke-virtual {v4}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->waitForCompletion()V

    goto :goto_3

    .line 515
    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unable to run backup"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 519
    .end local v4    # "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    .end local v5    # "monitor":Lcom/android/commands/bmgr/Bmgr$BackupMonitor;
    .end local p1    # "err":I
    :goto_3
    goto :goto_5

    .line 517
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v2    # "userId":I
    .local p1, "userId":I
    :catch_2
    move-exception v0

    move v2, p1

    .line 518
    .end local p1    # "userId":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "userId":I
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 520
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return-void
.end method

.method private static convertBackupStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .line 440
    sparse-switch p0, :sswitch_data_0

    .line 459
    const-string v0, "Unknown error"

    return-object v0

    .line 442
    :sswitch_0
    const-string v0, "Success"

    return-object v0

    .line 448
    :sswitch_1
    const-string v0, "Transport error"

    return-object v0

    .line 450
    :sswitch_2
    const-string v0, "Transport rejected package because it wasn\'t able to process it at the time"

    return-object v0

    .line 453
    :sswitch_3
    const-string v0, "Agent error"

    return-object v0

    .line 455
    :sswitch_4
    const-string v0, "Size quota exceeded"

    return-object v0

    .line 444
    :sswitch_5
    const-string v0, "Backup is not allowed"

    return-object v0

    .line 446
    :sswitch_6
    const-string v0, "Package not found"

    return-object v0

    .line 457
    :sswitch_7
    const-string v0, "Backup cancelled"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7d3 -> :sswitch_7
        -0x7d2 -> :sswitch_6
        -0x7d1 -> :sswitch_5
        -0x3ed -> :sswitch_4
        -0x3eb -> :sswitch_3
        -0x3ea -> :sswitch_2
        -0x3e8 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private doActivateService(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 936
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 938
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 939
    return-void

    .line 943
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 944
    .local v1, "activate":Z
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1}, Landroid/app/backup/IBackupManager;->setBackupServiceActive(IZ)V

    .line 945
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup service now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 947
    if-eqz v1, :cond_1

    const-string v4, "activated"

    goto :goto_0

    :cond_1
    const-string v4, "deactivated"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 945
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .end local v1    # "activate":Z
    goto :goto_1

    .line 950
    :catch_0
    move-exception v1

    .line 951
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 953
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private doActivated(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 281
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Manager currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 282
    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->activatedToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private doAutoRestore(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 256
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 259
    return-void

    .line 263
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 264
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V

    .line 265
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto restore is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 267
    if-eqz v1, :cond_1

    const-string v4, "enabled"

    goto :goto_0

    :cond_1
    const-string v4, "disabled"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "enable":Z
    goto :goto_1

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 273
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private doBackup(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 331
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 333
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 334
    return-void

    .line 338
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, v0}, Landroid/app/backup/IBackupManager;->dataChangedForUser(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 342
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private doBackupNow(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "backupAll":Z
    const/4 v1, 0x0

    .line 526
    .local v1, "nonIncrementalBackup":Z
    const/4 v2, 0x0

    .line 527
    .local v2, "monitor":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v3, "allPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 529
    const-string v4, "--all"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 530
    const/4 v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    const-string v4, "--non-incremental"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 532
    const/4 v1, 0x1

    goto :goto_0

    .line 533
    :cond_2
    const-string v4, "--incremental"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 534
    const/4 v1, 0x0

    goto :goto_0

    .line 535
    :cond_3
    const-string v4, "--monitor"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 536
    const/4 v2, 0x1

    goto :goto_0

    .line 537
    :cond_4
    const-string v4, "--monitor-verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 538
    const/4 v2, 0x2

    goto :goto_0

    .line 540
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 541
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
    :cond_6
    const-string v4, "non-"

    const-string v6, ""

    const-string v7, "Running "

    if-eqz v0, :cond_9

    .line 546
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_8

    .line 547
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    move-object v4, v6

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "incremental backup for all packages."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, p1, v1, v2}, Lcom/android/commands/bmgr/Bmgr;->backupNowAllPackages(IZI)V

    goto :goto_3

    .line 551
    :cond_8
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Provide only \'--all\' flag or list of packages."

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 553
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 554
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move-object v4, v6

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "incremental backup for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 555
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " requested packages."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/android/commands/bmgr/Bmgr;->backupNowPackages(ILjava/util/List;ZI)V

    goto :goto_3

    .line 558
    :cond_b
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Provide \'--all\' flag or list of packages."

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    :goto_3
    return-void
.end method

.method private doCancel(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 563
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "backups"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->cancelBackupsForUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 570
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 573
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unknown command."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private doEnable(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 304
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 307
    return-void

    .line 311
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 312
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1}, Landroid/app/backup/IBackupManager;->setBackupEnabledForUser(IZ)V

    .line 313
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup Manager now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v1    # "enable":Z
    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 320
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 314
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 316
    return-void
.end method

.method private doEnabled(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->isBackupEnabledForUser(I)Z

    move-result v0

    .line 296
    .local v0, "isEnabled":Z
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup Manager currently "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "isEnabled":Z
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private doFullTransportBackup(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 345
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Performing full transport backup"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 349
    .local v0, "allPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 355
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 354
    invoke-interface {v1, p1, v3}, Landroid/app/backup/IBackupManager;->fullTransportBackupForUser(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_1

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 360
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method private doInit(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 672
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 674
    .local v0, "transports":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "transport":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 678
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 679
    return-void

    .line 682
    :cond_1
    new-instance v1, Lcom/android/commands/bmgr/Bmgr$InitObserver;

    invoke-direct {v1, p0}, Lcom/android/commands/bmgr/Bmgr$InitObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 684
    .local v1, "observer":Lcom/android/commands/bmgr/Bmgr$InitObserver;
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initializing transports: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 686
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 685
    invoke-interface {v3, p1, v4, v1}, Landroid/app/backup/IBackupManager;->initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 687
    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4}, Lcom/android/commands/bmgr/Bmgr$InitObserver;->waitForCompletion(J)V

    .line 688
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialization result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/commands/bmgr/Bmgr$InitObserver;->result:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    goto :goto_1

    .line 689
    :catch_0
    move-exception v3

    .line 690
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 692
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private doList(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 695
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "transports"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    invoke-direct {p0, p1}, Lcom/android/commands/bmgr/Bmgr;->doListTransports(I)V

    .line 698
    return-void

    .line 703
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 704
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v1, :cond_1

    .line 705
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Could not get restore session for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 706
    return-void

    .line 709
    :cond_1
    const-string v1, "sets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListRestoreSets()V

    .line 713
    :cond_2
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    goto :goto_0

    .line 714
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 717
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private doListRestoreSets()V
    .locals 4

    .line 748
    :try_start_0
    new-instance v0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v0, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 750
    .local v0, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v1

    .line 751
    .local v1, "err":I
    if-eqz v1, :cond_0

    .line 752
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Unable to request restore sets"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {v0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 755
    iget-object v2, v0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v0    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    .end local v1    # "err":I
    :goto_0
    goto :goto_1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 759
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the backup transport.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 761
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private doListTransports(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 720
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "arg":Ljava/lang/String;
    :try_start_0
    const-string v1, "-c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 724
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 725
    .local v4, "transport":Landroid/content/ComponentName;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 724
    .end local v4    # "transport":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    :cond_0
    return-void

    .line 730
    :cond_1
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "current":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, p1}, Landroid/app/backup/IBackupManager;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, "transports":[Ljava/lang/String;
    if-eqz v3, :cond_5

    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_3

    .line 737
    :cond_2
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 738
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "  * "

    goto :goto_2

    :cond_3
    const-string v6, "    "

    .line 739
    .local v6, "pad":Ljava/lang/String;
    :goto_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 737
    .end local v5    # "t":Ljava/lang/String;
    .end local v6    # "pad":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 743
    .end local v1    # "current":Ljava/lang/String;
    .end local v3    # "transports":[Ljava/lang/String;
    :cond_4
    goto :goto_4

    .line 733
    .restart local v1    # "current":Ljava/lang/String;
    .restart local v3    # "transports":[Ljava/lang/String;
    :cond_5
    :goto_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "No transports available."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    return-void

    .line 741
    .end local v1    # "current":Ljava/lang/String;
    .end local v3    # "transports":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 742
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 744
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method private doPrintAllowlist()V
    .locals 5

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "whitelist":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 926
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 927
    .local v3, "transport":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v3    # "transport":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    .end local v0    # "whitelist":[Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 933
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private doRestore(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 822
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 824
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 825
    return-void

    .line 828
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_6

    const-string v0, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v4, p0

    move v5, p1

    goto :goto_2

    .line 833
    :cond_1
    const/4 v0, 0x0

    .line 835
    .local v0, "monitor":I
    const/16 v2, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    move-wide v6, v2

    .line 836
    .local v6, "token":J
    const/4 v2, 0x0

    move v9, v0

    move-object v8, v2

    .line 837
    .end local v0    # "monitor":I
    .local v8, "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v9, "monitor":I
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v0

    if-eqz v0, :cond_5

    .line 838
    :try_start_1
    const-string v0, "--monitor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 839
    const/4 v9, 0x1

    goto :goto_0

    .line 840
    :cond_2
    const-string v0, "--monitor-verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    const/4 v9, 0x2

    goto :goto_0

    .line 843
    :cond_3
    if-nez v8, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v8, v0

    .line 844
    :cond_4
    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 849
    .end local v6    # "token":J
    .end local v8    # "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "monitor":I
    :catch_0
    move-exception v0

    move-object v4, p0

    move v5, p1

    goto :goto_1

    .line 848
    .restart local v6    # "token":J
    .restart local v8    # "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "monitor":I
    :cond_5
    move-object v4, p0

    move v5, p1

    .end local p1    # "userId":I
    .local v5, "userId":I
    :try_start_2
    invoke-direct/range {v4 .. v9}, Lcom/android/commands/bmgr/Bmgr;->doRestoreAll(IJLjava/util/HashSet;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 852
    .end local v6    # "token":J
    .end local v8    # "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "monitor":I
    goto :goto_3

    .line 849
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v5    # "userId":I
    .restart local p1    # "userId":I
    :catch_2
    move-exception v0

    move-object v4, p0

    move v5, p1

    .line 850
    .end local p1    # "userId":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "userId":I
    :goto_1
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 851
    return-void

    .line 828
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "userId":I
    .restart local p1    # "userId":I
    :cond_6
    move-object v4, p0

    move v5, p1

    .line 830
    .end local p1    # "userId":I
    .restart local v5    # "userId":I
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->doRestorePackage(Ljava/lang/String;)V

    .line 854
    :goto_3
    return-void
.end method

.method private doRestoreAll(IJLjava/util/HashSet;I)V
    .locals 16
    .param p1, "userId"    # I
    .param p2, "token"    # J
    .param p5, "monitorState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 863
    .local p4, "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    new-instance v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v6, v1}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 866
    .local v6, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    const/4 v0, 0x0

    .line 867
    .local v0, "didRestore":Z
    :try_start_0
    iget-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v7, 0x0

    invoke-interface {v3, v2, v7, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    iput-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 868
    iget-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v3, :cond_0

    .line 869
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Could not get restore session for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 870
    return-void

    .line 872
    :cond_0
    const/4 v3, 0x0

    .line 874
    .local v3, "sets":[Landroid/app/backup/RestoreSet;
    if-eqz v10, :cond_2

    .line 875
    new-instance v8, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;

    const/4 v13, 0x2

    if-ne v10, v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    invoke-direct {v8, v13, v7}, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;-><init>(ZLcom/android/commands/bmgr/Bmgr-IA;)V

    goto :goto_1

    .line 876
    :cond_2
    move-object v8, v7

    :goto_1
    nop

    .line 877
    .local v8, "monitor":Lcom/android/commands/bmgr/Bmgr$BackupMonitor;
    iget-object v7, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v7, v6, v8}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v7

    move v13, v7

    .line 878
    .local v13, "err":I
    if-nez v13, :cond_8

    .line 879
    invoke-virtual {v6}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 880
    iget-object v7, v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    move-object v14, v7

    .line 881
    .end local v3    # "sets":[Landroid/app/backup/RestoreSet;
    .local v14, "sets":[Landroid/app/backup/RestoreSet;
    if-eqz v14, :cond_7

    .line 882
    array-length v3, v14

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_7

    aget-object v15, v14, v7

    .line 883
    .local v15, "s":Landroid/app/backup/RestoreSet;
    iget-wide v11, v15, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v11, v11, v4

    if-nez v11, :cond_6

    .line 884
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling restore: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v15, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 885
    if-nez v9, :cond_4

    .line 886
    iget-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v4, v5, v6, v8}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    move v0, v11

    move-object v3, v14

    goto :goto_5

    .line 888
    :cond_4
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 889
    .local v7, "names":[Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 890
    iget-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface/range {v3 .. v8}, Landroid/app/backup/IRestoreSession;->restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3

    if-nez v3, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    move v0, v11

    .line 893
    .end local v7    # "names":[Ljava/lang/String;
    move-object v3, v14

    goto :goto_5

    .line 882
    .end local v15    # "s":Landroid/app/backup/RestoreSet;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v4, p2

    goto :goto_2

    .line 898
    :cond_7
    move-object v3, v14

    .end local v14    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v3    # "sets":[Landroid/app/backup/RestoreSet;
    :cond_8
    :goto_5
    if-nez v0, :cond_b

    .line 899
    if-eqz v3, :cond_a

    array-length v4, v3

    if-nez v4, :cond_9

    goto :goto_6

    .line 902
    :cond_9
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "No matching restore set token.  Available sets:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 903
    invoke-direct {v1, v3}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V

    goto :goto_7

    .line 900
    :cond_a
    :goto_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "No available restore sets; no restore performed"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 909
    :cond_b
    :goto_7
    if-eqz v0, :cond_c

    .line 910
    invoke-virtual {v6}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 914
    :cond_c
    iget-object v4, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v4}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    .line 916
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "done"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    .end local v0    # "didRestore":Z
    .end local v3    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v8    # "monitor":Lcom/android/commands/bmgr/Bmgr$BackupMonitor;
    .end local v13    # "err":I
    goto :goto_8

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {v1, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 920
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    return-void
.end method

.method private doRestorePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 857
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The syntax \'restore <package>\' is no longer supported, please use "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 858
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\'restore <token> <package>\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method private doTransport(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 578
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "which":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 580
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 581
    return-void

    .line 584
    :cond_0
    const-string v1, "-c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    invoke-direct {p0, p1}, Lcom/android/commands/bmgr/Bmgr;->doTransportByComponent(I)V

    .line 586
    return-void

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "old":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 591
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown transport \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' specified; no changes made."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (formerly "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v0    # "which":Ljava/lang/String;
    .end local v1    # "old":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 600
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private doTransportByComponent(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 603
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "which":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 605
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 606
    return-void

    .line 609
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 612
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 614
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Lcom/android/commands/bmgr/Bmgr$1;

    invoke-direct {v4, p0, v1}, Lcom/android/commands/bmgr/Bmgr$1;-><init>(Lcom/android/commands/bmgr/Bmgr;Ljava/util/concurrent/CountDownLatch;)V

    .line 612
    invoke-interface {v2, p1, v3, v4}, Landroid/app/backup/IBackupManager;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 631
    nop

    .line 634
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 637
    goto :goto_0

    .line 635
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Operation interrupted."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 638
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 628
    :catch_1
    move-exception v2

    .line 629
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 630
    return-void
.end method

.method private doWipe(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 641
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "transport":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 643
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 644
    return-void

    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 649
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 650
    return-void

    .line 654
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/app/backup/IBackupManager;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 655
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wiped backup data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    goto :goto_0

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 659
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private enableToString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "enabled"    # Z

    .line 290
    if-eqz p1, :cond_0

    const-string v0, "enabled"

    goto :goto_0

    :cond_0
    const-string v0, "disabled"

    :goto_0
    return-object v0
.end method

.method private static eventCategoryToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventCategory"    # I

    .line 1166
    packed-switch p0, :pswitch_data_0

    .line 1174
    const-string v0, "UNKNOWN_CATEGORY"

    return-object v0

    .line 1172
    :pswitch_0
    const-string v0, "BACKUP_MANAGER_POLICY"

    return-object v0

    .line 1170
    :pswitch_1
    const-string v0, "AGENT"

    return-object v0

    .line 1168
    :pswitch_2
    const-string v0, "TRANSPORT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static eventIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventId"    # I

    .line 1179
    packed-switch p0, :pswitch_data_0

    .line 1319
    :pswitch_0
    const-string v0, "UNKNOWN_ID"

    return-object v0

    .line 1317
    :pswitch_1
    const-string v0, "LOG_EVENT_ID_FULL_BACKUP_AGENT_PIPE_BROKEN"

    return-object v0

    .line 1315
    :pswitch_2
    const-string v0, "FAILED_TO_READ_DATA_FROM_TRANSPORT"

    return-object v0

    .line 1313
    :pswitch_3
    const-string v0, "AGENT_FAILURE_DURING_RESTORE"

    return-object v0

    .line 1311
    :pswitch_4
    const-string v0, "FAILED_TO_SEND_DATA_TO_AGENT_DURING_RESTORE"

    return-object v0

    .line 1309
    :pswitch_5
    const-string v0, "AGENT_CRASHED_BEFORE_RESTORE_DATA_IS_SEN"

    return-object v0

    .line 1307
    :pswitch_6
    const-string v0, "UNABLE_TO_CREATE_AGENT_FOR_RESTORE"

    return-object v0

    .line 1305
    :pswitch_7
    const-string v0, "RESTORE_DATA_DOES_NOT_BELONG_TO_PACKAGE"

    return-object v0

    .line 1303
    :pswitch_8
    const-string v0, "PACKAGE_ACCEPTED_FOR_RESTORE"

    return-object v0

    .line 1301
    :pswitch_9
    const-string v0, "SKIP_RESTORE_AT_INSTALL"

    return-object v0

    .line 1299
    :pswitch_a
    const-string v0, "RESTORE_AT_INSTALL_INVOKED"

    return-object v0

    .line 1297
    :pswitch_b
    const-string v0, "AGENT_FAILURE"

    return-object v0

    .line 1293
    :pswitch_c
    const-string v0, "RESTORE_COMPLETE"

    return-object v0

    .line 1295
    :pswitch_d
    const-string v0, "START_PACKAGE_RESTORE"

    return-object v0

    .line 1291
    :pswitch_e
    const-string v0, "TRANSPORT_ERROR_FULL_RESTORE"

    return-object v0

    .line 1289
    :pswitch_f
    const-string v0, "FULL_AGENT_ERROR"

    return-object v0

    .line 1287
    :pswitch_10
    const-string v0, "NO_FEEDER_THREAD"

    return-object v0

    .line 1285
    :pswitch_11
    const-string v0, "TRANSPORT_ERROR_KV_RESTORE"

    return-object v0

    .line 1283
    :pswitch_12
    const-string v0, "PACKAGE_RESTORE_FINISHED"

    return-object v0

    .line 1281
    :pswitch_13
    const-string v0, "KV_AGENT_ERROR"

    return-object v0

    .line 1279
    :pswitch_14
    const-string v0, "NO_NEXT_RESTORE_TARGET"

    return-object v0

    .line 1277
    :pswitch_15
    const-string v0, "FULL_RESTORE"

    return-object v0

    .line 1275
    :pswitch_16
    const-string v0, "KV_RESTORE"

    return-object v0

    .line 1273
    :pswitch_17
    const-string v0, "UNKNOWN_RESTORE_TYPE"

    return-object v0

    .line 1271
    :pswitch_18
    const-string v0, "CANNOT_GET_NEXT_PKG_NAME"

    return-object v0

    .line 1269
    :pswitch_19
    const-string v0, "TRANSPORT_ERROR_DURING_START_RESTORE"

    return-object v0

    .line 1267
    :pswitch_1a
    const-string v0, "START_RESTORE_AT_INSTALL"

    return-object v0

    .line 1265
    :pswitch_1b
    const-string v0, "START_SYSTEM_RESTORE"

    return-object v0

    .line 1263
    :pswitch_1c
    const-string v0, "AGENT_LOGGING_RESULTS"

    return-object v0

    .line 1261
    :pswitch_1d
    const-string v0, "TRANSPORT_IS_NULL"

    return-object v0

    .line 1259
    :pswitch_1e
    const-string v0, "NO_PACKAGES"

    return-object v0

    .line 1257
    :pswitch_1f
    const-string v0, "WIDGET_UNKNOWN_VERSION"

    return-object v0

    .line 1255
    :pswitch_20
    const-string v0, "WIDGET_METADATA_MISMATCH"

    return-object v0

    .line 1253
    :pswitch_21
    const-string v0, "CORRUPT_MANIFEST"

    return-object v0

    .line 1251
    :pswitch_22
    const-string v0, "FULL_RESTORE_TIMEOUT"

    return-object v0

    .line 1249
    :pswitch_23
    const-string v0, "UNKNOWN_VERSION"

    return-object v0

    .line 1247
    :pswitch_24
    const-string v0, "EXPECTED_DIFFERENT_PACKAGE"

    return-object v0

    .line 1245
    :pswitch_25
    const-string v0, "MISSING_SIGNATURE"

    return-object v0

    .line 1243
    :pswitch_26
    const-string v0, "CANNOT_RESTORE_WITHOUT_APK"

    return-object v0

    .line 1241
    :pswitch_27
    const-string v0, "APK_NOT_INSTALLED"

    return-object v0

    .line 1239
    :pswitch_28
    const-string v0, "FULL_RESTORE_ALLOW_BACKUP_FALSE"

    return-object v0

    .line 1237
    :pswitch_29
    const-string v0, "SYSTEM_APP_NO_AGENT"

    return-object v0

    .line 1235
    :pswitch_2a
    const-string v0, "FULL_RESTORE_SIGNATURE_MISMATCH"

    return-object v0

    .line 1233
    :pswitch_2b
    const-string v0, "VERSION_OF_BACKUP_OLDER"

    return-object v0

    .line 1231
    :pswitch_2c
    const-string v0, "VERSIONS_MATCH"

    return-object v0

    .line 1229
    :pswitch_2d
    const-string v0, "RESTORE_ANY_VERSION"

    return-object v0

    .line 1227
    :pswitch_2e
    const-string v0, "KEY_VALUE_RESTORE_TIMEOUT"

    return-object v0

    .line 1225
    :pswitch_2f
    const-string v0, "CANT_FIND_AGENT"

    return-object v0

    .line 1223
    :pswitch_30
    const-string v0, "SIGNATURE_MISMATCH"

    return-object v0

    .line 1221
    :pswitch_31
    const-string v0, "APP_HAS_NO_AGENT"

    return-object v0

    .line 1219
    :pswitch_32
    const-string v0, "RESTORE_VERSION_HIGHER"

    return-object v0

    .line 1217
    :pswitch_33
    const-string v0, "PACKAGE_NOT_PRESENT"

    return-object v0

    .line 1215
    :pswitch_34
    const-string v0, "LOST_TRANSPORT"

    return-object v0

    .line 1213
    :pswitch_35
    const-string v0, "PM_AGENT_HAS_NO_METADATA"

    return-object v0

    .line 1211
    :pswitch_36
    const-string v0, "NO_PM_METADATA_RECEIVED"

    return-object v0

    .line 1209
    :pswitch_37
    const-string v0, "NO_RESTORE_METADATA_AVAILABLE"

    return-object v0

    .line 1207
    :pswitch_38
    const-string v0, "KEY_VALUE_BACKUP_CANCEL"

    return-object v0

    .line 1205
    :pswitch_39
    const-string v0, "EXCEPTION_FULL_BACKUP"

    return-object v0

    .line 1203
    :pswitch_3a
    const-string v0, "QUOTA_HIT_PREFLIGHT"

    return-object v0

    .line 1201
    :pswitch_3b
    const-string v0, "ERROR_PREFLIGHT"

    return-object v0

    .line 1199
    :pswitch_3c
    const-string v0, "PACKAGE_TRANSPORT_NOT_PRESENT"

    return-object v0

    .line 1197
    :pswitch_3d
    const-string v0, "DEVICE_NOT_PROVISIONED"

    return-object v0

    .line 1195
    :pswitch_3e
    const-string v0, "BACKUP_DISABLED"

    return-object v0

    .line 1193
    :pswitch_3f
    const-string v0, "PACKAGE_NOT_FOUND"

    return-object v0

    .line 1191
    :pswitch_40
    const-string v0, "PACKAGE_STOPPED"

    return-object v0

    .line 1189
    :pswitch_41
    const-string v0, "PACKAGE_KEY_VALUE_PARTICIPANT"

    return-object v0

    .line 1187
    :pswitch_42
    const-string v0, "PACKAGE_INELIGIBLE"

    return-object v0

    .line 1185
    :pswitch_43
    const-string v0, "NO_DATA_TO_SEND"

    return-object v0

    .line 1183
    :pswitch_44
    const-string v0, "ILLEGAL_KEY"

    return-object v0

    .line 1181
    :pswitch_45
    const-string v0, "FULL_BACKUP_CANCEL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_45
        :pswitch_44
        :pswitch_0
        :pswitch_43
        :pswitch_0
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_3a
        :pswitch_39
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_0
        :pswitch_0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 237
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private isBackupActive(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 243
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Backup Manager is not activated for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    return v0

    .line 250
    :cond_0
    nop

    .line 252
    const/4 v0, 0x1

    return v0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 249
    return v0
.end method

.method static synthetic lambda$backupNowAllPackages$0(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageInfo;

    .line 480
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$backupNowAllPackages$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 480
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 94
    :try_start_0
    new-instance v0, Lcom/android/commands/bmgr/Bmgr;

    invoke-direct {v0}, Lcom/android/commands/bmgr/Bmgr;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/bmgr/Bmgr;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 2

    .line 956
    iget v0, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 957
    const/4 v0, 0x0

    return-object v0

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    aget-object v0, v0, v1

    .line 960
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 961
    return-object v0
.end method

.method private parseUserId()I
    .locals 3

    .line 965
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 968
    const/4 v1, 0x0

    return v1

    .line 970
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 971
    .local v1, "userId":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 972
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 974
    :cond_1
    return v1
.end method

.method private printRestoreSets([Landroid/app/backup/RestoreSet;)V
    .locals 7
    .param p1, "sets"    # [Landroid/app/backup/RestoreSet;

    .line 764
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 768
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 769
    .local v2, "s":Landroid/app/backup/RestoreSet;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Landroid/app/backup/RestoreSet;->token:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 768
    .end local v2    # "s":Landroid/app/backup/RestoreSet;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :cond_1
    return-void

    .line 765
    :cond_2
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No restore sets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method private setSchedulingEnabled(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 217
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 220
    return-void

    .line 224
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 225
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1}, Landroid/app/backup/IBackupManager;->setFrameworkSchedulingEnabledForUser(IZ)V

    .line 226
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup scheduling is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 228
    if-eqz v1, :cond_1

    const-string v4, "enabled"

    goto :goto_0

    :cond_1
    const-string v4, "disabled"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "enable":Z
    goto :goto_1

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 234
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private static showUsage()V
    .locals 6

    .line 978
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: bmgr [--user <userId>] [backup|restore|list|transport|run]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 979
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr backup PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enable BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list transports [-c]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 983
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list sets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr transport WHICH|-c WHICH_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN [--monitor|--monitor-verbose]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 986
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN PACKAGE... [--monitor|--monitor-verbose]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 987
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr run"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 988
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr wipe TRANSPORT PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr fullbackup PACKAGE..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 990
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr backupnow [--monitor|--monitor-verbose] --all|PACKAGE..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 991
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr cancel backups"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 992
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr init TRANSPORT..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 993
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr activate BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 994
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr activated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr autorestore BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 996
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr scheduling BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'--user\' option specifies the user on which the operation is run."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "It must be the first argument before the operation."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The default value is 0 which is the system user."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1001
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1002
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'backup\' command schedules a backup pass for the named package."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Note that the backup pass will effectively be a no-op if the package"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1004
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "does not actually have changed data to store."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1005
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1006
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'enable\' command enables or disables the entire backup mechanism."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "If the argument is \'true\' it will be enabled, otherwise it will be"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1008
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "disabled.  When disabled, neither backup or restore operations will"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1009
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "be performed."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1010
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1011
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'enabled\' command reports the current enabled/disabled state of"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1012
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "the backup mechanism."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1014
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'list transports\' command reports the names of the backup transports"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1015
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "BackupManager is currently bound to. These names can be passed as arguments"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "to the \'transport\' and \'wipe\' commands.  The currently active transport"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1017
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "is indicated with a \'*\' character. If -c flag is used, all available"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1018
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "transport components on the device are listed. These can be used with"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1019
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "the component variant of \'transport\' command."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1020
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'list sets\' command reports the token and name of each restore set"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "available to the device via the currently active transport."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1023
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1024
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'transport\' command designates the named transport as the currently"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1025
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "active one.  This setting is persistent across reboots. If -c flag is"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1026
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "specified, the following string is treated as a component name."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1027
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1028
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'restore\' command when given just a restore token initiates a full-system"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1029
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "restore operation from the currently active transport.  It will deliver"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1030
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "the restore set designated by the TOKEN argument to each application"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1031
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "that had contributed data to that restore set."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1032
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "    --monitor flag prints monitor events (important events and errors"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1033
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "              encountered during restore)."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1034
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "    --monitor-verbose flag prints monitor events with all keys."

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1035
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1036
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "The \'restore\' command when given a token and one or more package names"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1037
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "initiates a restore operation of just those given packages from the restore"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "set designated by the TOKEN argument.  It is effectively the same as the"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1039
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "\'restore\' operation supplying only a token, but applies a filter to the"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1040
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "set of applications to be restored."

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1041
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1042
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1043
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1044
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1045
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "The \'run\' command causes any scheduled backup operation to be initiated"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1046
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "immediately, without the usual waiting period for batching together"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1047
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "data changes."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1048
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1049
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "The \'wipe\' command causes all backed-up data for the given package to be"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1050
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "erased from the given transport\'s storage.  The next backup operation"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1051
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "that the given application performs will rewrite its entire data set."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1052
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Transport names to use here are those reported by \'list transports\'."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1053
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1054
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "The \'fullbackup\' command induces a full-data stream backup for one or more"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1055
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "packages.  The data is sent via the currently active transport."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1056
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1057
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "The \'backupnow\' command runs an immediate backup for one or more packages."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1058
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "    --all flag runs backup for all eligible packages."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1059
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1060
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "              encountered during backup)."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1061
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1062
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "For each package it will run key/value or full data backup "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1063
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "depending on the package\'s manifest declarations."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1064
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The data is sent via the currently active transport."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1065
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1066
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'cancel backups\' command cancels all running backups."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1067
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1068
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'init\' command initializes the given transports, wiping all data"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1069
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "from their backing data stores."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1070
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1071
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'activate\' command activates or deactivates the backup service."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1072
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "If the argument is \'true\' it will be activated, otherwise it will be"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1073
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "deactivated. When deactivated, the service will not be running and no"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1074
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "operations can be performed until activation."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1075
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1076
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'activated\' command reports the current activated/deactivated"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1077
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "state of the backup mechanism."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1078
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1079
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'autorestore\' command enables or disables automatic restore when"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1080
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "a new package is installed."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1081
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1082
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'scheduling\' command enables or disables backup scheduling in the"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1083
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "framework."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1084
    return-void
.end method


# virtual methods
.method doRun(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->backupNowForUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public run([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .line 102
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 103
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 104
    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 109
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->parseUserId()I

    move-result v0

    .line 110
    .local v0, "userId":I
    if-gez v0, :cond_1

    .line 111
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error: Invalid user id (%d).\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 112
    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "op":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bmgr"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_2

    .line 119
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    return-void

    .line 123
    :cond_2
    const-string v2, "activate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doActivateService(I)V

    .line 125
    return-void

    .line 128
    :cond_3
    const-string v2, "activated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doActivated(I)V

    .line 130
    return-void

    .line 133
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->isBackupActive(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 134
    return-void

    .line 137
    :cond_5
    const-string v2, "autorestore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 138
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doAutoRestore(I)V

    .line 139
    return-void

    .line 142
    :cond_6
    const-string v2, "enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 143
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doEnabled(I)V

    .line 144
    return-void

    .line 147
    :cond_7
    const-string v2, "enable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doEnable(I)V

    .line 149
    return-void

    .line 152
    :cond_8
    const-string v2, "run"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRun(I)V

    .line 154
    return-void

    .line 157
    :cond_9
    const-string v2, "backup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doBackup(I)V

    .line 159
    return-void

    .line 162
    :cond_a
    const-string v2, "init"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 163
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doInit(I)V

    .line 164
    return-void

    .line 167
    :cond_b
    const-string v2, "list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 168
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doList(I)V

    .line 169
    return-void

    .line 172
    :cond_c
    const-string v2, "restore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 173
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRestore(I)V

    .line 174
    return-void

    .line 177
    :cond_d
    const-string v2, "transport"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 178
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doTransport(I)V

    .line 179
    return-void

    .line 182
    :cond_e
    const-string v2, "wipe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 183
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doWipe(I)V

    .line 184
    return-void

    .line 187
    :cond_f
    const-string v2, "fullbackup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 188
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doFullTransportBackup(I)V

    .line 189
    return-void

    .line 192
    :cond_10
    const-string v2, "backupnow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 193
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doBackupNow(I)V

    .line 194
    return-void

    .line 197
    :cond_11
    const-string v2, "cancel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 198
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doCancel(I)V

    .line 199
    return-void

    .line 202
    :cond_12
    const-string v2, "whitelist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 203
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doPrintAllowlist()V

    .line 204
    return-void

    .line 207
    :cond_13
    const-string v2, "scheduling"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 208
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->setSchedulingEnabled(I)V

    .line 209
    return-void

    .line 212
    :cond_14
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Unknown command"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 214
    return-void
.end method
