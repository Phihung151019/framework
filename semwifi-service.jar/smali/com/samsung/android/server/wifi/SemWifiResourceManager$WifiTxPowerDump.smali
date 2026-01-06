.class Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiTxPowerDump"
.end annotation


# instance fields
.field private avgTxPower:I

.field private frequeny:I

.field private index:I

.field private start:I

.field private targetSarMidPlimit:D

.field private tasLevel:I

.field private time:Ljava/lang/String;

.field private txPowerAnt1:D

.field private txPowerAnt2:D

.field private windowSize:I


# direct methods
.method static bridge synthetic -$$Nest$fgetavgTxPower(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->avgTxPower:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfrequeny(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->frequeny:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetindex(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->index:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstart(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->start:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettargetSarMidPlimit(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->targetSarMidPlimit:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettasLevel(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->tasLevel:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->time:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxPowerAnt1(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->txPowerAnt1:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxPowerAnt2(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->txPowerAnt2:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetwindowSize(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->windowSize:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputavgTxPower(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->avgTxPower:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputfrequeny(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->frequeny:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputindex(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->index:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputstart(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->start:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtargetSarMidPlimit(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->targetSarMidPlimit:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtasLevel(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->tasLevel:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxPowerAnt1(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->txPowerAnt1:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxPowerAnt2(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->txPowerAnt2:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputwindowSize(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->windowSize:I

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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;-><init>()V

    return-void
.end method
