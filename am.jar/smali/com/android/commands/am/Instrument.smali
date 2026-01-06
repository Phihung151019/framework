.class public Lcom/android/commands/am/Instrument;
.super Ljava/lang/Object;
.source "Instrument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Instrument$ProtoStatusReporter;,
        Lcom/android/commands/am/Instrument$TextStatusReporter;,
        Lcom/android/commands/am/Instrument$InstrumentationWatcher;,
        Lcom/android/commands/am/Instrument$StatusReporter;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOG_DIR:Ljava/lang/String; = "instrument-logs"

.field private static final STATUS_TEST_FAILED_ASSERTION:I = -0x1

.field private static final STATUS_TEST_FAILED_OTHER:I = -0x2

.field private static final STATUS_TEST_PASSED:I = 0x0

.field private static final STATUS_TEST_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "am"


# instance fields
.field public abi:Ljava/lang/String;

.field public alwaysCheckSignature:Z

.field public args:Landroid/os/Bundle;

.field public captureLogcat:Z

.field public componentNameArg:Ljava/lang/String;

.field public disableHiddenApiChecks:Z

.field public disableIsolatedStorage:Z

.field public disableTestApiChecks:Z

.field public instrumentSdkInSandbox:Z

.field public instrumentSdkSandbox:Z

.field logPath:Ljava/lang/String;

.field private final mAm:Landroid/app/IActivityManager;

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mWm:Landroid/view/IWindowManager;

.field public noRestart:Z

.field public noWindowAnimation:Z

.field public profileFile:Ljava/lang/String;

.field protoFile:Z

.field protoStd:Z

.field public rawMode:Z

.field public userId:I

