.class public Lcom/android/server/ssrm/fgapps/PerformanceLogging;
.super Ljava/lang/Object;
.source "PerformanceLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;
    }
.end annotation


# static fields
.field private static final ATRACE_PERFETTO_FORCESTOP_NAME:Ljava/lang/String; = "debug.perfmond.perfetto.forcestop"

.field private static final ATRACE_PERFETTO_PROPERTY:Ljava/lang/String; = "debug.perfmond.atrace"

.field private static final ATRACE_PERFETTO_TARGET_NAME_PROPERTY:Ljava/lang/String; = "debug.perfmond.atrace.name"

.field private static final COPY_WAITING_DURATION_MS:I = 0x7d0

.field private static final DEBUG_LEVEL_HIGH_STRING:Ljava/lang/String; = "0x4948"

.field private static final DEBUG_LEVEL_MID_STRING:Ljava/lang/String; = "0x494d"

.field private static final DEFAULT_PERFETTO:I = 0x1

.field private static final MODE_ALLOW_RDX_DUMP:I = 0x26

.field private static final MSG_ATRACE_COPY:I = 0x1

.field private static final PERF_LOGGING_PERFETTO_DEFAULT:Ljava/lang/String; = "debug.perfmond.default.perfetto"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTracingMode:I


# direct methods
.method static bridge synthetic -$$Nest$mexecute(Lcom/android/server/ssrm/fgapps/PerformanceLogging;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->execute(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    .line 71
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;-><init>(Lcom/android/server/ssrm/fgapps/PerformanceLogging;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug.perfmond.default.perfetto"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->checkDumpSinkAndDebugLevel(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private checkDumpSinkAndDebugLevel(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "emm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    const/4 v1, 0x0

    .line 51
    .local v1, "result":I
    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    sget-object v2, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    const-string v3, "checkDumpSink EngineeringModeManager is not connected"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v1

    .line 55
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 56
    sget-object v3, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    const-string v4, "checkDumpSink MODE_ALLOW_RDX_DUMP is allowed"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "ro.boot.debug_level"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "debug_level":Ljava/lang/String;
    const-string v4, "0x494d"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0x4948"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    :cond_1
    sget-object v4, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check Debug Level is allowed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, v2}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->execute(I)V

    .line 64
    .end local v3    # "debug_level":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 65
    :cond_3
    sget-object v2, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDumpSink MODE_ALLOW_RDX_DUMP is not allowed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void
.end method

.method public static createAtraceName(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .line 150
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 151
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "formatter":Ljava/text/DateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Atrace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized execute(I)V
    .locals 6
    .param p1, "type"    # I

    monitor-enter p0

    .line 77
    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current mTracingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/16 v0, 0x65

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/16 v3, 0x18

    if-gt v1, p1, :cond_2

    const/16 v4, 0x67

    if-gt p1, v4, :cond_2

    .line 83
    iget v4, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v4, :cond_0

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    const-string v4, "debug.perfmond.default.perfetto"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne p1, v0, :cond_1

    .line 89
    const/16 p1, 0x66

    .line 94
    :cond_1
    const-string v4, "PerfettoLogging"

    invoke-static {v3, v2, v4}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 97
    const-string v4, "debug.perfmond.atrace"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v4, "debug.perfmond.perfetto.forcestop"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput p1, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    .line 103
    const/4 p1, 0x0

    .line 108
    .end local p0    # "this":Lcom/android/server/ssrm/fgapps/PerformanceLogging;
    :cond_2
    const/4 v4, 0x4

    if-eq p1, v4, :cond_9

    const/4 v4, 0x5

    if-ne p1, v4, :cond_3

    goto :goto_1

    .line 116
    :cond_3
    iget v4, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    if-ne v4, v1, :cond_4

    .line 117
    sget-object v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    const-string v1, "PerformanceLogging was disabled"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 122
    :cond_4
    :try_start_2
    iget v1, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    if-ne v1, v0, :cond_6

    .line 123
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->createAtraceName(J)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "atraceName":Ljava/lang/String;
    const-string v1, "debug.perfmond.atrace.name"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v0    # "atraceName":Ljava/lang/String;
    :cond_5
    const-string v0, "debug.perfmond.atrace"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_6
    iget v0, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_8

    .line 129
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 130
    const-string v0, "PerfettoLogging"

    invoke-static {v3, v2, v0}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 133
    :cond_7
    int-to-short v0, p1

    const-string v1, "PerfettoLogging"

    invoke-static {v3, v0, v1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_9
    :goto_1
    int-to-short v0, p1

    :try_start_3
    const-string v1, "PerfettoLogging"

    invoke-static {v3, v0, v1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 76
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
