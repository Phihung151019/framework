.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.super Ljava/lang/Object;
.source "PowerResetNotiParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;
    }
.end annotation


# static fields
.field private static final PERMISSION_SENSORHUB_RESET:Ljava/lang/String; = "com.samsung.permission.SENSORHUB_RESET"

.field private static final SLPI_CMD_RESET_STATE:I = 0x0

.field private static final SLPI_CMD_RESTORE_STATE:I = 0x1

.field private static final SLPI_CMD_UNKNOWN_STATE:I = -0x1

.field private static final SLPI_RESET_STATUS:Ljava/lang/String; = "restrict"

.field private static final SLPI_RESET_STATUS_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/operation_mode"

.field private static final SLPI_RESTORE_STATUS:Ljava/lang/String; = "normal"

.field private static final SLPI_UNKNOWN_STATUS:Ljava/lang/String; = "unknown"


# instance fields
.field mContext:Landroid/content/Context;

.field private mLastStatus:Ljava/lang/String;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

.field private mSensorHubResetCnt:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastStatus(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastStatus(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$misSLPISupported(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    .line 59
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    const-string v1, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;->startWatching()V

    .line 72
    const-string v0, "SLPIResetObserver : start"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "SLPIResetObserver : observer is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method private static getFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "file_path"    # Ljava/lang/String;

    .line 236
    const-string v0, ""

    .line 237
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 240
    .local v3, "buffer_reader":Ljava/io/BufferedReader;
    if-nez p0, :cond_0

    .line 241
    const-string v2, "File Path is null!!"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 242
    return-object v0

    .line 246
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 248
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_1

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 252
    const-string v4, "\n"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v0    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    nop

    .line 260
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    goto :goto_4

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 258
    .end local v2    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 255
    :catch_1
    move-exception v2

    .line 256
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "File transmission is failed"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 260
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 261
    :catch_2
    move-exception v2

    goto :goto_1

    .line 253
    :catch_3
    move-exception v2

    .line 254
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v4, "File is not found"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_2

    .line 260
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 261
    :catch_4
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 263
    :cond_2
    :goto_2
    nop

    .line 265
    :goto_3
    move-object v2, v0

    .end local v0    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    :goto_4
    return-object v2

    .line 259
    .end local v2    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :goto_5
    if-eqz v3, :cond_3

    .line 260
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    .line 261
    :catch_5
    move-exception v4

    .line 262
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 263
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    nop

    .line 264
    :goto_7
    throw v2
.end method

.method private isSLPISupported()Z
    .locals 3

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "res":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 233
    :cond_0
    return v0
.end method


# virtual methods
.method public final notifySensorHubResetObserver(I)V
    .locals 2
    .param p1, "status"    # I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .line 172
    .local v1, "observer":Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;->updateSensorHubResetStatus(I)V

    .line 175
    .end local v1    # "observer":Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    :cond_0
    goto :goto_0

    .line 176
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;>;"
    :cond_1
    return-void
.end method

.method public final parse([BI)I
    .locals 9
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 88
    move v0, p2

    .line 90
    .local v0, "tmpNext":I
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 91
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 92
    const/4 v1, -0x1

    return v1

    .line 95
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v1, "dispContextData":Landroid/os/Bundle;
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p1, v0

    .line 98
    .local v0, "sensorHubStatus":I
    const-string v4, "Noti"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, "sensorHubResetStatus":I
    iget-wide v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    .line 103
    array-length v5, p1

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 104
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v4, p1, v3

    move v3, v5

    .line 107
    .end local v5    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :cond_1
    const/16 v5, -0x2b

    if-ne v0, v5, :cond_2

    .line 108
    const-string v5, "================= Noti (Power) ================="

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 109
    const-string v5, "Noti Type : SensorHub Reset"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->sendAutoBrightnessTableToSensorHub()Z

    .line 111
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->notifySensorHubResetObserver(I)V

    .line 113
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->isBootComplete()Z

    move-result v5

    if-ne v5, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 115
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "sensorhub_reset_reason"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v5, "sensorhub_reset_cnt"

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    const-string v5, "sensorhub_reset_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sensorhub reset status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Sensorhub reset cnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.permission.SENSORHUB_RESET"

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 126
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return v3
.end method

.method public final registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public final unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    return-void
.end method
