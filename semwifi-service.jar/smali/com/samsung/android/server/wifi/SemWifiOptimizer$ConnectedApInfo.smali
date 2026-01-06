.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectedApInfo"
.end annotation


# instance fields
.field public bssid:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isEnterpriseNetwork:Z

.field public nBssid2G:I

.field public nBssid5G:I

.field public nRcl2G:I

.field public nRcl5G:I

.field public ssid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mreset(Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->reset()V

    .line 2
    .line 3
    .line 4
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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->ssid:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid2G:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid5G:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
