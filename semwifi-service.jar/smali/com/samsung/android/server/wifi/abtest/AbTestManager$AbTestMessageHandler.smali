.class Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/abtest/AbTestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbTestMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/32 v2, 0x5265c00

    .line 5
    .line 6
    .line 7
    const-string v4, "AbTestManager"

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    if-eq v0, p1, :cond_1

    .line 17
    .line 18
    if-eq v0, v5, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p1, "CMD_24H_ABTEST_STATUS_LOGGING"

    .line 22
    .line 23
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mupdateAbTestActivated(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->reportAbTestDailyStatus()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const-string p1, "CMD_UPDATE_ABTEST_ACTIVATION"

    .line 44
    .line 45
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mupdateAbTestActivated(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const-string v0, "CMD_ADD_ABTEST_CONFIGS"

    .line 55
    .line 56
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mupdateAbTestActivated(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 65
    .line 66
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Ljava/util/Set;

    .line 69
    .line 70
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mupdateAbTestConfigurations(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/util/Set;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 74
    .line 75
    invoke-static {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mupdateAbTestActivated(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    const-string p1, "CMD_INITIALIZE"

    .line 80
    .line 81
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mregisterForSettingsChanges(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fgetmAbTestGroupController(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->initializeHashSeeds()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mupdateAbTestActivated(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    .line 105
    .line 106
    return-void
.end method
