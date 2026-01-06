.class Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivePing"
.end annotation


# instance fields
.field internalId:I

.field packetId:S

.field result:Ljava/lang/Integer;

.field socket:Ljava/net/DatagramSocket;

.field start:J

.field timeout:I

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;)V
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

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->start:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;)V

    return-void
.end method
