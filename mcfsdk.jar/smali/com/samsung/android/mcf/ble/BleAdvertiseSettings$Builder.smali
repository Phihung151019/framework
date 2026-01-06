.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
.super Ljava/lang/Object;
.source "BleAdvertiseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCustomTxPower:I

.field private mInterval:I

.field private mIsConnectable:Z

.field private mTimeout:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mInterval:I

    .line 220
    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mIsConnectable:Z

    .line 222
    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTimeout:I

    .line 223
    const/16 v0, -0x33

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mCustomTxPower:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;
    .locals 7

    .line 320
    new-instance v0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mInterval:I

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTxPowerLevel:I

    iget-boolean v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mIsConnectable:Z

    iget v4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTimeout:I

    iget v5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mCustomTxPower:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;-><init>(IIZIILcom/samsung/android/mcf/ble/BleAdvertiseSettings$1;)V

    return-object v0
.end method

.method public setAdvertiseInterval(I)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .locals 3
    .param p1, "interval"    # I

    .line 235
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 238
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mInterval:I

    .line 239
    return-object p0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectable(Z)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .locals 0
    .param p1, "connectable"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mIsConnectable:Z

    .line 274
    return-object p0
.end method

.method public setCustomTxPower(I)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .locals 3
    .param p1, "txPowerValue"    # I

    .line 305
    const/16 v0, -0x32

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    .line 309
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mCustomTxPower:I

    .line 310
    return-object p0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tx power value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .locals 2
    .param p1, "timeout"    # I

    .line 287
    if-ltz p1, :cond_0

    const v0, 0x5265c00

    if-gt p1, v0, :cond_0

    .line 290
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTimeout:I

    .line 291
    return-object p0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTxPowerLevel(I)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .locals 3
    .param p1, "txPowerLevel"    # I

    .line 254
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 258
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 259
    return-object p0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tx power level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
