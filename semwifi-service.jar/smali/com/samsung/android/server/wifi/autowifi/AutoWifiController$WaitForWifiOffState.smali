.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForWifiOffState"
.end annotation


# static fields
.field private static final MIN_SCAN_COUNT_FOR_TRANSITION_TO_WIFI_OFF:I = 0x1


# instance fields
.field private mIsFavoriteNetworkNearBy:Z

.field private mMinimumTransitionTimeMs:J

.field private mScanCount:I

.field private mStartAt:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method static bridge synthetic -$$Nest$mgetDurationForBigdata(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->getDurationForBigdata()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetScanCountForBigdata(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->getScanCountForBigdata()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getDurationForBigdata()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mStartAt:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    long-to-int p0, v0

    .line 15
    return p0
.end method

.method private getScanCountForBigdata()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 2
    .line 3
    return p0
.end method

.method private isAvailableToChangeWifiOff()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mStartAt:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mMinimumTransitionTimeMs:J

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-le p0, v0, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method private isDeviceInRanged()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private startScheduledScan()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$200(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 9
    .line 10
    iget v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mMinimumTransitionTimeMs:J

    .line 13
    .line 14
    const-wide/16 v5, 0x2

    .line 15
    .line 16
    div-long v6, v0, v5

    .line 17
    .line 18
    const/16 v3, 0x9

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IIIJ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiOffMinDelayMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mMinimumTransitionTimeMs:J

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mStartAt:J

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->registerListener(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->isDeviceInRanged()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, " device is not in ranged. start scan first"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "AutoWifiController"

    .line 71
    .line 72
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 76
    .line 77
    const/16 v0, 0x9

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->startScheduledScan()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$300(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->unregisterListener()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getDebugLog()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " - Wait for Wi-Fi off, scan: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " / 1, time: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mStartAt:J

    .line 29
    .line 30
    sub-long/2addr v1, v3

    .line 31
    const-wide/16 v3, 0x3e8

    .line 32
    .line 33
    div-long/2addr v1, v3

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " / "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mMinimumTransitionTimeMs:J

    .line 43
    .line 44
    div-long/2addr v1, v3

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " seconds"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mIsFavoriteNetworkNearBy:Z

    .line 54
    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    const-string p0, "\n   (There are favorite networks nearby)"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/16 v2, 0x69

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/16 v1, 0x9

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x68

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    if-eq v0, v2, :cond_5

    .line 24
    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " favorite network is near by"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "AutoWifiController"

    .line 51
    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iput v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mIsFavoriteNetworkNearBy:Z

    .line 58
    .line 59
    return v3

    .line 60
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 61
    .line 62
    if-nez p1, :cond_9

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 65
    .line 66
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 71
    .line 72
    .line 73
    return v3

    .line 74
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 75
    .line 76
    if-ne p1, v3, :cond_1

    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 79
    .line 80
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return v4

    .line 88
    :cond_2
    iput v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 89
    .line 90
    return v3

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 104
    .line 105
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 110
    .line 111
    .line 112
    return v3

    .line 113
    :cond_4
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 114
    .line 115
    add-int/2addr p1, v3

    .line 116
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 117
    .line 118
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->startScan()V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->startScheduledScan()V

    .line 128
    .line 129
    .line 130
    return v3

    .line 131
    :cond_5
    :pswitch_2
    if-ne v0, v2, :cond_7

    .line 132
    .line 133
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 134
    .line 135
    if-ne p1, v3, :cond_6

    .line 136
    .line 137
    iput v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 138
    .line 139
    return v3

    .line 140
    :cond_6
    const/4 p1, 0x2

    .line 141
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_7
    const/16 p1, 0x66

    .line 145
    .line 146
    if-ne v0, p1, :cond_8

    .line 147
    .line 148
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mIsFavoriteNetworkNearBy:Z

    .line 149
    .line 150
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->isAvailableToChangeWifiOff()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mcheckAndDisableWifi(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_9

    .line 163
    .line 164
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 165
    .line 166
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$maddWifiOnOffHistory(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V

    .line 167
    .line 168
    .line 169
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->isDeviceInRanged()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 176
    .line 177
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmSearchFavoriteNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    return v3

    .line 185
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
