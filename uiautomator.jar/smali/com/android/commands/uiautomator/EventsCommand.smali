.class public Lcom/android/commands/uiautomator/EventsCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "EventsCommand.java"


# instance fields
.field private mQuitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const-string v0, "events"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;-><init>()V

    .line 54
    .local v0, "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->connect()V

    .line 55
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v1

    new-instance v2, Lcom/android/commands/uiautomator/EventsCommand$1;

    invoke-direct {v2, p0}, Lcom/android/commands/uiautomator/EventsCommand$1;-><init>(Lcom/android/commands/uiautomator/EventsCommand;)V

    invoke-virtual {v1, v2}, Landroid/app/UiAutomation;->setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V

    .line 66
    iget-object v1, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 72
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 74
    return-void

    .line 72
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "prints out accessibility events until terminated"

    return-object v0
.end method
