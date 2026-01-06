.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedRssiThreshold"
.end annotation


# instance fields
.field bssidEdited:Ljava/lang/String;

.field rssiThreshold:D


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->bssidEdited:Ljava/lang/String;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->rssiThreshold:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    return-void
.end method
