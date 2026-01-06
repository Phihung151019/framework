.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
.super Lcom/samsung/android/wifi/SemWifiApClientDetails;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$SemWifiApClientHandler;,
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    }
.end annotation


# static fields
.field private static final CLIENT_TIME_LIMIT_TIMEOUT:I = 0x1

.field private static final CLIENT_TIME_OUT_TAG:Ljava/lang/String; = "client_time_limit_handler_tag"

.field private static TAG:Ljava/lang/String;

.field private static mSemWifiApClientHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$SemWifiApClientHandler;


# instance fields
.field private ipType:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

.field private mClientActiveSessionTotalDataConsumed:J

.field private mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

.field private mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;


# direct methods
.method static bridge synthetic -$$Nest$mstopTheTiming(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->stopTheTiming()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 2
    .line 3
    const-string v0, "SemWifiApClientController"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$SemWifiApClientHandler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$SemWifiApClientHandler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApClientHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$SemWifiApClientHandler;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJZJJZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-wide/from16 v11, p14

    move-wide/from16 v13, p16

    move/from16 v15, p19

    move/from16 v16, p20

    move/from16 v17, p21

    move-object/from16 v18, p22

    move-object/from16 v19, p23

    move-object/from16 v20, p24

    .line 2
    invoke-direct/range {v0 .. v20}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->UNKNOWN:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->ipType:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mClientActiveSessionTotalDataConsumed:J

    move-object/from16 v1, p2

    .line 6
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    move/from16 v1, p18

    .line 7
    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    move/from16 v1, p13

    .line 8
    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    .line 9
    new-instance v1, Lcom/android/internal/util/WakeupMessage;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApClientHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$SemWifiApClientHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "client_time_limit_handler_tag"

    const/4 v6, 0x1

    move-object/from16 p3, p1

    move-object/from16 p9, v0

    move-object/from16 p2, v1

    move-object/from16 p4, v2

    move/from16 p7, v3

    move/from16 p8, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    invoke-direct/range {p2 .. p9}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    .line 10
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientAllSetting()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJZJJZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p24}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJZJJZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cancelClientTimeLimitTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Time Limit timer cancelled for device MAC :"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private checkClientAllSetting()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseInternet(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "MAC : "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " internet is paused by user"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientTimeLimitConditions_2()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkDataLimitReachedConditions_3()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private checkClientTimeLimitConditions_2()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "MAC: "

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    cmp-long v0, v2, v6

    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->timerLogicWhenTimeLimitIsSetButNotReached()V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p0, " : timer is set"

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->stopTheTiming()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseInternet(Ljava/lang/String;J)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, " : timer reached and internet is paused"

    .line 99
    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->timerLogicWhenTimeLimitIsNotSet()V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p0, " : timer is reset"

    .line 133
    .line 134
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_2
    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 147
    .line 148
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->stopTheTiming()V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeInternet(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p0, " : client disconnected and stop the timing"

    .line 179
    .line 180
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method private checkDataLimitReachedConditions_3()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "MAC : "

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    cmp-long v0, v2, v6

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->getClientActiveSessionTotalDataConsumed()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    add-long/2addr v5, v3

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    sub-long/2addr v5, v3

    .line 65
    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseInternet(Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "+ cellular stream: called paused : Target Data : "

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->getClientActiveSessionTotalDataConsumed()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    add-long/2addr v5, v3

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    sub-long/2addr v5, v3

    .line 105
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseInternet(Ljava/lang/String;J)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p0, " , pause the internet because data limit reached"

    .line 144
    .line 145
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 157
    .line 158
    if-nez v0, :cond_4

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_4

    .line 165
    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeInternet(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p0, " , resume internet as no set data limit"

    .line 194
    .line 195
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    .line 207
    .line 208
    if-nez v0, :cond_3

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_3

    .line 215
    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 217
    .line 218
    if-nez v0, :cond_3

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_3

    .line 225
    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeInternet(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 236
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string p0, " , resume internet as wifi sharing is on and internet is not pause by time limit and by user"

    .line 254
    .line 255
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_4

    .line 271
    .line 272
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeInternet(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string p0, " , resume internet as client disconnected"

    .line 300
    .line 301
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    :cond_4
    return-void
.end method

.method private registerClientTimeLimitTimeOutTimer()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 8
    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    sub-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long v2, v0, v2

    .line 27
    .line 28
    if-ltz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(JLcom/android/internal/util/WakeupMessage;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v4, "Time Limit timer is register for device MAC :"

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " for time(milliSeconds) : "

    .line 56
    .line 57
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void

    .line 71
    :cond_1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "can\'t register the timelimit for device MAC :"

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, " isConnected = "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " , mClientCurrentDayIntermediateTimeStamp = "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 109
    .line 110
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private resetClientTimeLimitTimer()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->cancelClientTimeLimitTimer()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->registerClientTimeLimitTimeOutTimer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private setClientMobileAndTotalDataConsumed(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mClientActiveSessionTotalDataConsumed:J

    .line 8
    .line 9
    cmp-long v2, p1, v0

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    sub-long v0, p1, v0

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    .line 16
    .line 17
    add-long/2addr v2, v0

    .line 18
    iput-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileData:J

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    .line 21
    .line 22
    add-long/2addr v2, v0

    .line 23
    iput-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mClientActiveSessionTotalDataConsumed:J

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private setClientTotalDataConsumed(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mClientActiveSessionTotalDataConsumed:J

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mClientActiveSessionTotalDataConsumed:J

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private startTheTiming()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 12
    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 24
    .line 25
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "MAC: "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " Timing started"

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "MAC : "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, " can\'t start the timing data is paused by time or user"

    .line 79
    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private stopTheTiming()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayUsedTotalTime:J

    .line 14
    .line 15
    iput-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->cancelClientTimeLimitTimer()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "MAC: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, " : timer stop"

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method private timerLogicWhenTimeLimitIsNotSet()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "MAC: "

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->startTheTiming()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->cancelClientTimeLimitTimer()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " : starting the time as internet is not paused by user and cancel the scheduled timer if any"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->stopTheTiming()V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " : stop the time as internet is paused by user"

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByDataLimit()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeInternet(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    return-void
.end method

.method private timerLogicWhenTimeLimitIsSetButNotReached()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "MAC: "

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->startTheTiming()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->resetClientTimeLimitTimer()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " : starting the time as internet is not paused by user"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->stopTheTiming()V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " : stop the time as internet is paused by user"

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByDataLimit()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeInternet(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    return-void
.end method


# virtual methods
.method getClientActiveSessionTotalDataConsumed()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mClientActiveSessionTotalDataConsumed:J

    .line 2
    .line 3
    return-wide v0
.end method

.method getDhcpDeviceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method getEditedDeviceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method getIpType()Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->ipType:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 2
    .line 3
    return-object p0
.end method

.method getNsdDeviceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method getRealTimeBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimeBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method getRealTimePackets()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimePackets:J

    .line 2
    .line 3
    return-wide v0
.end method

.method getSemWifiApEbf()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 2
    .line 3
    return-object p0
.end method

.method handleClientConnectedEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    iput-wide p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isWifiApGuestClient(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientAllSetting()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string p1, "Exception : client already connected, attempt to make it connected again"

    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method handleClientDisconnectedEvent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->UNKNOWN:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->ipType:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    .line 17
    .line 18
    const-wide/16 v1, -0x1

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    .line 21
    .line 22
    iput-wide v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientTimeLimitConditions_2()V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "client disconnected mac = "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "Exception : trying to make client disconnected even though it is already disconnected"

    .line 62
    .line 63
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method handleDateOrSimChangedEvent(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientUsedMobileData:J

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayUsedTotalTime:J

    .line 8
    .line 9
    const-wide/16 p1, -0x1

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->cancelClientTimeLimitTimer()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientAllSetting()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method handleStreamChangedEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientAllSetting()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method handleWifiApSwitchOffEvent()V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientUsedMobileData:J

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileData:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mClientActiveSessionTotalDataConsumed:J

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientLastElapsedTime:J

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientTimeLimitConditions_2()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "MHS off for client : "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public isClientDataLimitSet()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method setClientDataLimit(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimitInBytes:J

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkDataLimitReachedConditions_3()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "MAC: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ", Data Limit call for = "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    return-object p0
.end method

.method setClientDataPausedByUser(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    .line 8
    .line 9
    if-eq v0, p1, :cond_2

    .line 10
    .line 11
    const-string v0, "MAC: "

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientInternetPaused()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->pauseInternet(Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, " : user pause the data"

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    if-nez p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientInternetPaused()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->resumeInternet(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " : user resume the data and internet is not paused by time and data limit therefore resume the internet"

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    .line 111
    .line 112
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientTimeLimitConditions_2()V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkDataLimitReachedConditions_3()V

    .line 116
    .line 117
    .line 118
    :cond_2
    return-object p0
.end method

.method setClientDataUsage(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientMobileAndTotalDataConsumed(J)V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientTotalDataConsumed(J)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method setClientIsDataPauseByTimeLimit(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 2
    .line 3
    return-object p0
.end method

.method setClientTimeLimit(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimitInMilliSec:J

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkClientTimeLimitConditions_2()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->checkDataLimitReachedConditions_3()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "MAC: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " : time limit is set to = "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    return-object p0
.end method

.method setDeviceName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method setDeviceType(I)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDeviceType:I

    .line 2
    .line 3
    return-object p0
.end method

.method setDeviceTypeFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mDhcpDeviceType:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method setEditedDeviceName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientEditedName:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method setIpType(Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->ipType:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 2
    .line 3
    return-object p0
.end method

.method setIsAutoHotspotClient(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsAutoHotspotDevice:Z

    .line 2
    .line 3
    return-object p0
.end method

.method setIsGuestClient(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsGuestDevice:Z

    .line 2
    .line 3
    return-object p0
.end method

.method setManufactureFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mDhcpManufacture:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method setNsdDeviceName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientNsdName:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method setOsTypeFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mDhcpOsType:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method setRealTimeBytes(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimeBytes:J

    .line 2
    .line 3
    return-object p0
.end method

.method setRealTimePackets(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRealTimePackets:J

    .line 2
    .line 3
    return-object p0
.end method
