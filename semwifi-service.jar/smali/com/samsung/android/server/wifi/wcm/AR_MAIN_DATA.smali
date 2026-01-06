.class Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

.field arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    .line 17
    .line 18
    return-void
.end method
