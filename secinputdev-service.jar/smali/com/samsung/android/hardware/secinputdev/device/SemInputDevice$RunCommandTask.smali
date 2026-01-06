.class final Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;
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
    name = "RunCommandTask"
.end annotation


# instance fields
.field final command:Ljava/lang/String;

.field final result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 0
    .param p2, "command"    # Ljava/lang/String;
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

    .line 304
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->time:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->command:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 308
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->waitUntilRecovery()V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RunCommandTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget v2, v2, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->devid:I

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->command:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->runCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->removeTask(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] RunCommandTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
