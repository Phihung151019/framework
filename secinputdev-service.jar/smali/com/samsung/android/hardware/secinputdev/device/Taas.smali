.class public Lcom/samsung/android/hardware/secinputdev/device/Taas;
.super Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
.source "Taas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;,
        Lcom/samsung/android/hardware/secinputdev/device/Taas$WriteTask;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "devid"    # I

    .line 13
    const/4 v0, 0x0

    const-string v1, "NG"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public read()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    .line 23
    .local v0, "result":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/secinputdev/device/Taas$ReadTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/Taas;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/device/Taas;->runAndWaitOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/device/Taas;->devid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;)I
    .locals 2
    .param p1, "word"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    .line 52
    .local v0, "result":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/device/Taas$WriteTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/device/Taas$WriteTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/Taas;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/device/Taas;->runAndWaitOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->getInteger()I

    move-result v1

    return v1
.end method
