.class Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiRateStats"
.end annotation


# instance fields
.field private rxRate:D

.field private txRate:D


# direct methods
.method static bridge synthetic -$$Nest$fgetrxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->rxRate:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->txRate:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputrxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->rxRate:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->txRate:D

    .line 2
    .line 3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;-><init>()V

    return-void
.end method
