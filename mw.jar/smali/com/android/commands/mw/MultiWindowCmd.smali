.class public Lcom/android/commands/mw/MultiWindowCmd;
.super Lcom/android/internal/os/BaseCommand;
.source "MultiWindowCmd.java"


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: adb shell mw [cmd] [arg]\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/android/commands/mw/MultiWindowCmd;

    invoke-direct {v0}, Lcom/android/commands/mw/MultiWindowCmd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/mw/MultiWindowCmd;->run([Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private runCommand([Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .line 71
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    .line 72
    .local v0, "multiTaskingBinder":Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    new-instance v6, Landroid/os/ShellCallback;

    invoke-direct {v6}, Landroid/os/ShellCallback;-><init>()V

    new-instance v7, Lcom/android/commands/mw/MultiWindowCmd$1;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/android/commands/mw/MultiWindowCmd$1;-><init>(Lcom/android/commands/mw/MultiWindowCmd;Landroid/os/Handler;)V

    move-object v5, p1

    .end local p1    # "args":[Ljava/lang/String;
    .local v5, "args":[Ljava/lang/String;
    invoke-interface/range {v1 .. v7}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 79
    return-void

    .line 73
    .end local v5    # "args":[Ljava/lang/String;
    .restart local p1    # "args":[Ljava/lang/String;
    :cond_0
    move-object v5, p1

    .end local p1    # "args":[Ljava/lang/String;
    .restart local v5    # "args":[Ljava/lang/String;
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error type 2"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    new-instance p1, Landroid/util/AndroidException;

    const-string v1, "Can\'t connect to MultiTaskingManager"

    invoke-direct {p1, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/android/commands/mw/MultiWindowCmd;->getRawArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/mw/MultiWindowCmd;->runCommand([Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 54
    :try_start_0
    const-string v0, "help"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/mw/MultiWindowCmd;->runCommand([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/util/AndroidException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Landroid/util/AndroidException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 58
    .end local v0    # "e":Landroid/util/AndroidException;
    :goto_0
    const-string v0, "usage: adb shell mw [cmd] [arg]\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method
