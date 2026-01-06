.class public Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;
.super Ljava/lang/Object;
.source "MultiFoldingSequenceCheckAuror.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;,
        Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;,
        Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;,
        Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;
    }
.end annotation


# static fields
.field private static final HQM_HIT_TYPE_PH:Ljava/lang/String; = "ph"

.field private static final HQM_SURVEY_LOG:Z = true

.field private static final SURVEY_LOG:Z

.field private static final TAG:Ljava/lang/String; = "SENSORBD"

.field private static mErrorData:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

.field private static multiFoldingSequenceCheckAuror:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;


# instance fields
.field private final FOLD_ABNORMAL_SEQ_PATH:Ljava/lang/String;

.field private final HQM_FEATURE_FOLDING_ERROR:Ljava/lang/String;

.field private final MSG_FOLDING_HAPPEN:I

.field private final SENSOR_SFLD_FEATURE_MAX_LENGTH:I

.field private final SFLD_KEY_INV_CNT:Ljava/lang/String;

.field private final SFLD_KEY_TIME:Ljava/lang/String;

.field private final SFLD_KEY_TYPE:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFoldingSequenceListener:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;

.field private mInverseFoldingCount:I

.field private final mMultiFoldingSeqHandler:Landroid/os/Handler;

.field private final mMultiFoldingSeqThread:Landroid/os/HandlerThread;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInverseFoldingCount(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mInverseFoldingCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiFoldingSeqHandler(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mMultiFoldingSeqHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInverseFoldingCount(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mInverseFoldingCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadCounter(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->readCounter()Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendSFLDDATA(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->sendSFLDDATA(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmErrorData()Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mErrorData:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmErrorData(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mErrorData:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->SURVEY_LOG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "SFLD"

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->HQM_FEATURE_FOLDING_ERROR:Ljava/lang/String;

    .line 67
    const-string v0, "INV_CNT"

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->SFLD_KEY_INV_CNT:Ljava/lang/String;

    .line 68
    const-string v0, "TIME"

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->SFLD_KEY_TIME:Ljava/lang/String;

    .line 69
    const-string v0, "TYPE"

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->SFLD_KEY_TYPE:Ljava/lang/String;

    .line 71
    const/16 v0, 0x400

    iput v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->SENSOR_SFLD_FEATURE_MAX_LENGTH:I

    .line 72
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->MSG_FOLDING_HAPPEN:I

    .line 73
    const-string v0, "/efs/FactoryApp/reverse_folding_count_hall"

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->FOLD_ABNORMAL_SEQ_PATH:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mInverseFoldingCount:I

    .line 90
    const-string v0, "SENSORBD"

    const-string v1, "[FLD_SEQ] MultiFoldingSequenceCheckAuror()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mMultiFoldingSeqThread:Landroid/os/HandlerThread;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mMultiFoldingSeqThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;

    iget-object v1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mMultiFoldingSeqThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;-><init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mMultiFoldingSeqHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    const-string v0, "SENSORBD"

    const-string v1, "[FLD_SEQ] getInstance()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->multiFoldingSequenceCheckAuror:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->multiFoldingSequenceCheckAuror:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    .line 101
    new-instance v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mErrorData:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    .line 103
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->multiFoldingSequenceCheckAuror:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    return-object v0
.end method

.method private declared-synchronized readCounter()Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;
    .locals 17

    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/reverse_folding_count_hall"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 126
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "SENSORBD"

    const-string v2, "[FLD_SEQ] Path No Exist: /efs/FactoryApp/reverse_folding_count_hall"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local p0    # "this":Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const-string v0, "SENSORBD"

    const-string v2, "[FLD_SEQ] Path Can\'t Access: /efs/FactoryApp/reverse_folding_count_hall"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    new-instance v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v2, v0

    .line 135
    .local v2, "tmpData":Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v3, v0

    .line 140
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 141
    .local v0, "lastLine":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_2

    .line 143
    move-object v0, v4

    .line 144
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 147
    :cond_2
    if-nez v0, :cond_3

    .line 148
    const-string v5, "SENSORBD"

    const-string v6, "[FLD_SEQ] File is Empty"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    nop

    .line 166
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 149
    monitor-exit p0

    return-object v2

    .line 151
    :cond_3
    :try_start_4
    const-string v5, "SENSORBD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FLD_SEQ] last line = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 156
    nop

    .line 166
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 156
    monitor-exit p0

    return-object v2

    .line 159
    :cond_4
    const/4 v6, 0x0

    :try_start_6
    aget-object v7, v5, v6

    .line 160
    .local v7, "date":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v9, v5, v8

    .line 161
    .local v9, "time":Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v11, v5, v10

    .line 162
    .local v11, "type":Ljava/lang/String;
    const/4 v12, 0x3

    aget-object v13, v5, v12

    .line 163
    .local v13, "count":Ljava/lang/String;
    const-string v14, "SENSORBD"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v6

    const-string v6, "[FLD_SEQ] date: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v15, v5, v16

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ", time: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v5, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v5, v10

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", count: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v5, v12

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6, v7, v9, v11}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->setValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 166
    .end local v0    # "lastLine":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    .end local v7    # "date":Ljava/lang/String;
    .end local v9    # "time":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v13    # "count":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 168
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 135
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "tmpData":Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;
    :goto_1
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 166
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "tmpData":Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    const-string v3, "SENSORBD"

    const-string v4, "[FLD_SEQ] File read error."

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const-string v0, "SENSORBD"

    const-string v3, "[FLD_SEQ]  FINISHED: readCounter()"

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 170
    monitor-exit p0

    return-object v2

    .line 124
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "tmpData":Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method

.method private sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "hitType"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mContext:Landroid/content/Context;

    const-string v1, "SENSORBD"

    if-nez v0, :cond_0

    .line 229
    const-string v0, "Context is null!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/SemHqmManager;

    .line 235
    .local v2, "semHqmManager":Landroid/os/SemHqmManager;
    const-string v4, "Sensor"

    .line 236
    .local v4, "compID":Ljava/lang/String;
    const-string v7, "0.0"

    .line 237
    .local v7, "compVer":Ljava/lang/String;
    const-string v8, "sec"

    .line 238
    .local v8, "compManufacture":Ljava/lang/String;
    move-object v0, p2

    .line 240
    .local v0, "loggingData":Ljava/lang/String;
    const-string v3, "{"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v3, "}"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v3, "SFLD"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x400

    if-le v3, v5, :cond_1

    .line 247
    const-string v3, "[FLD_SEQ] Data Length is over."

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 253
    :cond_1
    const-string v9, ""

    .line 254
    .local v9, "dev_customDataSet":Ljava/lang/String;
    move-object v10, v0

    .line 255
    .local v10, "basic_customDataSet":Ljava/lang/String;
    const-string v11, ""

    .line 257
    .local v11, "pri_customDataSet":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 258
    move-object v5, p1

    move v3, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 261
    :cond_2
    const-string v3, "SemHqmManager is null!!"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void
.end method

.method private sendSFLDDATA(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FLD_SEQ] sendSFLDDATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    const-string v1, "ph"

    const-string v2, "SFLD"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    return-void
.end method


# virtual methods
.method public insertLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 266
    sget-boolean v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->SURVEY_LOG:Z

    if-eqz v0, :cond_1

    .line 267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "com.samsung.android.motion"

    .line 269
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "feature"

    const-string v3, "SFLD"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-eqz p1, :cond_0

    .line 273
    const-string v2, "extra"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v2, "broadcastIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v3, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "broadcastIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 107
    const-string v0, "[FLD_SEQ] start()"

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->readCounter()Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mErrorData:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    .line 109
    sget-object v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mErrorData:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    iget v0, v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->count:I

    iput v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mInverseFoldingCount:I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FLD_SEQ] initial Count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mInverseFoldingCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mInverseFoldingCount:I

    if-gez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mInverseFoldingCount:I

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mSensorManager:Landroid/hardware/SensorManager;

    .line 117
    new-instance v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;-><init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror-IA;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mFoldingSequenceListener:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mFoldingSequenceListener:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->register()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->mMultiFoldingSeqHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;-><init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror-IA;)V

    invoke-virtual {v0, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 122
    return-void
.end method
