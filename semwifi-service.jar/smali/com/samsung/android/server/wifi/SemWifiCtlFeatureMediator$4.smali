.class Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDebugModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStateChanged(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    const-string v1, "user"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Z)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "IssueTracker: "

    .line 24
    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const-string v3, " ("

    .line 35
    .line 36
    const-string v4, " / "

    .line 37
    .line 38
    invoke-static {v0, v2, v3, p1, v4}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ")"

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "SemWifiCtlFeatureMediator"

    .line 60
    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->addHistory(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
