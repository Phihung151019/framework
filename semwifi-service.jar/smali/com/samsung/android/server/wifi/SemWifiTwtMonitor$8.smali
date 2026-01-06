.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public queryPerformance()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 20
    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 24
    .line 25
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 26
    .line 27
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    if-ne v2, v3, :cond_0

    .line 39
    .line 40
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 41
    .line 42
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWakeRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 49
    .line 50
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 55
    .line 56
    int-to-float v3, v3

    .line 57
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 58
    .line 59
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iget v4, v4, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 64
    .line 65
    int-to-float v4, v4

    .line 66
    div-float/2addr v3, v4

    .line 67
    mul-float/2addr v3, v2

    .line 68
    sub-float v2, v1, v3

    .line 69
    .line 70
    div-float v2, v1, v2

    .line 71
    .line 72
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 73
    .line 74
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 81
    .line 82
    int-to-float v2, v2

    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 84
    .line 85
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 90
    .line 91
    int-to-float p0, p0

    .line 92
    div-float/2addr v2, p0

    .line 93
    div-float/2addr v1, v2

    .line 94
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 98
    .line 99
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWaitingGrant(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_1

    .line 108
    .line 109
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWakeRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 116
    .line 117
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    int-to-float v3, v3

    .line 122
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 123
    .line 124
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    int-to-float v4, v4

    .line 129
    div-float/2addr v3, v4

    .line 130
    mul-float/2addr v3, v2

    .line 131
    sub-float/2addr v1, v3

    .line 132
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 133
    .line 134
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 135
    .line 136
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    int-to-float v1, v1

    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 142
    .line 143
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    int-to-float p0, p0

    .line 148
    div-float/2addr v1, p0

    .line 149
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 150
    .line 151
    :cond_1
    return-object v0
.end method
