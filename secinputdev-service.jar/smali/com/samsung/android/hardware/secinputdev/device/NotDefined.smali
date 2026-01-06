.class public Lcom/samsung/android/hardware/secinputdev/device/NotDefined;
.super Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
.source "NotDefined.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    const/4 v0, 0x0

    const-string v1, "NG"

    const-string v2, "NotDefined"

    invoke-direct {p0, v2, v0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/NotDefined;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/device/NotDefined;->devid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
