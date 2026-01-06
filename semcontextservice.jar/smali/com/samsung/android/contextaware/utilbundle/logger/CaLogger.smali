.class public Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
.super Ljava/lang/Object;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "CAELogger"

.field public static final TAG:Ljava/lang/String; = "CAE"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

.field private static isCaller:Z

.field private static isConsoleLogging:Z

.field private static isFileLogging:Z

.field private static isGrayBoxTesting:Z

.field private static mLevel:I

.field private static mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetisCaller()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetisConsoleLogging()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetisFileLogging()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmLevel()I
    .locals 1

    sget v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    .line 38
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    .line 41
    sput-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    .line 44
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v1

    sput v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    .line 47
    sput-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 292
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 293
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 334
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 337
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 338
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public static exception(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "exMsg"    # Ljava/lang/Throwable;

    .line 349
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 353
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 354
    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 359
    .local v1, "ourCause":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 360
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 362
    :cond_1
    return-void
.end method

.method private static getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "priority"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 380
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 381
    .local v0, "utcDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 382
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 383
    .local v2, "year":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 384
    .local v3, "month":I
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 385
    .local v1, "date":I
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 386
    .local v4, "hour":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 387
    .local v5, "min":I
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 389
    .local v6, "sec":I
    nop

    .line 390
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    filled-new-array/range {v7 .. v16}, [Ljava/lang/Object;

    move-result-object v7

    .line 389
    const-string v8, "[%4d-%02d-%02d %02d:%02d:%02d] [%s] [%s] %s %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
    .locals 2

    .line 262
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    monitor-enter v0

    .line 263
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    .line 266
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    return-object v0

    .line 266
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 304
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 307
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 308
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method

.method public static notifyLoggingObserver(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 473
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    invoke-interface {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;->updateLogMessage(Ljava/lang/String;)V

    .line 476
    :cond_0
    return-void
.end method

.method public static registerLoggingObserver(Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;)V
    .locals 0
    .param p0, "observer"    # Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    .line 453
    sput-object p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    .line 454
    return-void
.end method

.method public static setConsoleLoggingEnable(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 400
    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    .line 401
    return-void
.end method

.method public static setFileLoggingEnable(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, "check":Z
    const-string v1, "CAELogger"

    if-eqz p0, :cond_0

    .line 413
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->startLogging(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 415
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->stopLogging(Ljava/lang/String;)Z

    move-result v0

    .line 418
    :goto_0
    if-eqz v0, :cond_1

    .line 419
    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    .line 421
    :cond_1
    return-void
.end method

.method public static setGrayBoxTestingEnable(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 430
    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    .line 431
    return-void
.end method

.method public static setLogOption(IZ)V
    .locals 0
    .param p0, "level"    # I
    .param p1, "enableCaller"    # Z

    .line 442
    sput p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    .line 443
    sput-boolean p1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    .line 444
    return-void
.end method

.method public static trace()V
    .locals 3

    .line 274
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "str":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 277
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 278
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public static unregisterLoggingObserver(Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    .line 463
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    .line 464
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 319
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 322
    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    .line 323
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method
