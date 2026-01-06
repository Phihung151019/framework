.class Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWifiApStaInfoStateChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string p4, "mCurrentLockState:"

    .line 4
    .line 5
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 9
    .line 10
    invoke-static {p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->-$$Nest$fgetmCurrentLockState(Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;)I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p4, ",event:"

    .line 18
    .line 19
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const-string p4, "SemWifiApLockManager"

    .line 30
    .line 31
    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string p3, "sta_join"

    .line 35
    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->-$$Nest$fgetmConnectedStaList(Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;)Ljava/util/HashSet;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const-string p3, "sta_leave"

    .line 53
    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 61
    .line 62
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->-$$Nest$fgetmConnectedStaList(Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;)Ljava/util/HashSet;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
