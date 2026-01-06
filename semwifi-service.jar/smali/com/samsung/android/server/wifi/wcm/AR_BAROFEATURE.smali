.class Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final AR_BUFFER_SIZE_BARO:I = 0x5


# instance fields
.field index:I

.field lowpassBaro:[F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->lowpassBaro:[F

    .line 8
    .line 9
    return-void
.end method
