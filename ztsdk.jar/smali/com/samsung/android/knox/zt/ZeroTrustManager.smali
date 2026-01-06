.class public Lcom/samsung/android/knox/zt/ZeroTrustManager;
.super Ljava/lang/Object;
.source "ZeroTrustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/ZeroTrustManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final LATEST_SDK_VERSION:I = 0x1

.field private static final PROP_PERSIST_SYS_KNOX_ZTD:Ljava/lang/String; = "persist.sys.knox.ztd"

.field public static final SDK_VERSION_1_0:I = 0x1

.field private static final SERVICE_NAME:Ljava/lang/String; = "ztd"

.field private static final TAG:Ljava/lang/String; = "ZeroTrustManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/zt/ZeroTrustManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/ZeroTrustManager;-><init>()V

    return-void
.end method

.method private getDarService()Lcom/samsung/android/knox/dar/IDarManagerService;
    .locals 3

    .line 152
    nop

    .line 153
    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    .line 154
    .local v0, "darService":Lcom/samsung/android/knox/dar/IDarManagerService;
    if-nez v0, :cond_0

    .line 155
    const-string v1, "ZeroTrustManager"

    const-string v2, "dar service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/knox/zt/ZeroTrustManager;
    .locals 1

    .line 35
    invoke-static {}, Lcom/samsung/android/knox/zt/ZeroTrustManager$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/knox/zt/ZeroTrustManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()I
    .locals 1

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method private getService()Landroid/os/IZtd;
    .locals 3

    .line 143
    nop

    .line 144
    const-string v0, "ztd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/os/IZtd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IZtd;

    move-result-object v0

    .line 145
    .local v0, "ztd":Landroid/os/IZtd;
    if-nez v0, :cond_0

    .line 146
    const-string v1, "ZeroTrustManager"

    const-string v2, "ztd service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    return-object v0
.end method

.method private static getServiceState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init.svc."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setSystemPropertyBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public isServiceRunning()Z
    .locals 2

    .line 101
    :try_start_0
    const-string v0, "running"

    const-string v1, "ztd"

    invoke-static {v1}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->getServiceState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 105
    .end local v0    # "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return v0
.end method

