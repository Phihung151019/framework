.class final Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;
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
    name = "SetPropertyTask"
.end annotation


# instance fields
.field final command:Ljava/lang/String;

.field final result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/device/Touch;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
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

    .line 180
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->time:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->command:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 184
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->waitUntilRecovery()V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/device/Touch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetPropertyTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/device/Touch;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget v2, v2, Lcom/samsung/android/hardware/secinputdev/device/Touch;->devid:I

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->command:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(I)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->removeTask(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] SetPropertyTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Touch$SetPropertyTask;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
