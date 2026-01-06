.class Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelaySyncHandler"
.end annotation


# static fields
.field private static final CMD_SYNC_CONFIG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;


# direct methods
.method static bridge synthetic -$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->syncWifiConfigs(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/os/Looper;)V

    return-void
.end method

.method private syncWifiConfigs(J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->-$$Nest$msyncManagedWifiNetworks(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
