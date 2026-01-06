.class Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;
.super Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;
.source "FileTransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransferService;->addEventListener(Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
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

    .line 498
    iput-object p2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 530
    .local p2, "transferIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 531
    .local v0, "setTransferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 532
    return-void
.end method

.method public onDeliveryInfoChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p4, "state"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .param p5, "reasonCode"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "chatId":Ljava/lang/String;
    .end local p2    # "transferId":Ljava/lang/String;
    .end local p3    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .end local p4    # "state":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .end local p5    # "reasonCode":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .local v1, "chatId":Ljava/lang/String;
    .local v2, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .local v3, "transferId":Ljava/lang/String;
    .local v4, "state":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .local v5, "reasonCode":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 517
    return-void
.end method

.method public onDeliveryInfoChanged1(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p4, "state"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .param p5, "reasonCode"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "chatId":Ljava/lang/String;
    .end local p2    # "transferId":Ljava/lang/String;
    .end local p3    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .end local p4    # "state":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .end local p5    # "reasonCode":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .local v1, "chatId":Ljava/lang/String;
    .local v2, "transferId":Ljava/lang/String;
    .local v3, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .local v4, "state":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .local v5, "reasonCode":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onDeliveryInfoChanged1(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 543
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "chatId":Ljava/lang/String;
    .end local p2    # "transferId":Ljava/lang/String;
    .end local p3    # "currentSize":J
    .end local p5    # "totalSize":J
    .local v1, "chatId":Ljava/lang/String;
    .local v2, "transferId":Ljava/lang/String;
    .local v3, "currentSize":J
    .local v5, "totalSize":J
    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 525
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 506
    return-void
.end method
