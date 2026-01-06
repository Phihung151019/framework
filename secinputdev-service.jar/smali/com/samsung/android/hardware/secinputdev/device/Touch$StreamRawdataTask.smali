.class final Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;
.super Ljava/lang/Object;
.source "Touch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/device/Touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StreamRawdataTask"
.end annotation


# instance fields
.field final mode:I

.field final result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/device/Touch;ILcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 0
    .param p2, "mode"    # I
    .param p3, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->time:Ljava/lang/String;

    .line 233
    iput p2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->mode:I

    .line 234
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 235
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->waitUntilRecovery()V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StreamRawdataTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/device/Touch;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget v2, v2, Lcom/samsung/android/hardware/secinputdev/device/Touch;->devid:I

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->mode:I

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->streamRawdata(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(I)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->removeTask(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] StreamRawdataTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$StreamRawdataTask;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
