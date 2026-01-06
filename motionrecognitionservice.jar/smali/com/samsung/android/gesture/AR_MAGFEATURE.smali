.class Lcom/samsung/android/gesture/AR_MAGFEATURE;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# static fields
.field static final AR_BUFFER_SIZE_MAG:I = 0x5


# instance fields
.field index:I

.field magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

.field magGradNorm:F

.field magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iput-object v1, p0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    .line 277
    new-instance v1, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    invoke-direct {v1}, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 279
    iget-object v2, p0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    new-instance v3, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    invoke-direct {v3}, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;-><init>()V

    aput-object v3, v2, v1

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
