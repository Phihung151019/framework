.class public Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
.super Ljava/lang/Object;
.source "CaAlarmManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
    .locals 2

    .line 42
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    return-object v0

    .line 46
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 2

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentMinute()I
    .locals 2

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 119
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentSecond()I
    .locals 2

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 61
    return-void

    .line 64
    :cond_0
    nop

    .line 65
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    .line 68
    return-void
.end method

.method public final terminateManager()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    .line 79
    return-void
.end method

.method public final vibrateAlarm(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 88
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "mVibrator is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 90
    return-void

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    .line 94
    const-string v0, "vibrate alarm"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "vibrate Cancel"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 100
    :goto_0
    return-void
.end method
