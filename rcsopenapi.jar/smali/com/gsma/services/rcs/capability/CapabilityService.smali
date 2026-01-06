.class public final Lcom/gsma/services/rcs/capability/CapabilityService;
.super Lcom/gsma/services/rcs/RcsService;
.source "CapabilityService.java"


# static fields
.field public static final EXTENSION_MIME_TYPE:Ljava/lang/String; = "com.gsma.services.rcs"

.field public static final INTENT_EXTENSIONS:Ljava/lang/String; = "com.gsma.services.rcs.capability.EXTENSION"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/capability/ICapabilityService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    .line 117
    new-instance v0, Lcom/gsma/services/rcs/capability/CapabilityService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/capability/CapabilityService$1;-><init>(Lcom/gsma/services/rcs/capability/CapabilityService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/capability/CapabilityService;

    .line 44
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/capability/CapabilityService;

    .line 44
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/capability/CapabilityService;

    .line 44
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/capability/CapabilityService;

    .line 44
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addCapabilitiesListener(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/capability/CapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : addCapabilitiesListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    nop

    .line 244
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public addCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/gsma/services/rcs/capability/CapabilitiesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 273
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/ContactId;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_1

    .line 275
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : addCapabilitiesListener(Set<String> contacts)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 277
    .local v0, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/contact/ContactId;

    .line 279
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v2, v1, p2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->addContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    goto :goto_0

    .line 283
    .end local v0    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :cond_0
    nop

    .line 287
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 80
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/capability/ICapabilityService;

    .line 85
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    .line 84
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 89
    .local v1, "bSuc":Z
    sget-object v2, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

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

    .line 90
    return-void

    .line 81
    .end local v1    # "bSuc":Z
    :cond_1
    :goto_0
    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getContactCapabilities()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getMyCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    return-object v2

    .line 150
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/gsma/services/rcs/capability/CapabilityService;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/gsma/services/rcs/capability/CapabilityService;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    throw v2

    .line 153
    .end local v0    # "origId":J
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/capability/CapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : removeCapabilitiesListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .line 262
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/gsma/services/rcs/capability/CapabilitiesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 298
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/ContactId;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_1

    .line 300
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : removeCapabilitiesListener(Set<String> contacts)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 302
    .local v0, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/contact/ContactId;

    .line 304
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v2, v1, p2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->removeContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    goto :goto_0

    .line 308
    .end local v0    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :cond_0
    nop

    .line 312
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public requestContactCapabilities(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 198
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/ContactId;>;"
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : requestContactCapabilities(Set<String> contacts)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    .local v0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v1, :cond_1

    .line 215
    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : requestContactCapabilities(String contact)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-interface {v1, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1

    .line 200
    .end local v0    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_4

    .line 202
    :try_start_1
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : requestAllContactsCapabilities()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestAllContactsCapabilities()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    nop

    .line 226
    :cond_3
    return-void

    .line 204
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "api"    # Landroid/os/IInterface;

    .line 109
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/capability/ICapabilityService;

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    .line 112
    return-void
.end method

.method public setUserActive(Z)V
    .locals 3
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->setUserActive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .line 330
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
