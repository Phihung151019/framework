.class public final Lcom/gsma/services/rcs/filetransfer/FileTransferService;
.super Lcom/gsma/services/rcs/RcsService;
.source "FileTransferService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

.field private apiConnection:Landroid/content/ServiceConnection;

.field private final mapForGroupListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;",
            "Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mapForOneToOneListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;",
            "Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForOneToOneListener:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForGroupListener:Ljava/util/Map;

    .line 128
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 56
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 56
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 56
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 56
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 496
    move-object v0, p1

    .line 497
    .local v0, "callBackListener":Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;
    :try_start_0
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V

    .line 545
    .local v1, "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 546
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForGroupListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    nop

    .line 553
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;
    .end local v1    # "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public addEventListener(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 426
    move-object v0, p1

    .line 427
    .local v0, "callBackListener":Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;
    :try_start_0
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V

    .line 453
    .local v1, "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 454
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    nop

    .line 461
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;
    .end local v1    # "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public clearFileTransferDeliveryExpiration(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 720
    .local p1, "transferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 722
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 723
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->clearFileTransferDeliveryExpiration(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 730
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 91
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    .line 96
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->ctx:Landroid/content/Context;

    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    .line 95
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 100
    .local v1, "bSuc":Z
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to FT service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 92
    .end local v1    # "bSuc":Z
    :cond_1
    :goto_0
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public deleteFileTransfer(Ljava/lang/String;)V
    .locals 3
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteFileTransfer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    nop

    .line 665
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGroupFileTransfers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteGroupFileTransfers()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    nop

    .line 609
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGroupFileTransfers(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteGroupFileTransfersByChatId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    nop

    .line 647
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteOneToOneFileTransfers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteOneToOneFileTransfers()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    nop

    .line 592
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteOneToOneFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteOneToOneFileTransfersByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    nop

    .line 628
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    move-result-object v0

    .line 404
    .local v0, "ftInf":Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    if-eqz v0, :cond_0

    .line 405
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 407
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 409
    .end local v0    # "ftInf":Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 3
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v0

    .line 183
    .local v0, "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 186
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 188
    .end local v0    # "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFileTransfers()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/filetransfer/FileTransfer;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getFileTransfers()Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, "ftList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 160
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-static {v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V

    .line 161
    .local v4, "ft":Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "ft":Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    goto :goto_0

    .line 163
    :cond_0
    return-object v0

    .line 164
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/filetransfer/FileTransfer;>;"
    .end local v1    # "ftList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/Set;
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v0

    .line 680
    .local v0, "ftList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 681
    .end local v0    # "ftList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowedToTransferFileToGroupChat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->canTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public markFileTransferAsRead(Ljava/lang/String;)V
    .locals 3
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->markFileTransferAsRead(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    nop

    .line 392
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public markUndeliveredFileTransfersAsProcessed(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    .local p1, "transferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 701
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 702
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->markUndeliveredFileTransfersAsProcessed(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 709
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForGroupListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    .line 565
    .local v0, "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    if-eqz v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForGroupListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    nop

    .line 575
    .end local v0    # "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    .line 475
    .local v0, "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    if-eqz v0, :cond_0

    .line 476
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    nop

    .line 485
    .end local v0    # "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "api"    # Landroid/os/IInterface;

    .line 120
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    .line 123
    return-void
.end method

.method public transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v0

    .line 292
    .local v0, "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 295
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 297
    .end local v0    # "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "disposition"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .param p4, "attachFileicon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_2

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    .line 260
    if-nez p3, :cond_0

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 259
    :goto_0
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v0

    .line 262
    .local v0, "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    if-eqz v0, :cond_1

    .line 263
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 265
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 267
    .end local v0    # "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "attachFileIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    move-result-object v0

    return-object v0
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "disposition"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .param p4, "attachFileIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_2

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    .line 361
    if-nez p3, :cond_0

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 360
    :goto_0
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v0

    .line 363
    .local v0, "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    if-eqz v0, :cond_1

    .line 364
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 366
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 368
    .end local v0    # "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "attachFileIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    move-result-object v0

    return-object v0
.end method
