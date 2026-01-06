.class Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMediatorBwSwitchGranted(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 20
    .line 21
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 22
    .line 23
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMediatorBwSwitchGranted(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsBwReduced(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetbwCurrentConsumptioGain(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    div-float v2, v1, v2

    .line 51
    .line 52
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 55
    .line 56
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetbwThroughputLoss(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    div-float/2addr v1, p0

    .line 61
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMediatorBwSwitchGranted(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsBwReduceRequired(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetbwCurrentConsumptioGain(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 89
    .line 90
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetbwThroughputLoss(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)F

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    iput p0, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 95
    .line 96
    :cond_1
    return-object v0
.end method
