.class public Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;
.super Ljava/lang/Object;
.source "EndpointMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EndpointMonitor"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;
    .locals 1

    .line 23
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;

    move-result-object v0

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/dar/IDarManagerService;
    .locals 3

    .line 61
    nop

    .line 62
    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    .line 63
    .local v0, "darService":Lcom/samsung/android/knox/dar/IDarManagerService;
    if-nez v0, :cond_0

    .line 64
    const-string v1, "EndpointMonitor"

    const-string v2, "dar service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-object v0
.end method


# virtual methods
.method public startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "uid"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 31
    const/4 v0, -0x6

    .line 32
    .local v0, "result":I
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;->getService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v1

    .line 33
    .local v1, "service":Lcom/samsung/android/knox/dar/IDarManagerService;
    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/IDarManagerService;->startTracing(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 40
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method public startTracing(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "uid"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;->startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result v0

    return v0
.end method

.method public stopMonitoring(II)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "uid"    # I

    .line 48
    const/4 v0, -0x6

    .line 49
    .local v0, "result":I
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;->getService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v1

    .line 50
    .local v1, "service":Lcom/samsung/android/knox/dar/IDarManagerService;
    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/dar/IDarManagerService;->stopTracing(II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 57
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method public stopTracing(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "uid"    # I

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;->stopMonitoring(II)I

    move-result v0

    return v0
.end method
