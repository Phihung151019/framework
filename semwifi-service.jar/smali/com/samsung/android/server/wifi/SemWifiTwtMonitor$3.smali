.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setWifiScpmExecutorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

.field final synthetic val$configuration:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aget-object v1, v1, v2

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x1

    .line 36
    aget-object v1, v1, v3

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;

    .line 54
    .line 55
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->configuration:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "SCPM: new policy available ("

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ")"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v2, 0x2

    .line 92
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 102
    .line 103
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const/16 v1, 0x8

    .line 108
    .line 109
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aget-object v1, v1, v2

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x1

    .line 36
    aget-object v1, v1, v3

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;

    .line 54
    .line 55
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->configuration:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "SCPM: registered ("

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ")"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v2, 0x2

    .line 92
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 102
    .line 103
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const/16 v1, 0x8

    .line 108
    .line 109
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 114
    .line 115
    .line 116
    return-void
.end method
