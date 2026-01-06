.class Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TCConfiguration"
.end annotation


# instance fields
.field public enabled:Z

.field public iface:Ljava/lang/String;

.field public limit:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)V
    .locals 0
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

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)V

    return-void
.end method
