.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public featureUpdated([I)V
    .locals 6

    .line 1
    const-string v0, "SCPM configuration: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 6
    .line 7
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetscpmEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    aget v5, p1, v4

    .line 14
    .line 15
    if-ne v5, v2, :cond_0

    .line 16
    .line 17
    move v5, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v5, v1

    .line 20
    :goto_0
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    aget p1, p1, v4

    .line 31
    .line 32
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-virtual {v3, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetscpmEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v4, "SCPM err: "

    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-lez v0, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 102
    .line 103
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string v4, "wifi_switch_to_mobile_data_ai_mode_2"

    .line 108
    .line 109
    const/4 v5, -0x1

    .line 110
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 117
    .line 118
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetscpmEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_1

    .line 127
    .line 128
    move v1, v2

    .line 129
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
