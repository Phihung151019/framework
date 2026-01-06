.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivatedStateChanged(Z)V
    .locals 2

    .line 1
    const-string v0, "WifiLock activation: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiOptimizer"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0xc

    .line 23
    .line 24
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onActiveUsersChanged([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockActiveUserUid:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "WifiLock ActiveUsers: "

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockActiveUserUid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "SemWifiOptimizer"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onOwnershipChanged([I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockOwnerUid:Ljava/lang/String;

    .line 8
    .line 9
    array-length p1, p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockActiveUserUid:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "WifiLock Ownership: "

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockOwnerUid:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "SemWifiOptimizer"

    .line 45
    .line 46
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