.field public wait:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAm(Lcom/android/commands/am/Instrument;)Landroid/app/IActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/am/Instrument;->mAm:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreadLogcat(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/commands/am/Instrument;->readLogcat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsorted(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lcom/android/commands/am/Instrument;->sorted(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/IActivityManager;Landroid/content/pm/IPackageManager;)V
    .locals 3
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/am/Instrument;->profileFile:Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->wait:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->rawMode:Z

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/commands/am/Instrument;->captureLogcat:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->protoStd:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->protoFile:Z

    .line 91
    iput-object v0, p0, Lcom/android/commands/am/Instrument;->logPath:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->noWindowAnimation:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->disableHiddenApiChecks:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/commands/am/Instrument;->disableTestApiChecks:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->disableIsolatedStorage:Z

    .line 96
    iput-object v0, p0, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->noRestart:Z

    .line 98
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/commands/am/Instrument;->userId:I

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/commands/am/Instrument;->args:Landroid/os/Bundle;

    .line 102
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->alwaysCheckSignature:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->instrumentSdkSandbox:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->instrumentSdkInSandbox:Z

    .line 110
    iput-object p1, p0, Lcom/android/commands/am/Instrument;->mAm:Landroid/app/IActivityManager;

    .line 111
    iput-object p2, p0, Lcom/android/commands/am/Instrument;->mPm:Landroid/content/pm/IPackageManager;

    .line 112
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    .line 113
    return-void
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 9
    .param p1, "cnArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 430
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 431
    return-object v0

    .line 430
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad component name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/commands/am/Instrument;->userId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 436
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    if-nez v0, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 437
    .local v1, "numInfos":I
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v2, "cns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 439
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstrumentationInfo;

    .line 441
    .local v5, "info":Landroid/content/pm/InstrumentationInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .local v6, "c":Landroid/content/ComponentName;
    iget-object v7, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 443
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v5    # "info":Landroid/content/pm/InstrumentationInfo;
    .end local v6    # "c":Landroid/content/ComponentName;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 447
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_7

    .line 449
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 450
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    return-object v3

    .line 452
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v3, "cnsStr":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 454
    .local v4, "numCns":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_6

    .line 455
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 460
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 462
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found multiple instrumentations: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 463
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 448
    .end local v3    # "cnsStr":Ljava/lang/StringBuilder;
    .end local v4    # "numCns":I
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No instrumentation found for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readLogcat(J)Ljava/lang/String;
    .locals 9
    .param p0, "startTimeMs"    # J

    .line 574
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 575
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 578
    .local v7, "timestamp":Ljava/lang/String;
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v8, 0x0

    new-array v2, v8, [Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const-string v2, "logcat"

    const-string v3, "-d"

    const-string v4, "-v"

    const-string v5, "threadtime,uid"

    const-string v6, "-T"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    move-object v2, v0

    .line 583
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 587
    .local v3, "str":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 588
    .local v4, "reader":Ljava/io/InputStreamReader;
    const/16 v0, 0x1000

    new-array v0, v0, [C

    move-object v5, v0

    .line 590
    .local v5, "buffer":[C
    :cond_0
    :goto_0
    array-length v0, v5

    invoke-virtual {v4, v5, v8, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    move v6, v0

    .local v6, "amt":I
    if-ltz v0, :cond_1

    .line 591
    if-lez v6, :cond_0

    .line 592
    invoke-virtual {v3, v5, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 597
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 600
    goto :goto_1

    .line 598
    :catch_0
    move-exception v0

    .line 602
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 604
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "str":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .end local v5    # "buffer":[C
    .end local v6    # "amt":I
    .end local v7    # "timestamp":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 605
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading logcat command:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static sorted(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 147
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    const/4 v2, 0x0

    .line 477
    .local v2, "oldAnims":[F
    const/4 v3, 0x1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/commands/am/Instrument;->protoFile:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/commands/am/Instrument;->protoStd:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-boolean v0, p0, Lcom/android/commands/am/Instrument;->wait:Z

    if-eqz v0, :cond_2

    .line 480
    new-instance v0, Lcom/android/commands/am/Instrument$TextStatusReporter;

    iget-boolean v4, p0, Lcom/android/commands/am/Instrument;->rawMode:Z

    invoke-direct {v0, p0, v4}, Lcom/android/commands/am/Instrument$TextStatusReporter;-><init>(Lcom/android/commands/am/Instrument;Z)V

    move-object v1, v0

    goto :goto_1

    .line 478
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;

    invoke-direct {v0, p0}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;-><init>(Lcom/android/commands/am/Instrument;)V

    move-object v1, v0

    .line 484
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 485
    .local v0, "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    const/4 v4, 0x0

    .line 486
    .local v4, "connection":Landroid/app/UiAutomationConnection;
    if-eqz v1, :cond_3

    .line 487
    new-instance v5, Lcom/android/commands/am/Instrument$InstrumentationWatcher;

    invoke-direct {v5, p0, v1}, Lcom/android/commands/am/Instrument$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Instrument;Lcom/android/commands/am/Instrument$StatusReporter;)V

    move-object v0, v5

    .line 488
    new-instance v5, Landroid/app/UiAutomationConnection;

    invoke-direct {v5}, Landroid/app/UiAutomationConnection;-><init>()V

    move-object v4, v5

    move-object v9, v0

    move-object v10, v4

    goto :goto_2

    .line 486
    :cond_3
    move-object v9, v0

    move-object v10, v4

    .line 492
    .end local v0    # "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    .end local v4    # "connection":Landroid/app/UiAutomationConnection;
    .local v9, "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    .local v10, "connection":Landroid/app/UiAutomationConnection;
    :goto_2
    iget-boolean v0, p0, Lcom/android/commands/am/Instrument;->noWindowAnimation:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    .line 493
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v0

    move-object v2, v0

    .line 494
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    const/4 v4, 0x0

    invoke-interface {v0, v13, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 495
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v0, v3, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 496
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    const/4 v5, 0x2

    invoke-interface {v0, v5, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->componentNameArg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/commands/am/Instrument;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 503
    .local v5, "cn":Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 504
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 505
    .local v0, "supportedAbis":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 506
    .local v4, "matched":Z
    array-length v6, v0

    move v7, v13

    :goto_3
    if-ge v7, v6, :cond_6

    aget-object v8, v0, v7

    .line 507
    .local v8, "supportedAbi":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 508
    const/4 v4, 0x1

    .line 509
    goto :goto_4

    .line 506
    .end local v8    # "supportedAbi":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 512
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    goto :goto_5

    .line 513
    :cond_7
    new-instance v6, Landroid/util/AndroidException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSTRUMENTATION_FAILED: Unsupported instruction set "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .end local v1    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .end local v2    # "oldAnims":[F
    .end local p0    # "this":Lcom/android/commands/am/Instrument;
    throw v6

    .line 519
    .end local v0    # "supportedAbis":[Ljava/lang/String;
    .end local v4    # "matched":Z
    .restart local v1    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .restart local v2    # "oldAnims":[F
    .restart local p0    # "this":Lcom/android/commands/am/Instrument;
    :cond_8
    :goto_5
    const/4 v0, 0x0

    .line 520
    .local v0, "flags":I
    iget-boolean v4, p0, Lcom/android/commands/am/Instrument;->disableHiddenApiChecks:Z

    if-eqz v4, :cond_9

    .line 521
    or-int/lit8 v0, v0, 0x1

    .line 523
    :cond_9
    iget-boolean v4, p0, Lcom/android/commands/am/Instrument;->disableTestApiChecks:Z

    if-eqz v4, :cond_a

    .line 524
    or-int/lit8 v0, v0, 0x4

    .line 526
    :cond_a
    iget-boolean v4, p0, Lcom/android/commands/am/Instrument;->disableIsolatedStorage:Z

    if-eqz v4, :cond_b

    .line 527
    or-int/lit8 v0, v0, 0x2

    .line 529
    :cond_b
    iget-boolean v4, p0, Lcom/android/commands/am/Instrument;->noRestart:Z

    if-eqz v4, :cond_c

    .line 530
    or-int/lit8 v0, v0, 0x8

    .line 532
    :cond_c
    iget-boolean v4, p0, Lcom/android/commands/am/Instrument;->alwaysCheckSignature:Z

    if-eqz v4, :cond_d

    .line 533
    or-int/lit8 v0, v0, 0x10

    .line 535
    :cond_d
    iget-boolean v4, p0, Lcom/android/commands/am/Instrument;->instrumentSdkSandbox:Z

    if-eqz v4, :cond_e

    .line 536
    or-int/lit8 v0, v0, 0x20

    .line 538
    :cond_e
    iget-boolean v4, p0, Lcom/android/commands/am/Instrument;->instrumentSdkInSandbox:Z

    if-eqz v4, :cond_f

    .line 539
    or-int/lit8 v0, v0, 0x40

    move v7, v0

    goto :goto_6

    .line 538
    :cond_f
    move v7, v0

    .line 541
    .end local v0    # "flags":I
    .local v7, "flags":I
    :goto_6
    iget-object v4, p0, Lcom/android/commands/am/Instrument;->mAm:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/android/commands/am/Instrument;->profileFile:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/commands/am/Instrument;->args:Landroid/os/Bundle;

    iget v11, p0, Lcom/android/commands/am/Instrument;->userId:I

    iget-object v12, p0, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    invoke-interface/range {v4 .. v12}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 547
    if-eqz v9, :cond_11

    .line 548
    invoke-virtual {v9}, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->waitForFinish()Z

    move-result v0

    if-nez v0, :cond_11

    .line 549
    const-string v0, "INSTRUMENTATION_ABORTED: System has crashed."

    invoke-interface {v1, v0, v13}, Lcom/android/commands/am/Instrument$StatusReporter;->onError(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    if-eqz v2, :cond_10

    .line 564
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 550
    :cond_10
    return-void

    .line 563
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v7    # "flags":I
    .end local v9    # "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    .end local v10    # "connection":Landroid/app/UiAutomationConnection;
    :cond_11
    if-eqz v2, :cond_12

    .line 564
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 568
    :cond_12
    invoke-static {v13}, Ljava/lang/System;->exit(I)V

    .line 569
    return-void

    .line 543
    .restart local v5    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "flags":I
    .restart local v9    # "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    .restart local v10    # "connection":Landroid/app/UiAutomationConnection;
    :cond_13
    :try_start_1
    new-instance v0, Landroid/util/AndroidException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSTRUMENTATION_FAILED: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .end local v1    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .end local v2    # "oldAnims":[F
    .end local p0    # "this":Lcom/android/commands/am/Instrument;
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v7    # "flags":I
    .end local v9    # "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    .end local v10    # "connection":Landroid/app/UiAutomationConnection;
    .restart local v1    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .restart local v2    # "oldAnims":[F
    .restart local p0    # "this":Lcom/android/commands/am/Instrument;
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 553
    :catch_0
    move-exception v0

    .line 555
    .local v0, "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_14

    .line 556
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Lcom/android/commands/am/Instrument$StatusReporter;->onError(Ljava/lang/String;Z)V

    .line 560
    :cond_14
    nop

    .end local v1    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .end local v2    # "oldAnims":[F
    .end local p0    # "this":Lcom/android/commands/am/Instrument;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .restart local v2    # "oldAnims":[F
    .restart local p0    # "this":Lcom/android/commands/am/Instrument;
    :goto_7
    if-eqz v2, :cond_15

    .line 564
    iget-object v3, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 566
    :cond_15
    throw v0
.end method
