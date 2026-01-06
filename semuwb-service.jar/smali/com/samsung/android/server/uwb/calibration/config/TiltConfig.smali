.class public Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;
.super Ljava/lang/Object;
.source "TiltConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiltConfig"


# instance fields
.field mBoundary:[F

.field mCount:I

.field mOffset:[F


# direct methods
.method public constructor <init>(I[F[F)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "offset"    # [F
    .param p3, "boundary"    # [F

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mCount:I

    .line 17
    iput-object p2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mOffset:[F

    .line 18
    iput-object p3, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mBoundary:[F

    .line 19
    return-void
.end method


# virtual methods
.method public getBoundary()[F
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mBoundary:[F

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mCount:I

    return v0
.end method

.method public getOffSet()[F
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mOffset:[F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mOffset:[F

    .line 36
    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->printArray([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", boundary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;->mBoundary:[F

    .line 37
    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->printArray([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    return-object v0
.end method
