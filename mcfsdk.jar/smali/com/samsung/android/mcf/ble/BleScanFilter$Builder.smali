.class public final Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
.super Ljava/lang/Object;
.source "BleScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final LEN_IRK_OCTETS:I = 0x10


# instance fields
.field private mAddressType:I

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mIrk:[B

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mPassiveScan:Z

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    return-void
.end method

.method private setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "irk"    # [B

    .line 527
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    if-ltz p2, :cond_2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    .line 537
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 539
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->access$000(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters for irk scan"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 545
    iput p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    .line 546
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    .line 547
    return-object p0

    .line 534
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'addressType\' is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid device address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ble/BleScanFilter;
    .locals 18

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    if-eqz v1, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "At least one filter must be set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :cond_1
    :goto_0
    new-instance v3, Lcom/samsung/android/mcf/ble/BleScanFilter;

    iget-object v4, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v7, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v8, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v9, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    iget-object v10, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    iget v11, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    iget-object v12, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    iget-object v13, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    iget-boolean v14, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mPassiveScan:Z

    iget v15, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    const/16 v17, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v3 .. v17}, Lcom/samsung/android/mcf/ble/BleScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[BLcom/samsung/android/mcf/ble/BleScanFilter$1;)V

    return-object v3
.end method

.method public enablePassiveScan()Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 1

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mPassiveScan:Z

    .line 707
    return-object p0
.end method

.method public setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceAddress(Ljava/lang/String;I)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceAddress(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "irk"    # [B

    .line 500
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    array-length v0, p3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 504
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'irk\' is invalid length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 438
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    .line 439
    return-object p0
.end method

.method public setManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B

    .line 650
    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    .line 654
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    .line 656
    return-object p0
.end method

.method public setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B
    .param p3, "manufacturerDataMask"    # [B

    .line 676
    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    :goto_0
    if-eqz p3, :cond_4

    .line 680
    if-eqz p2, :cond_3

    .line 686
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 687
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_4
    :goto_1
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    .line 692
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    .line 693
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    .line 694
    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .line 593
    if-eqz p1, :cond_0

    .line 596
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 597
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    .line 599
    return-object p0

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B
    .param p3, "serviceDataMask"    # [B

    .line 618
    if-eqz p1, :cond_3

    .line 621
    if-eqz p3, :cond_2

    .line 622
    if-eqz p2, :cond_1

    .line 628
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for service data and service data mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceData is null while serviceDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 634
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    .line 635
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    .line 636
    return-object p0

    .line 619
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 1
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .line 557
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 559
    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .locals 2
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p2, "uuidMask"    # Landroid/os/ParcelUuid;

    .line 575
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid is null while uuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 579
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 580
    return-object p0
.end method
