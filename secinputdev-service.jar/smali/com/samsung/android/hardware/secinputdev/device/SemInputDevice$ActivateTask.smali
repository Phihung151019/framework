.class final Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;
.super Ljava/lang/Object;
.source "SemInputDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivateTask"
.end annotation


# instance fields
.field final enable:I

.field final isEarly:Z

.field final result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;IZLcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 0
    .param p2, "enable"    # I
    .param p3, "isEarly"    # Z
    .param p4, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->time:Ljava/lang/String;

    .line 377
    iput p2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->enable:I

    .line 378
    iput-boolean p3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->isEarly:Z

    .line 379
    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 380
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 384
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->waitUntilRecovery()V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivateTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->enable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->isEarly:Z

    if-eqz v2, :cond_0

    const-string v2, ",0"

    goto :goto_0

    :cond_0
    const-string v2, ",1"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget v2, v2, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->devid:I

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->enable:I

    iget-boolean v4, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->isEarly:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->activate(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(I)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->-$$Nest$fputrunnableResult(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->removeTask(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ActivateTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->enable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;->isEarly:Z

    if-eqz v1, :cond_0

    const-string v1, ",0"

    goto :goto_0

    :cond_0
    const-string v1, ",1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
