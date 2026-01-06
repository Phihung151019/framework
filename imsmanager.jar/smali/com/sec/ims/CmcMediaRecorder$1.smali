.class Lcom/sec/ims/CmcMediaRecorder$1;
.super Lcom/sec/ims/cmc/ICmcRecordingListener$Stub;
.source "CmcMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/CmcMediaRecorder;-><init>(Lcom/sec/ims/IImsService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/CmcMediaRecorder;


# direct methods
.method constructor <init>(Lcom/sec/ims/CmcMediaRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-direct {p0}, Lcom/sec/ims/cmc/ICmcRecordingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 3

    .line 93
    invoke-static {}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICmcRecordingListener onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fputmState(Lcom/sec/ims/CmcMediaRecorder;I)V

    .line 97
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;->onError(Lcom/sec/ims/CmcMediaRecorder;II)V

    :cond_0
    return-void
.end method

.method public onInfo(II)V
    .locals 3

    .line 86
    invoke-static {}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICmcRecordingListener onInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;->onInfo(Lcom/sec/ims/CmcMediaRecorder;II)V

    :cond_0
    return-void
.end method
