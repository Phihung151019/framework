.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;
.source "PhoneStateMonitorRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;
    }
.end annotation


# static fields
.field private static final COVER_CLOSE:I = 0x0

.field private static final COVER_OPEN:I = 0x1

.field private static final COVER_TYPE_FLIP:I = 0x1

.field private static final COVER_TYPE_NONE:I = 0x0

.field private static final COVER_TYPE_VIEW:I = 0x2

.field private static final GET_PHONE_STATE_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.GET_PHONE_STATE"

.field private static final LOG_FILE:Ljava/lang/String; = "/data/log/CAE/phone_state.txt"

.field private static final LOG_FILE_DIR:Ljava/lang/String; = "/data/log/CAE"

.field private static final MSG_COVER_STATE:I = 0xfeed

.field private static final MSG_TIMER_EXPIRED:I = 0xfeef

.field private static final TURN_OVER_LIGHTING_DISABLED:I = 0x0

.field private static final TURN_OVER_LIGHTING_ENABLED:I = 0x1

.field private static final WAIT_RESPONSE_TIME:J = 0xc8L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$mgetState(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getState()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 335
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 1211
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    iput-object p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mLooper:Landroid/os/Looper;

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->createHandler()V

    .line 347
    return-void
.end method

.method static synthetic access$001(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .line 117
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->isDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method private createHandler()V
    .locals 2

    .line 1157
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mHandler:Landroid/os/Handler;

    .line 1207
    return-void
.end method

.method private getDate(J)Ljava/lang/String;
    .locals 2
    .param p1, "time"    # J

    .line 725
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getState()V
    .locals 5

    .line 961
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->isDisable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 967
    .local v0, "packet":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 969
    const/4 v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 971
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mLooper:Landroid/os/Looper;

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getCoverState()Z

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :cond_0
    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 973
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mLooper:Landroid/os/Looper;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getCoverType()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 977
    const/16 v1, -0x48

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->sendCmdToSensorHub(BB[B)V

    .line 985
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mHandler:Landroid/os/Handler;

    const v2, 0xfeef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 989
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 995
    .end local v0    # "packet":[B
    :cond_1
    return-void
.end method

.method private isTurnOverLighting()I
    .locals 1

    .line 1147
    const/4 v0, 0x0

    return v0
.end method

.method private recordPhoneDrop()V
    .locals 6

    .line 663
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/CAE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 669
    return-void

    .line 677
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/CAE/phone_state.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 679
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 683
    .local v2, "fOutStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v3

    .line 685
    nop

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - PHONE DROP DETECTED\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "out":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v3    # "out":Ljava/lang/String;
    nop

    .line 705
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 711
    :goto_0
    goto :goto_1

    .line 707
    :catch_0
    move-exception v3

    .line 709
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 701
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 695
    :catch_1
    move-exception v3

    .line 697
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 705
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 717
    :cond_1
    :goto_1
    return-void

    .line 701
    :goto_2
    if-eqz v2, :cond_2

    .line 705
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 711
    goto :goto_3

    .line 707
    :catch_2
    move-exception v4

    .line 709
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 715
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v3
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 749
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 757
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->clear()V

    .line 759
    return-void
.end method

.method public final disable()V
    .locals 1

    .line 1017
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 1025
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;)V

    .line 1029
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->disable()V

    .line 1031
    return-void
.end method

.method public final enable()V
    .locals 1

    .line 935
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 947
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;)V

    .line 951
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->enable()V

    .line 953
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 367
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PHONE_STATE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 7

    .line 417
    const-string v5, "lcdOffRecommend"

    const-string v6, "timestamp"

    const-string v0, "movement"

    const-string v1, "lcddirect"

    const-string v2, "embower"

    const-string v3, "finalLcdOff"

    const-string v4, "lcdOffInference"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 5

    .line 779
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 783
    .local v0, "packet":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 785
    const/4 v2, 0x1

    aput-byte v2, v0, v2

    .line 787
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->isTurnOverLighting()I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    .line 789
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mLooper:Landroid/os/Looper;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getCoverType()I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v0, v4

    .line 791
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->mLooper:Landroid/os/Looper;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getCoverState()Z

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 795
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .line 817
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 823
    .local v1, "packet":[B
    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 825
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 829
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 1081
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 1083
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 389
    const/16 v0, 0x2f

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 887
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 911
    return-object p0
.end method

.method protected final notifyInitContext()V
    .locals 2

    .line 1051
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    .line 1053
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    .line 1051
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->notifyInitContext()V

    .line 1059
    :cond_0
    return-void
.end method

.method public parse([BI)I
    .locals 9
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 457
    move v0, p2

    .line 461
    .local v0, "tmpNext":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "names":[Ljava/lang/String;
    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x6

    if-gez v2, :cond_0

    .line 471
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 473
    const/4 v2, -0x1

    return v2

    .line 479
    :cond_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 481
    add-int/2addr v0, v2

    .line 483
    add-int/2addr v0, v2

    .line 491
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 493
    .local v2, "lcdOff":Z
    :cond_1
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v0    # "tmpNext":I
    aget-byte v3, p1, v3

    .line 495
    .local v3, "lcdDirectEvent":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v0, p1, v0

    .line 621
    .local v0, "embowerEvent":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdDirect:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v6

    aget-object v6, v1, v6

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 623
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Embower:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v6

    aget-object v6, v1, v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 633
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdOffRecommend:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v6

    aget-object v6, v1, v6

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    .line 635
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v6

    aget-object v6, v1, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 639
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->notifyObserver()V

    .line 649
    return v4
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 853
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 857
    .local v0, "result":Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getState()V

    .line 865
    :cond_0
    return v0
.end method
