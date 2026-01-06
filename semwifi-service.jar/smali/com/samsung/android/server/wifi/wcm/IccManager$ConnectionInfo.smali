.class Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionInfo"
.end annotation


# instance fields
.field private connectedTime:J

.field private scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private wifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetconnectedTime(Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->connectedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetscanResults(Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->scanResults:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/net/wifi/WifiInfo;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->scanResults:Ljava/util/List;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->connectedTime:J

    .line 9
    .line 10
    return-void
.end method
