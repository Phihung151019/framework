.class public Lcom/qualcomm/qti/UxPerformance;
.super Ljava/lang/Object;
.source "UxPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;,
        Lcom/qualcomm/qti/UxPerformance$DozeReceiver;,
        Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;
    }
.end annotation


# static fields
.field private static blacklist EnableDebug:Z = false

.field private static blacklist EnablePAppsSpeed:Z = false

.field private static blacklist EnablePAppsSpeedInitialized:Z = false

.field private static blacklist EnablePrefetch:Z = false

.field private static blacklist EnablePrefetchInitialized:Z = false

.field public static final blacklist REQUEST_FAILED:I = -0x1

.field public static final blacklist REQUEST_SUCCEEDED:I = 0x0

.field private static final blacklist TAG_TASKS:Ljava/lang/String; = "UxPerf"

.field private static final blacklist UXE_SPEED_ADD:I = 0xb

.field private static final blacklist UXE_SPEED_DEL:I = 0xc

.field private static final blacklist UXE_SPEED_TRIGGER:I = 0xd

.field private static blacklist UsePerfApiForPrefApps:Z = false

.field private static blacklist UsePerfApiForPrefAppsInit:Z = false

.field private static final blacklist VENDOR_FEEDBACK_PA_SPEED:I = 0x1605

.field private static final blacklist VENDOR_HINT_PKG_SPEED:I = 0x10a2

.field private static final blacklist VENDOR_SPEED_ADD_HINT_TYPE:I = 0x1

.field private static final blacklist VENDOR_SPEED_DEL_HINT_TYPE:I = 0x2

.field private static final blacklist VENDOR_T_API_LEVEL:I = 0x20

.field private static blacklist dozeSetup:Z

.field private static blacklist isUxPerfContextInitialized:Z

.field private static blacklist isUxPerfInitialized:Z

.field private static blacklist mUxPerf:Ljava/lang/Object;

.field private static blacklist pm:Landroid/content/pm/IPackageManager;

.field private static blacklist sUxeEventFunc:Ljava/lang/reflect/Method;

.field private static blacklist sUxeTrigFunc:Ljava/lang/reflect/Method;


# instance fields
.field private blacklist PreDexThread:Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;

.field private blacklist mDozeReceiver:Lcom/qualcomm/qti/UxPerformance$DozeReceiver;

