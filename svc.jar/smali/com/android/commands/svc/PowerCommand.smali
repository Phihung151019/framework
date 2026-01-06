.class public Lcom/android/commands/svc/PowerCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "PowerCommand.java"


# static fields
.field private static final FORCE_SUSPEND_DELAY_DEFAULT_MILLIS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const-string v0, "power"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private maybeLogRemoteException(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nusage: svc power stayon [true|false|usb|ac|wireless|dock]\n         Set the \'keep awake while plugged in\' setting.\n       svc power reboot [reason]\n         Perform a runtime shutdown and reboot device with specified reason.\n       svc power shutdown\n         Perform a runtime shutdown and power off the device.\n       svc power forcesuspend [t]\n         Force the system into suspend, ignoring all wakelocks.\n         t - Number of milliseconds to wait before issuing force-suspend.\n             Helps with devices that can\'t suspend while plugged in.\n             Defaults to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\n             When using a delay, you must use the nohup shell modifier:\n             \'adb shell nohup svc power forcesuspend [time]\'\n         Use caution; this is dangerous. It puts the device to sleep\n         immediately without giving apps or the system an opportunity to\n         save their state.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;

    .line 61
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    .line 62
    nop

    .line 63
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 64
    .local v2, "pm":Landroid/os/IPowerManager;
    const-string v0, "stayon"

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_6

    array-length v0, p1

    if-ne v0, v4, :cond_6

    .line 66
    const-string v0, "true"

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/16 v0, 0xf

    move v1, v0

    .local v0, "val":I
    goto :goto_0

    .line 72
    .end local v0    # "val":I
    :cond_0
    const-string v0, "false"

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x0

    move v1, v0

    .restart local v0    # "val":I
    goto :goto_0

    .line 74
    .end local v0    # "val":I
    :cond_1
    const-string v0, "usb"

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x2

    move v1, v0

    .restart local v0    # "val":I
    goto :goto_0

    .line 76
    .end local v0    # "val":I
    :cond_2
    const-string v0, "ac"

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const/4 v0, 0x1

    move v1, v0

    .restart local v0    # "val":I
    goto :goto_0

    .line 78
    .end local v0    # "val":I
    :cond_3
    const-string v0, "wireless"

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x4

    move v1, v0

    .restart local v0    # "val":I
    goto :goto_0

    .line 80
    .end local v0    # "val":I
    :cond_4
    const-string v0, "dock"

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 81
    const/16 v0, 0x8

    move v1, v0

    .line 86
    .local v1, "val":I
    :goto_0
    if-eqz v1, :cond_5

    .line 89
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v6, "PowerCommand"

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/os/IPowerManager;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_5
    invoke-interface {v2, v1}, Landroid/os/IPowerManager;->setStayOnSetting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Faild to set setting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 98
    .end local v1    # "val":I
    :cond_6
    const-string v0, "reboot"

    aget-object v5, p1, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "mode":Ljava/lang/String;
    array-length v6, p1

    if-ne v6, v4, :cond_7

    .line 101
    aget-object v0, p1, v1

    move-object v1, v0

    goto :goto_2

    .line 100
    :cond_7
    move-object v1, v0

    .line 105
    .end local v0    # "mode":Ljava/lang/String;
    .local v1, "mode":Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-interface {v2, v5, v1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_3
    goto :goto_4

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to reboot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to reboot."

    invoke-direct {p0, v3}, Lcom/android/commands/svc/PowerCommand;->maybeLogRemoteException(Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 111
    :goto_4
    return-void

    .line 112
    .end local v1    # "mode":Ljava/lang/String;
    :cond_8
    const-string v0, "shutdown"

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v5, v0, v3}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 118
    goto :goto_5

    .line 116
    :catch_3
    move-exception v0

    .line 117
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "Failed to shutdown."

    invoke-direct {p0, v1}, Lcom/android/commands/svc/PowerCommand;->maybeLogRemoteException(Ljava/lang/String;)V

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return-void

    .line 120
    :cond_9
    const-string v0, "forcesuspend"

    aget-object v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 121
    array-length v0, p1

    if-le v0, v1, :cond_a

    .line 122
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_6

    :cond_a
    nop

    .line 124
    .local v5, "delayMillis":I
    :goto_6
    int-to-long v0, v5

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    invoke-interface {v2}, Landroid/os/IPowerManager;->forceSuspend()Z

    move-result v0

    if-nez v0, :cond_b

    .line 126
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Failed to force suspend."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_7

    .line 130
    :catch_4
    move-exception v0

    .line 131
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to force-suspend with exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/commands/svc/PowerCommand;->maybeLogRemoteException(Ljava/lang/String;)V

    goto :goto_8

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to force suspend: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_b
    :goto_7
    nop

    .line 133
    :goto_8
    return-void

    .line 137
    .end local v2    # "pm":Landroid/os/IPowerManager;
    .end local v5    # "delayMillis":I
    :cond_c
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->longHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "Control the power manager"

    return-object v0
.end method
