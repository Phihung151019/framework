.class public Lcom/android/commands/monkey/MonkeyActivityEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyActivityEvent.java"


# instance fields
.field mAlarmTime:J

.field private mApp:Landroid/content/ComponentName;

.field private mMainApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "app"    # Landroid/content/ComponentName;

    .line 41
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mMainApps:Ljava/util/HashMap;

    .line 42
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "arg"    # J

    .line 46
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mMainApps:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    .line 48
    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "app"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p2, "MainApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/String;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mMainApps:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    .line 55
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mMainApps:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method private getEvent()Landroid/content/Intent;
    .locals 3

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mMainApps:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mMainApps:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_0
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 4

    .line 109
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "package"

    .line 110
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 111
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    .line 112
    return-object v0

    .line 114
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    aget-object v0, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 116
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Failed talking with package manager!"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 118
    return-object v0
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 16
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 75
    move-object/from16 v1, p0

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;->getEvent()Landroid/content/Intent;

    move-result-object v6

    .line 76
    .local v6, "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    if-lez p3, :cond_0

    .line 77
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":Switch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-wide v2, v1, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "alarmTime"

    iget-wide v3, v1, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 83
    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 87
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/commands/monkey/MonkeyActivityEvent;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    .line 87
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityManager;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 99
    const/4 v0, 0x1

    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/SecurityException;
    if-lez p3, :cond_2

    .line 94
    sget-object v2, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** Permissions error starting activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-virtual {v6, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 97
    :cond_2
    const/4 v2, -0x2

    return v2

    .line 89
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 91
    const/4 v2, -0x1

    return v2
.end method
