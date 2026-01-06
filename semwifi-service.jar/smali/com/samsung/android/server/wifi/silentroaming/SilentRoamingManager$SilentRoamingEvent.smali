.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SilentRoamingEvent"
.end annotation


# static fields
.field static final EVENT_TO_DISABLE_TIME:Ljava/lang/String; = "event_to_disable_time"

.field static final MINUTE_IN_MSEC:I = 0xea60

.field static final MINUTE_IN_SEC:I = 0x3c

.field static final RESULT:Ljava/lang/String; = "result"

.field static final RESULT_TIME:Ljava/lang/String; = "result_time"

.field static final RSSI_AFTER:Ljava/lang/String; = "rssi_after"

.field static final RSSI_BEFORE:Ljava/lang/String; = "rssi_before"

.field static final RSSI_DELTA:Ljava/lang/String; = "rssi_delta"

.field static final SCORE_AFTER:Ljava/lang/String; = "score_after"

.field static final SCORE_BEFORE:Ljava/lang/String; = "score_before"

.field static final SCORE_DELTA:Ljava/lang/String; = "score_delta"

.field static final SCORE_DELTA_UNIT:I = 0x5

.field static final SCORE_UNIT:I = 0xa

.field static final TRIGGER_TIME:Ljava/lang/String; = "trigger_time"

.field static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field public enabledStateEnterTime:J

.field public resultTime:J

.field public silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

.field public silentRoamingSwitchCandidateRssi:I

.field public silentRoamingSwitchCandidateScore:D

.field public silentRoamingSwitchCurrentRssi:I

.field public silentRoamingSwitchCurrentScore:D

.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

.field public triggeredTime:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->INVALID:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 5
    iget-wide v0, p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->triggeredTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->triggeredTime:J

    .line 6
    iget-wide v0, p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 7
    iget p1, p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentRssi:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentRssi:I

    .line 8
    iget p1, p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateRssi:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateRssi:I

    .line 9
    iget-wide v0, p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentScore:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentScore:D

    .line 10
    iget-wide v0, p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateScore:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateScore:D

    .line 11
    iget-object p1, p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

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
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->INVALID:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 16
    .line 17
    return-void
.end method

