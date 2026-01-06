.class Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->-$$Nest$mupdateWiFiB2BPolicy(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->-$$Nest$fgetlistenerLock(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->-$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p2, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    monitor-exit p1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
