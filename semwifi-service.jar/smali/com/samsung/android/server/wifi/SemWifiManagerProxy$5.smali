.class Lcom/samsung/android/server/wifi/SemWifiManagerProxy$5;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Landroid/net/MacAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$5;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$fgetmBssidBlocklistLock(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$fgetmBssidBlocklist(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$fputmIsQueryBssidBlocklistMethodResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
