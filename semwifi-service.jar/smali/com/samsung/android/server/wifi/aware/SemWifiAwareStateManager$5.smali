.class Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->isPreEnabled()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Boolean;",
        "Ljava/util/Set<",
        "Landroid/net/wifi/WifiManager$InterfaceCreationImpact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

.field final synthetic val$canInterfaceBeCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$interfacesWhichWillBeDeleted:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;->val$canInterfaceBeCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;->val$interfacesWhichWillBeDeleted:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiManager$InterfaceCreationImpact;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;->val$canInterfaceBeCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;->val$interfacesWhichWillBeDeleted:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;->accept(Ljava/lang/Boolean;Ljava/util/Set;)V

    return-void
.end method
