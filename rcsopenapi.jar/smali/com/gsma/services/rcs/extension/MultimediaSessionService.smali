.class public final Lcom/gsma/services/rcs/extension/MultimediaSessionService;
.super Lcom/gsma/services/rcs/RcsService;
.source "MultimediaSessionService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultimediaSessionService"


# instance fields
.field private api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

.field private apiConnection:Landroid/content/ServiceConnection;

.field private final mapForMMSListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;",
            "Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mapForMSSListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;",
            "Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMMSListener:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMSSListener:Ljava/util/Map;

    .line 59
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 44
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 44
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 44
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 44
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 303
    move-object v0, p1

    .line 304
    .local v0, "callBackListener":Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
    :try_start_0
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V

    .line 324
    .local v1, "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->addEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 325
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMMSListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    nop

    .line 332
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
    .end local v1    # "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public addEventListener(Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 363
    move-object v0, p1

    .line 364
    .local v0, "callBackListener":Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;
    :try_start_0
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V

    .line 378
    .local v1, "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->addEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 379
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMSSListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    nop

    .line 386
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;
    .end local v1    # "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 91
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    const-string v2, "MultimediaSessionService"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    .line 96
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v4, "com.sec.imsservice"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->ctx:Landroid/content/Context;

    .line 98
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "packages"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    .line 95
    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 99
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 92
    .end local v1    # "result":Z
    :cond_1
    :goto_0
    const-string v1, "TAPI is not available or not activated!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    const-string v0, "MultimediaSessionService"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v0

    .line 167
    .local v0, "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 170
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 172
    .end local v0    # "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMessagingSessions(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getMessagingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 144
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    .line 145
    invoke-static {v3}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V

    .line 146
    .local v4, "session":Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "session":Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    goto :goto_0

    .line 148
    :cond_0
    return-object v0

    .line 149
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;>;"
    .end local v1    # "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v0

    .line 215
    .local v0, "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 218
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 220
    .end local v0    # "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getStreamingSessions(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 189
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getStreamingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 192
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    .line 193
    invoke-static {v3}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V

    .line 194
    .local v4, "session":Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "session":Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    goto :goto_0

    .line 196
    :cond_0
    return-object v0

    .line 197
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;>;"
    .end local v1    # "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateMessagingSession serviceId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultimediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "acceptType":[Ljava/lang/String;
    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "acceptWrappedType":[Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    move-result-object v2

    return-object v2
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .locals 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "acceptType"    # [Ljava/lang/String;
    .param p4, "acceptWrappedType"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateMessagingSession serviceId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultimediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " acceptType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    if-eqz p4, :cond_1

    array-length v2, p4

    if-lez v2, :cond_1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " acceptWrappedType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_3

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v0

    .line 282
    .local v0, "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    if-eqz v0, :cond_2

    .line 283
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 285
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 287
    .end local v0    # "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v0

    .line 247
    .local v0, "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    if-eqz v0, :cond_0

    .line 248
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 250
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 252
    .end local v0    # "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMMSListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    .line 343
    .local v0, "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    if-eqz v0, :cond_0

    .line 344
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->removeEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMMSListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    nop

    .line 353
    .end local v0    # "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMSSListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    .line 397
    .local v0, "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->removeEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMSSListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    nop

    .line 407
    .end local v0    # "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "content"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    nop

    .line 432
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "api"    # Landroid/os/IInterface;

    .line 439
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 441
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    .line 442
    return-void
.end method

.method public setInactivityTimeout(J)V
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->setInactivityTimeout(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    nop

    .line 419
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
