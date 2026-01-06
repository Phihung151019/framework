.class final Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;
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
    name = "GetPropertyTask"
.end annotation


# instance fields
.field final property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field final result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 0
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
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

    .line 261
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->time:Ljava/lang/String;

    .line 263
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 264
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 265
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->waitUntilRecovery()V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetPropertyTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    iget v2, v2, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->devid:I

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->removeTask(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] GetPropertyTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
