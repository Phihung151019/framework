.class Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p2, "ONOFF"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fputisActive(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetisActive(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-interface {p2, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;->onStateChanged(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const-string p2, "SemWifi.IssueTracker"

    .line 65
    .line 66
    const-string v0, "remove null listener"

    .line 67
    .line 68
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method
