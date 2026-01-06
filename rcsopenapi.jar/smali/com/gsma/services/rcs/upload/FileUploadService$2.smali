.class Lcom/gsma/services/rcs/upload/FileUploadService$2;
.super Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;
.source "FileUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/upload/FileUploadService;->addEventListener(Lcom/gsma/services/rcs/upload/FileUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/upload/FileUploadListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/upload/FileUploadService;Lcom/gsma/services/rcs/upload/FileUploadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gsma/services/rcs/upload/FileUploadService;
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

    .line 297
    iput-object p2, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->val$callBackListener:Lcom/gsma/services/rcs/upload/FileUploadListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "currentSize"    # J
    .param p4, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->val$callBackListener:Lcom/gsma/services/rcs/upload/FileUploadListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "uploadId":Ljava/lang/String;
    .end local p2    # "currentSize":J
    .end local p4    # "totalSize":J
    .local v1, "uploadId":Ljava/lang/String;
    .local v2, "currentSize":J
    .local v4, "totalSize":J
    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onProgressUpdate(Ljava/lang/String;JJ)V

    .line 312
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V
    .locals 1
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/gsma/services/rcs/upload/FileUpload$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->val$callBackListener:Lcom/gsma/services/rcs/upload/FileUploadListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V

    .line 306
    return-void
.end method

.method public onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
    .locals 1
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->val$callBackListener:Lcom/gsma/services/rcs/upload/FileUploadListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V

    .line 301
    return-void
.end method
