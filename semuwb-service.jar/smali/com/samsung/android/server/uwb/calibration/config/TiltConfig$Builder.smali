.class public Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;
.super Ljava/lang/Object;
.source "TiltConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiltConfig.Builder()"


# instance fields
.field mBoundary:[F

.field mCount:I

.field mOffset:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mCount:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mOffset:[F

    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mBoundary:[F

    return-void
.end method

.method private static getFloatArrayWithZeroValues(I)[F
    .locals 2
    .param p0, "count"    # I

    .line 84
    new-array v0, p0, [F

    .line 85
    .local v0, "floatValues":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;
    .locals 4

    .line 90
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;

    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mCount:I

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mOffset:[F

    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mBoundary:[F

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig;-><init>(I[F[F)V

    return-object v0
.end method

.method public setOffsetBoundary(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBoundary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiltConfig.Builder()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->splitArrays(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "splitedValues":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 72
    const-string v2, "splitedValues is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object p0

    .line 76
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->getFloatArrayWithZeroValues(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mBoundary:[F

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mBoundary:[F

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_1
    return-object p0
.end method

.method public setOffsetCount(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiltConfig.Builder()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mCount:I

    .line 50
    return-object p0
.end method

.method public setOffsetValue(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiltConfig.Builder()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->splitArrays(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "splitedValues":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 57
    const-string v2, "splitedValues is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object p0

    .line 61
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mCount:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mOffset:[F

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mCount:I

    if-ge v1, v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/TiltConfig$Builder;->mOffset:[F

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_1
    return-object p0
.end method
