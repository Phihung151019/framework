.class Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;Landroid/os/Looper;)V
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

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const-string p0, "SemWifiEnhancedFeatureController"

    .line 11
    .line 12
    const-string p1, "UPDATE_SCPM_POLICY - msg.obj is null"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 19
    .line 20
    check-cast p1, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$mparseScpmData(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_4

    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fgetmCallbacks(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fgetmFeatureState(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)[I

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;->featureUpdated([I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fgetmScpmSupportedCountryCode(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fgetmScpmSupportedCountryCode(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;->supportedCountryUpdated(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$FeatureStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 82
    .line 83
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->-$$Nest$fputmScpmSupportedCountryCode(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_1
    return-void
.end method
