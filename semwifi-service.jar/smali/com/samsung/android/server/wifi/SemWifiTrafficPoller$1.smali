.class Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrimaryInterfaceChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputmStaPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
