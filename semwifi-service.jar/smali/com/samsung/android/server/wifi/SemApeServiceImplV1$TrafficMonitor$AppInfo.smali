.class Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation


# instance fields
.field appUid:I

.field backgroundBandwidth:I

.field computedBandwidth:I

.field isGameApp:Z

.field targetBandwidth:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->isGameApp:Z

    .line 6
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;IZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;IZ)V

    return-void
.end method
