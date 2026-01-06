.class Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;
.super Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;
.source "FileTransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransferService;->addEventListener(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 428
    iput-object p2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 2
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    .local p2, "transferIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 450
    .local v0, "setTransferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    .line 451
    return-void
.end method

.method public onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .end local p2    # "transferId":Ljava/lang/String;
    .end local p3    # "currentSize":J
    .end local p5    # "totalSize":J
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .local v2, "transferId":Ljava/lang/String;
    .local v3, "currentSize":J
    .local v5, "totalSize":J
    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 444
    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    .locals 1
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 436
    return-void
.end method