.field private blacklist pAppsThread:Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpAppsThread(Lcom/qualcomm/qti/UxPerformance;)Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/UxPerformance;->pAppsThread:Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputpAppsThread(Lcom/qualcomm/qti/UxPerformance;Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/UxPerformance;->pAppsThread:Lcom/qualcomm/qti/UxPerformance$PAppsSpeedThread;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/UxPerformance;->QLogD(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mQLogE(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/UxPerformance;->QLogE(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEnableDebug()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnableDebug:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEnablePAppsSpeed()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnablePAppsSpeed:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEnablePAppsSpeedInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnablePAppsSpeedInitialized:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUsePerfApiForPrefApps()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->UsePerfApiForPrefApps:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUsePerfApiForPrefAppsInit()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->UsePerfApiForPrefAppsInit:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmUxPerf()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/UxPerformance;->mUxPerf:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetpm()Landroid/content/pm/IPackageManager;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/UxPerformance;->pm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUxeEventFunc()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/UxPerformance;->sUxeEventFunc:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUxeTrigFunc()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/UxPerformance;->sUxeTrigFunc:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputEnablePAppsSpeed(Z)V
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/UxPerformance;->EnablePAppsSpeed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputEnablePAppsSpeedInitialized(Z)V
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/UxPerformance;->EnablePAppsSpeedInitialized:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputUsePerfApiForPrefApps(Z)V
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/UxPerformance;->UsePerfApiForPrefApps:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputUsePerfApiForPrefAppsInit(Z)V
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/UxPerformance;->UsePerfApiForPrefAppsInit:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmUxPerf(Ljava/lang/Object;)V
    .locals 0

    sput-object p0, Lcom/qualcomm/qti/UxPerformance;->mUxPerf:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsUxeEventFunc(Ljava/lang/reflect/Method;)V
    .locals 0

    sput-object p0, Lcom/qualcomm/qti/UxPerformance;->sUxeEventFunc:Ljava/lang/reflect/Method;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsUxeTrigFunc(Ljava/lang/reflect/Method;)V
    .locals 0

    sput-object p0, Lcom/qualcomm/qti/UxPerformance;->sUxeTrigFunc:Ljava/lang/reflect/Method;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->isUxPerfInitialized:Z

    .line 37
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->isUxPerfContextInitialized:Z

    .line 38
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnablePrefetch:Z

    .line 39
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnableDebug:Z

    .line 40
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnablePAppsSpeed:Z

    .line 44
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->dozeSetup:Z

    .line 59
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnablePAppsSpeedInitialized:Z

    .line 60
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnablePrefetchInitialized:Z

    .line 61
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->UsePerfApiForPrefAppsInit:Z

    .line 62
    sput-boolean v0, Lcom/qualcomm/qti/UxPerformance;->UsePerfApiForPrefApps:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/UxPerformance;->PreDexThread:Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;

    .line 66
    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->isUxPerfInitialized:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->isUxPerfContextInitialized:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    const-string v0, "UX Perf module initialized"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/UxPerformance;->QLogD(Ljava/lang/String;)V

    .line 68
    return-void

    .line 66
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/UxPerformance;->PreDexThread:Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;

    .line 70
    sget-boolean v1, Lcom/qualcomm/qti/UxPerformance;->isUxPerfContextInitialized:Z

    if-eqz v1, :cond_0

    return-void

    .line 71
    :cond_0
    const-string v1, "UX Perf module initialized w/ context"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/UxPerformance;->QLogD(Ljava/lang/String;)V

    .line 74
    :try_start_0
    const-string v1, "com.qualcomm.qti.Performance"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 75
    .local v1, "sPerfClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/qualcomm/qti/UxPerformance;->mUxPerf:Ljava/lang/Object;

    .line 76
    sget-boolean v2, Lcom/qualcomm/qti/UxPerformance;->dozeSetup:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 77
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v2, "pfilter":Landroid/content/IntentFilter;
    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    new-instance v4, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;

    invoke-direct {v4, p0, v0}, Lcom/qualcomm/qti/UxPerformance$DozeReceiver;-><init>(Lcom/qualcomm/qti/UxPerformance;Lcom/qualcomm/qti/UxPerformance-IA;)V

    iput-object v4, p0, Lcom/qualcomm/qti/UxPerformance;->mDozeReceiver:Lcom/qualcomm/qti/UxPerformance$DozeReceiver;

    .line 82
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance;->mDozeReceiver:Lcom/qualcomm/qti/UxPerformance$DozeReceiver;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    sput-boolean v3, Lcom/qualcomm/qti/UxPerformance;->dozeSetup:Z

    .line 85
    .end local v2    # "pfilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/UxPerformance;->pm:Landroid/content/pm/IPackageManager;

    .line 86
    sput-boolean v3, Lcom/qualcomm/qti/UxPerformance;->isUxPerfContextInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "sPerfClass":Ljava/lang/Class;
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UxPerf"

    const-string v2, "Couldn\'t load Performance Class w/ context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist QLogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 100
    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnableDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "UxPerf"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return-void
.end method

.method private blacklist QLogE(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 112
    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnableDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "UxPerf"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    return-void
.end method

.method private blacklist QLogI(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 94
    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnableDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "UxPerf"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method private blacklist QLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 106
    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnableDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "UxPerf"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "PId"    # I
    .param p2, "PkgName"    # Ljava/lang/String;
    .param p3, "CodePath"    # Ljava/lang/String;

    .line 125
    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnablePrefetchInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    :try_start_0
    const-string v0, "com.qualcomm.qti.Performance"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 128
    .local v0, "sPerfClass":Ljava/lang/Class;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 129
    .local v2, "argClasses":[Ljava/lang/Class;
    const-string v3, "perfGetProp"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 130
    .local v3, "sPerfGetPropFunc":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 131
    .local v5, "mPerf":Ljava/lang/Object;
    const-string v6, "vendor.perf.iop_v3.enable"

    const-string v7, "false"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 132
    .local v6, "retVal":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/qualcomm/qti/UxPerformance;->EnablePrefetch:Z

    .line 133
    sput-boolean v4, Lcom/qualcomm/qti/UxPerformance;->EnablePrefetchInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "sPerfClass":Ljava/lang/Class;
    .end local v2    # "argClasses":[Ljava/lang/Class;
    .end local v3    # "sPerfGetPropFunc":Ljava/lang/reflect/Method;
    .end local v5    # "mPerf":Ljava/lang/Object;
    .end local v6    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UxPerf"

    const-string v3, "Couldn\'t load Performance Class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/qualcomm/qti/UxPerformance;->EnablePrefetch:Z

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "DexPrefetchThread Feature is Enable "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/UxPerformance;->QLogI(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;

    invoke-direct {v0, p0, p3}, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;-><init>(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/UxPerformance;->PreDexThread:Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;

    .line 142
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance;->PreDexThread:Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/qualcomm/qti/UxPerformance;->PreDexThread:Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    :cond_1
    return v1

    .line 147
    :cond_2
    const-string v0, "DexPrefetchThread Feature is disabled "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/UxPerformance;->QLogI(Ljava/lang/String;)V

    .line 148
    const/4 v0, -0x1

    return v0
.end method
