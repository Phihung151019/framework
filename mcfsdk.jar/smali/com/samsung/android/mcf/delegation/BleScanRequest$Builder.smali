.class public final Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
.super Ljava/lang/Object;
.source "BleScanRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/delegation/BleScanRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final requestId:I

.field private scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

.field private scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

.field private final screenOffFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final screenOnFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestId"    # I

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->packageName:Ljava/lang/String;

    .line 501
    iput p2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->requestId:I

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOnFilters:Ljava/util/ArrayList;

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOffFilters:Ljava/util/ArrayList;

    .line 504
    return-void
.end method


# virtual methods
.method public addScreenOffScanFilter(Lcom/samsung/android/mcf/ble/BleScanFilter;)Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    .locals 1
    .param p1, "filter"    # Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 538
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    return-object p0
.end method

.method public addScreenOnScanFilter(Lcom/samsung/android/mcf/ble/BleScanFilter;)Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    .locals 1
    .param p1, "filter"    # Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 527
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    return-object p0
.end method

.method public build()Lcom/samsung/android/mcf/delegation/BleScanRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 560
    iget v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->requestId:I

    if-ltz v0, :cond_0

    .line 563
    new-instance v1, Lcom/samsung/android/mcf/delegation/BleScanRequest;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->requestId:I

    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOnFilters:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->screenOffFilters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    iget-object v7, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/mcf/delegation/BleScanRequest;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/delegation/BleScanAction;)V

    return-object v1

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request id should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanAction(Lcom/samsung/android/mcf/delegation/BleScanAction;)Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    .locals 0
    .param p1, "action"    # Lcom/samsung/android/mcf/delegation/BleScanAction;

    .line 549
    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    .line 550
    return-object p0
.end method

.method public setScanSettings(Lcom/samsung/android/mcf/ble/BleScanSettings;)Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    .locals 2
    .param p1, "settings"    # Lcom/samsung/android/mcf/ble/BleScanSettings;

    .line 513
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getScanMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    .line 517
    return-object p0

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ONLY allows SCAN_MODE_LOW_POWER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
