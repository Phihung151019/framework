.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
.super Ljava/lang/Object;
.source "BleAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleAdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIncludeDeviceName:Z

.field private mManufacturerId:I

.field private mManufacturerSpecificData:[B

.field private mServiceData:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    return-void
.end method


# virtual methods
.method public addManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .locals 3
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerSpecificData"    # [B

    .line 302
    if-ltz p1, :cond_1

    .line 305
    if-eqz p2, :cond_0

    .line 308
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerId:I

    .line 309
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerSpecificData:[B

    .line 310
    return-object p0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manufacturerSpecificData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid manufacturerId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .line 280
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 284
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceData:[B

    .line 285
    return-object p0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceData Uuid or serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .locals 2
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .line 264
    if-eqz p1, :cond_0

    .line 267
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 268
    return-object p0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service Uuids are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/samsung/android/mcf/ble/BleAdvertiseData;
    .locals 8

    .line 330
    new-instance v0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerId:I

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerSpecificData:[B

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceData:[B

    iget-boolean v6, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;-><init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZLcom/samsung/android/mcf/ble/BleAdvertiseData$1;)V

    return-object v0
.end method

.method public setIncludeDeviceName(Z)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .locals 0
    .param p1, "includeDeviceName"    # Z

    .line 320
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    .line 321
    return-object p0
.end method