.method public reportDisableEvent()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SilentRoamingEvent reportDisableEvent - result: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->eventResultToString(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", eventToDisableTimeSec: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 35
    .line 36
    sub-long/2addr v1, v3

    .line 37
    long-to-int v1, v1

    .line 38
    div-int/lit16 v1, v1, 0x3e8

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "SilentRoamingManager"

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 53
    .line 54
    iget v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 55
    .line 56
    const/16 v2, 0xa

    .line 57
    .line 58
    if-gt v0, v2, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    const-string v0, "SilentRoamingEvent reportDisableEvent - Report to SA Logging"

    .line 69
    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->eventResultToString(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "result"

    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 102
    .line 103
    sub-long/2addr v1, v3

    .line 104
    long-to-int v1, v1

    .line 105
    const v2, 0xea60

    .line 106
    .line 107
    .line 108
    div-int/2addr v1, v2

    .line 109
    mul-int/lit8 v1, v1, 0x3c

    .line 110
    .line 111
    const-string v2, "event_to_disable_time"

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 121
    .line 122
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 129
    .line 130
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v3, "last_silent_roaming_event_before_disabled"

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v2, "reportDisableEvent - last_silent_roaming_event_before_disabled: "

    .line 148
    .line 149
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_0
    const-string p0, "SilentRoamingEvent reportDisableEvent - Do not report to SA Logging.Daily limit exceeded."

    .line 168
    .line 169
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public reportEventResult()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SilentRoamingW24hStats - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "SilentRoamingManager"

    .line 22
    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "SilentRoamingEvent reportEventResult - result: "

    .line 29
    .line 30
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->eventResultToString(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ", triggerTime: "

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->triggeredTime:J

    .line 50
    .line 51
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 52
    .line 53
    sub-long/2addr v3, v5

    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, " msec, resultTime: "

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 63
    .line 64
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 65
    .line 66
    sub-long/2addr v3, v5

    .line 67
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, " msec, current: ["

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentRssi:I

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, " dBm / "

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentScore:D

    .line 86
    .line 87
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v4, "], choice: ["

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateRssi:I

    .line 96
    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateScore:D

    .line 104
    .line 105
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, "], delta["

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateRssi:I

    .line 114
    .line 115
    iget v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentRssi:I

    .line 116
    .line 117
    sub-int/2addr v3, v4

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v3, " dB / "

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateScore:D

    .line 127
    .line 128
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentScore:D

    .line 129
    .line 130
    sub-double/2addr v3, v5

    .line 131
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, "]"

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget v0, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 147
    .line 148
    const/16 v1, 0xa

    .line 149
    .line 150
    if-gt v0, v1, :cond_0

    .line 151
    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    .line 160
    const-string v0, "SilentRoamingEvent reportEventResult - Report to SA Logging"

    .line 161
    .line 162
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    new-instance v0, Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .line 169
    .line 170
    iget v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentRssi:I

    .line 171
    .line 172
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const-string v3, "rssi_before"

    .line 177
    .line 178
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    iget v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateRssi:I

    .line 182
    .line 183
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const-string v3, "rssi_after"

    .line 188
    .line 189
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    iget v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateRssi:I

    .line 193
    .line 194
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentRssi:I

    .line 195
    .line 196
    sub-int/2addr v2, v3

    .line 197
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const-string v3, "rssi_delta"

    .line 202
    .line 203
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 207
    .line 208
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 212
    .line 213
    .line 214
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 215
    .line 216
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    const-string v4, "event_silent_roaming_rssi"

    .line 221
    .line 222
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 227
    .line 228
    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v3, "reportEventResult - [event_silent_roaming_rssi: "

    .line 232
    .line 233
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v0, "] "

    .line 244
    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentScore:D

    .line 253
    .line 254
    double-to-int v5, v3

    .line 255
    div-int/2addr v5, v1

    .line 256
    mul-int/2addr v5, v1

    .line 257
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateScore:D

    .line 258
    .line 259
    double-to-int v8, v6

    .line 260
    div-int/2addr v8, v1

    .line 261
    mul-int/2addr v8, v1

    .line 262
    sub-double/2addr v6, v3

    .line 263
    double-to-int v3, v6

    .line 264
    new-instance v4, Ljava/util/HashMap;

    .line 265
    .line 266
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v6, "score_before"

    .line 270
    .line 271
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const-string v5, "score_after"

    .line 279
    .line 280
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    div-int/lit8 v5, v3, 0xa

    .line 288
    .line 289
    mul-int/2addr v5, v1

    .line 290
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    const-string v5, "score_delta"

    .line 295
    .line 296
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 300
    .line 301
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 305
    .line 306
    .line 307
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 308
    .line 309
    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    const-string v6, "event_silent_roaming_score"

    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 320
    .line 321
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v2, " [event_silent_roaming_score: "

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 350
    .line 351
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Ljava/util/HashMap;

    .line 355
    .line 356
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    .line 358
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 365
    .line 366
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 367
    .line 368
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->eventResultToString(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v2, " "

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    iget v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateRssi:I

    .line 381
    .line 382
    iget v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentRssi:I

    .line 383
    .line 384
    sub-int/2addr v4, v5

    .line 385
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const-string v2, "result"

    .line 399
    .line 400
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->triggeredTime:J

    .line 404
    .line 405
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 406
    .line 407
    sub-long v3, v1, v3

    .line 408
    .line 409
    long-to-int v3, v3

    .line 410
    const v4, 0xea60

    .line 411
    .line 412
    .line 413
    div-int/2addr v3, v4

    .line 414
    mul-int/lit8 v3, v3, 0x3c

    .line 415
    .line 416
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 417
    .line 418
    sub-long/2addr v4, v1

    .line 419
    long-to-int v1, v4

    .line 420
    div-int/lit16 v1, v1, 0x3e8

    .line 421
    .line 422
    const-string v2, "trigger_time"

    .line 423
    .line 424
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    const-string v2, "result_time"

    .line 432
    .line 433
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 441
    .line 442
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 446
    .line 447
    .line 448
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 449
    .line 450
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    const-string v2, "event_silent_roaming_result_time"

    .line 455
    .line 456
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :cond_0
    const-string p0, "SilentRoamingEvent reportEventResult - Do not report to SA Logging. Daily limit exceeded."

    .line 468
    .line 469
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    return-void
.end method
