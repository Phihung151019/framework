.class Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveMSearch"
.end annotation


# instance fields
.field mInternalId:I

.field mResult:Ljava/lang/Integer;

.field mSocket:Ljava/net/DatagramSocket;

.field mStart:J

.field mTargetAddress:Ljava/lang/String;

.field mTimeout:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;)V
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
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;->mStart:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp$ActiveMSearch;-><init>(Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;)V

    return-void
.end method
