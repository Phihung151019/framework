.class public Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/BssidStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeWeightedEMA"
.end annotation


# instance fields
.field public final mAlpha:D

.field public mProduct:D

.field public mValue:D

.field public mVolume:D


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mProduct:D

    .line 11
    .line 12
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mAlpha:D

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public update(DI)V
    .locals 10

    .line 1
    if-gtz p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    int-to-double v0, p3

    .line 5
    mul-double/2addr p1, v0

    .line 6
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mAlpha:D

    .line 7
    .line 8
    mul-double/2addr p1, v2

    .line 9
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    sub-double v6, v4, v2

    .line 12
    .line 13
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mProduct:D

    .line 14
    .line 15
    mul-double/2addr v6, v8

    .line 16
    add-double/2addr v6, p1

    .line 17
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mProduct:D

    .line 18
    .line 19
    mul-double/2addr v0, v2

    .line 20
    sub-double/2addr v4, v2

    .line 21
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 22
    .line 23
    mul-double/2addr v4, p1

    .line 24
    add-double/2addr v4, v0

    .line 25
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 26
    .line 27
    div-double/2addr v6, v4

    .line 28
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    .line 29
    .line 30
    return-void
.end method
