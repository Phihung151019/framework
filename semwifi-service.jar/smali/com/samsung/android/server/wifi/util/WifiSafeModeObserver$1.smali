.class Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;


# direct methods
.method public static synthetic $r8$lambda$suapDhIg3iPlzqpptDOoim5VQww(ZLcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->lambda$onChange$0(ZLcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$onChange$0(ZLcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;->onChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->-$$Nest$fgetlock(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->-$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