.method public startMonitoringDomains(ILjava/util/List;Ljava/util/List;Landroid/os/IZtdListener;)V
    .locals 3
    .param p1, "requestor"    # I
    .param p4, "listener"    # Landroid/os/IZtdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/IZtdListener;",
            ")V"
        }
    .end annotation

    .line 73
    .local p2, "allowedUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->getService()Landroid/os/IZtd;

    move-result-object v0

    .line 74
    .local v0, "service":Landroid/os/IZtd;
    if-eqz v0, :cond_2

    .line 76
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_1

    .line 77
    if-eqz p2, :cond_0

    .line 78
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/zt/ZeroTrustManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/knox/zt/ZeroTrustManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    :goto_0
    nop

    .line 80
    .local v1, "uids":[I
    invoke-interface {v0, p1, v1, p3, p4}, Landroid/os/IZtd;->startMonitoringDomains(I[ILjava/util/List;Landroid/os/IZtdListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v1    # "uids":[I
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 84
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 86
    :cond_2
    :goto_2
    return-void
.end method

.method public startMonitoringFiles(ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/IZtdListener;)V
    .locals 7
    .param p1, "requestor"    # I
    .param p5, "listener"    # Landroid/os/IZtdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/IZtdListener;",
            ")V"
        }
    .end annotation

    .line 44
    .local p2, "allowedUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->getService()Landroid/os/IZtd;

    move-result-object v1

    .line 45
    .local v1, "service":Landroid/os/IZtd;
    if-eqz v1, :cond_2

    .line 47
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    .line 49
    if-eqz p2, :cond_0

    .line 50
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/zt/ZeroTrustManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/knox/zt/ZeroTrustManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    goto :goto_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v0

    :goto_0
    nop

    .line 52
    .local v3, "uids":[I
    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "requestor":I
    .end local p3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p5    # "listener":Landroid/os/IZtdListener;
    .local v2, "requestor":I
    .local v4, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "listener":Landroid/os/IZtdListener;
    :try_start_3
    invoke-interface/range {v1 .. v6}, Landroid/os/IZtd;->startMonitoringFiles(I[ILjava/util/List;Ljava/util/List;Landroid/os/IZtdListener;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 54
    .end local v3    # "uids":[I
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v2    # "requestor":I
    .end local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "listener":Landroid/os/IZtdListener;
    .restart local p1    # "requestor":I
    .restart local p3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "listener":Landroid/os/IZtdListener;
    :catch_2
    move-exception v0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 55
    .end local p1    # "requestor":I
    .end local p3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p5    # "listener":Landroid/os/IZtdListener;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "requestor":I
    .restart local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "listener":Landroid/os/IZtdListener;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 47
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "requestor":I
    .end local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "listener":Landroid/os/IZtdListener;
    .restart local p1    # "requestor":I
    .restart local p3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "listener":Landroid/os/IZtdListener;
    :cond_1
    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 56
    .end local p1    # "requestor":I
    .end local p3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p5    # "listener":Landroid/os/IZtdListener;
    .restart local v2    # "requestor":I
    .restart local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "listener":Landroid/os/IZtdListener;
    :goto_2
    goto :goto_3

    .line 45
    .end local v2    # "requestor":I
    .end local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "listener":Landroid/os/IZtdListener;
    .restart local p1    # "requestor":I
    .restart local p3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "listener":Landroid/os/IZtdListener;
    :cond_2
    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 58
    .end local p1    # "requestor":I
    .end local p3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p5    # "listener":Landroid/os/IZtdListener;
    .restart local v2    # "requestor":I
    .restart local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "listener":Landroid/os/IZtdListener;
    :goto_3
    return-void
.end method

.method public startService()V
    .locals 2

    .line 113
    const-string v0, "persist.sys.knox.ztd"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method public startTracing(IIJLandroid/os/IZtdListener;)V
    .locals 7
    .param p1, "traceType"    # I
    .param p2, "uid"    # I
    .param p3, "period"    # J
    .param p5, "listener"    # Landroid/os/IZtdListener;

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->getService()Landroid/os/IZtd;

    move-result-object v1

    .line 122
    .local v1, "service":Landroid/os/IZtd;
    if-eqz v1, :cond_0

    .line 124
    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .end local p1    # "traceType":I
    .end local p2    # "uid":I
    .end local p3    # "period":J
    .end local p5    # "listener":Landroid/os/IZtdListener;
    .local v2, "traceType":I
    .local v3, "uid":I
    .local v4, "period":J
    .local v6, "listener":Landroid/os/IZtdListener;
    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/os/IZtd;->startTracing(IIJLandroid/os/IZtdListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 126
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v2    # "traceType":I
    .end local v3    # "uid":I
    .end local v4    # "period":J
    .end local v6    # "listener":Landroid/os/IZtdListener;
    .local p1, "traceType":I
    .restart local p2    # "uid":I
    .restart local p3    # "period":J
    .restart local p5    # "listener":Landroid/os/IZtdListener;
    :cond_0
    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 129
    .end local p1    # "traceType":I
    .end local p2    # "uid":I
    .end local p3    # "period":J
    .end local p5    # "listener":Landroid/os/IZtdListener;
    .restart local v2    # "traceType":I
    .restart local v3    # "uid":I
    .restart local v4    # "period":J
    .restart local v6    # "listener":Landroid/os/IZtdListener;
    :goto_0
    return-void
.end method

.method public stopMonitoringDomains(I)V
    .locals 2
    .param p1, "requestor"    # I

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->getService()Landroid/os/IZtd;

    move-result-object v0

    .line 90
    .local v0, "service":Landroid/os/IZtd;
    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IZtd;->stopMonitoringDomains(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopMonitoringFiles(I)V
    .locals 2
    .param p1, "requestor"    # I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->getService()Landroid/os/IZtd;

    move-result-object v0

    .line 62
    .local v0, "service":Landroid/os/IZtd;
    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IZtd;->stopMonitoringFiles(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 69
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopService()V
    .locals 2

    .line 117
    const-string v0, "persist.sys.knox.ztd"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method public stopTracing(II)V
    .locals 2
    .param p1, "traceType"    # I
    .param p2, "uid"    # I

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/ZeroTrustManager;->getService()Landroid/os/IZtd;

    move-result-object v0

    .line 133
    .local v0, "service":Landroid/os/IZtd;
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/IZtd;->stopTracing(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 140
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
