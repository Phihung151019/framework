.class public Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;
.super Ljava/lang/Object;
.source "CaFileLogger.java"


# static fields
.field private static final LOGTYPE_GPSPOS:I = 0x1

.field private static final LOG_FILE_DIR_NAME:Ljava/lang/String;

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;


# instance fields
.field private final mDataOutputStream:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/DataOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cae"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->LOG_FILE_DIR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;
    .locals 2

    .line 56
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    .line 60
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    return-object v0

    .line 60
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getLogFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 21
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "logDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 255
    .local v0, "curTime":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    .line 256
    .local v2, "curTimeYear":J
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-long v4, v4

    .line 257
    .local v4, "curTimeMonth":J
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v6, v1

    .line 258
    .local v6, "curTimeDay":J
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v8, v1

    .line 259
    .local v8, "curTimeHour":J
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v10, v1

    .line 260
    .local v10, "curTimeMinute":J
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v12, v1

    .line 262
    .local v12, "curTimeSecond":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "%04dY%02dM%02dD%02dH%02dM%02dS_"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v14, p1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ".log"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 264
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    filled-new-array/range {v15 .. v20}, [Ljava/lang/Object;

    move-result-object v15

    .line 262
    invoke-static {v1, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "fileName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "curTime":Ljava/util/Calendar;
    .local v16, "curTime":Ljava/util/Calendar;
    const-string v0, "logDir = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileName = "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/io/File;

    move-object/from16 v15, p2

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .local v0, "logFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v17

    if-nez v17, :cond_0

    .line 272
    const-string v17, "createNewFile() error"

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 273
    const/16 v17, 0x0

    return-object v17

    .line 278
    :cond_0
    return-object v0
.end method

.method private getLogStorageDir()Ljava/io/File;
    .locals 5

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->LOG_FILE_DIR_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "logDir":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " already exists and is not a directory"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 226
    return-object v3

    .line 228
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create directory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-object v3

    .line 236
    :cond_1
    goto :goto_0

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final logging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    .line 147
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "line.separator"

    .line 154
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 158
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 148
    :cond_1
    :goto_1
    const-string v0, "This file dose not exist."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final loggingForKML(Ljava/lang/String;J[D[FJ)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "sysTime"    # J
    .param p4, "location"    # [D
    .param p5, "additionalInfo"    # [F
    .param p6, "timeStamp"    # J

    .line 177
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    .line 178
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    if-eqz p4, :cond_2

    array-length v0, p4

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    if-gt v0, v1, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    aget v3, p5, v2

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    aget-wide v2, p4, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    aget-wide v2, p4, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    aget-wide v3, p4, v2

    invoke-virtual {v0, v3, v4}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    aget v1, p5, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    aget v1, p5, v2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, p6, p7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 185
    :cond_2
    :goto_1
    return-void

    .line 179
    :cond_3
    :goto_2
    const-string v0, "This file dose not exist."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public final startLogging(Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    .line 73
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    .local v0, "logFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 82
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getLogStorageDir()Ljava/io/File;

    move-result-object v3

    .line 83
    .local v3, "logDir":Ljava/io/File;
    if-nez v3, :cond_1

    .line 84
    const-string v4, "Log directory is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 85
    return v1

    .line 87
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getLogFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object v0, v4

    .line 88
    if-nez v0, :cond_2

    .line 89
    const-string v4, "Log file is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 90
    return v1

    .line 92
    :cond_2
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v3    # "logDir":Ljava/io/File;
    .local v4, "dataOutputStream":Ljava/io/DataOutputStream;
    nop

    .line 105
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v1, 0x1

    return v1

    .line 100
    .end local v4    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 102
    return v1

    .line 97
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 98
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 99
    return v1

    .line 94
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 95
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 96
    return v1

    .line 74
    .end local v0    # "logFile":Ljava/io/File;
    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_0
    const-string v0, "This file is created already."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 75
    return v1
.end method

.method public final stopLogging(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    .line 120
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    nop

    .line 131
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 128
    return v1

    .line 121
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_0
    return v1
.end method
