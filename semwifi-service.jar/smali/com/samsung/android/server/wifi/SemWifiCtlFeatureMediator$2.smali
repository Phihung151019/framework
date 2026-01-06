.class Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public updatedServiceStats([IIIF)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 9
    .line 10
    invoke-static {p3, p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmNsdResult(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;[I)V

    .line 11
    .line 12
    .line 13
    const/4 p3, 0x3

    .line 14
    aget p3, p1, p3

    .line 15
    .line 16
    const/4 p4, 0x1

    .line 17
    if-lez p3, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetgameServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 p3, 0x4

    .line 41
    aget p3, p1, p3

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    if-lez p3, :cond_2

    .line 45
    .line 46
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 47
    .line 48
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    .line 54
    .line 55
    const/4 p3, 0x6

    .line 56
    aget p1, p1, p3

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 61
    .line 62
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetgameServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 71
    .line 72
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetgameServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 90
    .line 91
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetgameServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    .line 97
    .line 98
    :goto_0
    monitor-exit p2

    .line 99
    return-void

    .line 100
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method
