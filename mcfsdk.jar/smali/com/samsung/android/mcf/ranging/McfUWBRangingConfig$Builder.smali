.class public final Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
.super Ljava/lang/Object;
.source "McfUWBRangingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private antennaPairSelection:I

.field private authPayloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private authType:I

.field private bleSID:I

.field private dataEncryptionType:I

.field private deviceRole:I

.field private deviceType:I

.field private enableDualAoa:Z

.field private maxRrRetry:I

.field private needScreenOffRanging:Z

.field private needToReportSubscribersRanging:Z

.field private rangingInterval:I

.field private targetDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    .line 381
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    .line 382
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    .line 383
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    .line 384
    iput-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    .line 385
    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    .line 386
    iput-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    .line 387
    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    .line 388
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    .line 389
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    .line 390
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    .line 392
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
    .locals 18

    .line 587
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    if-eqz v1, :cond_4

    .line 591
    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_3

    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    const/16 v2, 0x7530

    if-gt v1, v2, :cond_3

    .line 596
    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    if-nez v1, :cond_0

    .line 597
    const v1, 0x1d4c0

    iget v2, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    div-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    .line 599
    :cond_0
    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 602
    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    if-eq v1, v2, :cond_1

    .line 605
    new-instance v3, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;

    iget v4, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    iget v5, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    iget v6, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    iget-object v7, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    iget-boolean v8, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    iget-boolean v9, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    iget-object v10, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    iget-boolean v11, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    iget v12, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    iget v13, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    iget v14, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    iget v15, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-direct/range {v3 .. v17}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;-><init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIIILcom/samsung/android/mcf/ranging/McfUWBRangingConfig$1;)V

    return-object v3

    .line 603
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "setDeviceType is Requirement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "setDeviceRole is Requirement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ranging Interval value should be between 100 and 30000."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "setRangingData is Requirement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAntennaPairSelection(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 2
    .param p1, "antennaPairSelection"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 419
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    .line 420
    return-object p0

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid antennaPairSelection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthPayloads(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    .line 443
    .local p1, "authPayloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    .line 447
    return-object p0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authPayloads is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthType(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 0
    .param p1, "authType"    # I

    .line 431
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    .line 432
    return-object p0
.end method

.method public setDataEncryption(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 2
    .param p1, "dataEncryptionType"    # I

    .line 557
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataEncryptionType is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    .line 561
    return-object p0
.end method

.method public setDeviceRole(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 3
    .param p1, "deviceRole"    # I

    .line 565
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid deviceRole : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    .line 569
    return-object p0
.end method

.method public setDeviceType(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 3
    .param p1, "deviceType"    # I

    .line 573
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    .line 577
    return-object p0
.end method

.method public setEnableDualAoa(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 0
    .param p1, "enableDualAoa"    # Z

    .line 518
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    .line 519
    return-object p0
.end method

.method public setMaxRrRetry(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 2
    .param p1, "maxRrRetry"    # I

    .line 542
    if-lez p1, :cond_0

    .line 545
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    .line 546
    return-object p0

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRrRetry must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRangingAppId(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 2
    .param p1, "appId"    # I

    .line 402
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    .line 403
    return-object p0
.end method

.method public setRangingInterval(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 0
    .param p1, "rangingInterval"    # I

    .line 530
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    .line 531
    return-object p0
.end method

.method public setReportSubscribersRanging(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 0
    .param p1, "needToReportSubscribersRanging"    # Z

    .line 458
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    .line 459
    return-object p0
.end method

.method public setScreenOffScan(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 0
    .param p1, "needScreenOffRanging"    # Z

    .line 470
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    .line 471
    return-object p0
.end method

.method public setTargetBluetoothDevice(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    .line 482
    .local p1, "bluetoothDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    .line 486
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 487
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 489
    :cond_0
    return-object p0

    .line 483
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bluetoothDevices is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetMcfDevice(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/McfDevice;",
            ">;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    .line 500
    .local p1, "mcfDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/McfDevice;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    .line 504
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfDevice;

    .line 505
    .local v1, "device":Lcom/samsung/android/mcf/McfDevice;
    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v1    # "device":Lcom/samsung/android/mcf/McfDevice;
    goto :goto_0

    .line 507
    :cond_0
    return-object p0

    .line 501
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mcfDevices is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
