.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QosStateMachine"
.end annotation


# instance fields
.field private final MLO:Z

.field private final SLO:Z

.field private currentState:Z

.field private prevState:Z

.field private final queueSize:I

.field private queueSum:I

.field private final stateMachineQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->queueSize:I

    .line 4
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->queueSum:I

    .line 6
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->MLO:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->SLO:Z

    .line 8
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->prevState:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->queueSum:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->prevState:Z

    .line 12
    .line 13
    return-void
.end method

.method public run(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x6

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->queueSum:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->queueSum:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->queueSum:I

    .line 62
    .line 63
    sub-int v0, p1, v0

    .line 64
    .line 65
    add-int/2addr v0, v3

    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->queueSum:I

    .line 67
    .line 68
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 69
    .line 70
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->prevState:Z

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    if-ne p1, v4, :cond_1

    .line 76
    .line 77
    const/4 p1, 0x3

    .line 78
    if-le v0, p1, :cond_1

    .line 79
    .line 80
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 81
    .line 82
    return v4

    .line 83
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 84
    .line 85
    return v2

    .line 86
    :cond_2
    if-nez p1, :cond_3

    .line 87
    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 91
    .line 92
    return v2

    .line 93
    :cond_3
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 94
    .line 95
    return v4
.end method

.method public stateMachineDebug()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->currentState:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "SLO"

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "MLO"

    .line 10
    .line 11
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Label: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", Queue: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ", Queue Size: "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->stateMachineQueue:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", Queue Sum: "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->queueSum:I

    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, ", Link Condition: "

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
