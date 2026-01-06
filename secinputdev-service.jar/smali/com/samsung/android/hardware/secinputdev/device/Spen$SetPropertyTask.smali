.class final Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;
.super Ljava/lang/Object;
.source "Spen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/device/Spen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetPropertyTask"
.end annotation


# instance fields
.field final command:Ljava/lang/String;

.field final property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

.field final result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/device/Spen;

.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/device/Spen;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 0
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;
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

    .line 145
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Spen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->time:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 148
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->command:Ljava/lang/String;

    .line 149
    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/device/Spen;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
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

    .line 138
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Spen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->time:Ljava/lang/String;

    .line 140
    sget-object p1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 141
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->command:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Spen;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/Spen;->waitUntilRecovery()V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Spen;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/device/Spen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetPropertyTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->result:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Spen;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/device/Spen;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Spen;

    iget v2, v2, Lcom/samsung/android/hardware/secinputdev/device/Spen;->devid:I

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->command:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->this$0:Lcom/samsung/android/hardware/secinputdev/device/Spen;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/device/Spen;->removeTask(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] SetPropertyTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->property:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Spen$SetPropertyTask;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
