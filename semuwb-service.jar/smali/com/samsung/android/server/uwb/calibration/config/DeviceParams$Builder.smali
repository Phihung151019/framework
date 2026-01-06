.class public Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
.super Ljava/lang/Object;
.source "DeviceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public FoV:D

.field public beta1:D

.field public beta2:D

.field public fpFilteringMaxDistance:I

.field public fpFilteringThreshold:I

.field public isAoa1Flipped:Z

.field public isAoa2Flipped:Z

.field public xIO:D

.field public yIO:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;
    .locals 15

    .line 105
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;

    iget-wide v1, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->xIO:D

    iget-wide v3, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->yIO:D

    iget-wide v5, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->beta1:D

    iget-boolean v7, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->isAoa1Flipped:Z

    iget-wide v8, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->beta2:D

    iget-boolean v10, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->isAoa2Flipped:Z

    iget-wide v11, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->FoV:D

    iget v13, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->fpFilteringThreshold:I

    iget v14, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->fpFilteringMaxDistance:I

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams;-><init>(DDDZDZDII)V

    return-object v0
.end method

.method public setBeta1(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 70
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->beta1:D

    .line 71
    return-object p0
.end method

.method public setBeta2(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 80
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->beta2:D

    .line 81
    return-object p0
.end method

.method public setFov(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 90
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->FoV:D

    .line 91
    return-object p0
.end method

.method public setFpFilteringMaxDistance(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->fpFilteringMaxDistance:I

    .line 101
    return-object p0
.end method

.method public setFpFilteringThreshold(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->fpFilteringThreshold:I

    .line 96
    return-object p0
.end method

.method public setIsAoa1Flipped(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 75
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->isAoa1Flipped:Z

    .line 76
    return-object p0
.end method

.method public setIsAoa2Flipped(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 85
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->isAoa2Flipped:Z

    .line 86
    return-object p0
.end method

.method public setXIO(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 60
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->xIO:D

    .line 61
    return-object p0
.end method

.method public setYIO(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 65
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/uwb/calibration/config/DeviceParams$Builder;->yIO:D

    .line 66
    return-object p0
.end method
