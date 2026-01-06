.class Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiLinkStats"
.end annotation


# instance fields
.field private cu:I

.field private predictThroughputList:[D

.field private rssi:I

.field private txBad:J

.field private txRetries:J

.field private txSuccessCnt:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcu(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->cu:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpredictThroughputList(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->predictThroughputList:[D

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->rssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->txBad:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->txRetries:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->txSuccessCnt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputcu(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->cu:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputpredictThroughputList(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;[D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->predictThroughputList:[D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputrssi(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->rssi:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->txBad:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->txRetries:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->txSuccessCnt:J

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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;-><init>()V

    return-void
.end method
