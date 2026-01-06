.class public Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;
.super Ljava/lang/Object;
.source "DeviceParams.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceParams"


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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public set(DDDZDZDII)V
    .locals 16
    .param p1, "xIO_"    # D
    .param p3, "yIO_"    # D
    .param p5, "beta1_"    # D
    .param p7, "isAoa1Flipped_"    # Z
    .param p8, "beta2_"    # D
    .param p10, "isAoa2Flipped_"    # Z
    .param p11, "FoV_"    # D
    .param p13, "fpFilteringThreshold_"    # I
    .param p14, "fpFilteringMaxDistance_"    # I

    .line 27
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->xIO:D

    .line 28
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->yIO:D

    .line 29
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->beta1:D

    .line 30
    move/from16 v7, p7

    iput-boolean v7, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->isAoa1Flipped:Z

    .line 31
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->beta2:D

    .line 32
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->isAoa2Flipped:Z

    .line 33
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->FoV:D

    .line 34
    move/from16 v13, p13

    iput v13, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->fpFilteringThreshold:I

    .line 35
    move/from16 v14, p14

    iput v14, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->fpFilteringMaxDistance:I

    .line 37
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xIO "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->xIO:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " yIO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->yIO:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " beta1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->beta1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAoa1Flipped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->isAoa1Flipped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " beta2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->beta2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAoa2Flipped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->isAoa2Flipped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FoV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->FoV:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fpFilteringThreshold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->fpFilteringThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fpFilteringMaxDistance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->fpFilteringMaxDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceParams"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method
