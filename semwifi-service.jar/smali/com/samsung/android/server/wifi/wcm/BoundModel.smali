.class public Lcom/samsung/android/server/wifi/wcm/BoundModel;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public mBand:I

.field public mBssid:Ljava/lang/String;

.field public mFreq:I

.field public mRssi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBssid:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mFreq:I

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/server/wifi/wcm/BoundModel;
    .locals 4

    .line 2
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBssid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mFreq:I

    iget v3, p0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/wcm/BoundModel;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/BoundModel;->clone()Lcom/samsung/android/server/wifi/wcm/BoundModel;

    move-result-object p0

    return-object p0
.end method
