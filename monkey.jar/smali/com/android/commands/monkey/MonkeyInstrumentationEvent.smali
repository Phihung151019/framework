.class public Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyInstrumentationEvent.java"


# instance fields
.field mRunnerName:Ljava/lang/String;

.field mTestCaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "testCaseName"    # Ljava/lang/String;
    .param p2, "runnerName"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 35
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 10
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 41
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 42
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "class"

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    .end local p2    # "iam":Landroid/app/IActivityManager;
    .local v1, "iam":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 53
    const/4 p2, 0x1

    return p2

    .line 49
    :catch_0
    move-exception v0

    move-object p2, v0

    .line 50
    .local p2, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 51
    const/4 v0, -0x1

    return v0

    .line 42
    .end local v1    # "iam":Landroid/app/IActivityManager;
    .end local v5    # "args":Landroid/os/Bundle;
    .local p2, "iam":Landroid/app/IActivityManager;
    :cond_0
    move-object v1, p2

    .line 43
    .end local p2    # "iam":Landroid/app/IActivityManager;
    .restart local v1    # "iam":Landroid/app/IActivityManager;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad component name"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
