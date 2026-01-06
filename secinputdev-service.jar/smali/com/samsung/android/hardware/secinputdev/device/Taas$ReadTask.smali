.class final Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;
.super Ljava/lang/Object;
.source "Taas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/device/Taas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadTask"
.end annotation


# instance fields
.field final result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/device/Taas;

.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/device/Taas;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 0
    .param p2, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->time:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/Taas;->waitUntilRecovery()V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/device/Taas;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadTask: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/device/Taas;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->readTaas()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/device/Taas;->removeTask(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ReadTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
