.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongRssiRoamingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;


# direct methods
.method public static synthetic $r8$lambda$Gs7wvpnsfXEtKDEnYCdmks7SBKM(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->lambda$handleMessage$0(Landroid/net/wifi/ScanResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$YvNasd-ImxNy6DVL5_GS6nrfx2w(I)[Landroid/net/wifi/ScanResult;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->lambda$handleMessage$1(I)[Landroid/net/wifi/ScanResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$p0voHjQrSsIz7X-woOS8X7pZe-Q(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->is6GHz()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$handleMessage$0(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiSsid;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method private static synthetic lambda$handleMessage$1(I)[Landroid/net/wifi/ScanResult;
    .locals 0

    .line 1
    new-array p0, p0, [Landroid/net/wifi/ScanResult;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmPsmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmScpmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "undefined case: "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget p1, p1, Landroid/os/Message;->what:I

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 53
    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 57
    .line 58
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 63
    .line 64
    const-string v0, "EVENT_ROAM_FAIL"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logToDump(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamTargetFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Landroid/net/wifi/WifiInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-ne p1, v0, :cond_1

    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 93
    .line 94
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmSaLoggingHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->ROAM:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamFailCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    add-int/2addr v0, v3

    .line 111
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamFailCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 115
    .line 116
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmSaLoggingHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->ROAM_FAIL:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 127
    .line 128
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdateAwareState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 133
    .line 134
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdateP2PState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 139
    .line 140
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-ne p1, v3, :cond_2

    .line 149
    .line 150
    move v2, v3

    .line 151
    :cond_2
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRealTimeAppDetected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 159
    .line 160
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRealTimeAppDetected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-eqz p0, :cond_3

    .line 165
    .line 166
    const-string p0, "detected"

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_3
    const-string p0, "closed"

    .line 170
    .line 171
    :goto_0
    const-string v0, "realtime app "

    .line 172
    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 182
    .line 183
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msetGuardPeriod(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 188
    .line 189
    const-string v0, "EVENT_PARTIAL_SCAN_FAIL_REPORTED"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logToDump(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 195
    .line 196
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-lez p1, :cond_9

    .line 201
    .line 202
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 203
    .line 204
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    sub-int/2addr v0, v3

    .line 209
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 210
    .line 211
    .line 212
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 213
    .line 214
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 221
    .line 222
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler$$ExternalSyntheticLambda0;

    .line 227
    .line 228
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 240
    .line 241
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msendSrrReportForScanResult(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/util/List;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetm6GhzFreqExist(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_4

    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda2;

    .line 259
    .line 260
    const/4 v2, 0x1

    .line 261
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda2;-><init>(I)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler$$ExternalSyntheticLambda2;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 278
    .line 279
    array-length v0, p1

    .line 280
    if-nez v0, :cond_5

    .line 281
    .line 282
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 283
    .line 284
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmNoScanResultCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    add-int/2addr v0, v3

    .line 289
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmNoScanResultCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 290
    .line 291
    .line 292
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 293
    .line 294
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmSaLoggingHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->NO_SCAN_RESULT:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 299
    .line 300
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$misPollingCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_9

    .line 311
    .line 312
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 313
    .line 314
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 319
    .line 320
    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->makeCandidateAPList(Ljava/lang/String;[Landroid/net/wifi/ScanResult;)V

    .line 325
    .line 326
    .line 327
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 328
    .line 329
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->selectBestCandidateAp()Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_6

    .line 338
    .line 339
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 340
    .line 341
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 345
    .line 346
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->getSelectedApFrequency()I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamTargetFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 358
    .line 359
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 364
    .line 365
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->roamToSelectedAp(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 373
    .line 374
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 379
    .line 380
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    const-wide/16 v0, 0x1388

    .line 389
    .line 390
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 395
    .line 396
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmNoCandidateCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    add-int/2addr v0, v3

    .line 401
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmNoCandidateCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 402
    .line 403
    .line 404
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 405
    .line 406
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmSaLoggingHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->NO_CANDIDATE:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 411
    .line 412
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast p1, Ljava/lang/Boolean;

    .line 419
    .line 420
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 425
    .line 426
    invoke-static {v0, v3, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msetRoamingStateBitMask(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;IZ)V

    .line 427
    .line 428
    .line 429
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 430
    .line 431
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 436
    .line 437
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/net/wifi/WifiInfo;)V

    .line 446
    .line 447
    .line 448
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 449
    .line 450
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Landroid/net/wifi/WifiInfo;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    if-nez p1, :cond_7

    .line 455
    .line 456
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    const-string v0, "WifiInfo is null"

    .line 461
    .line 462
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 466
    .line 467
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdateConnectStateAndBand(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 468
    .line 469
    .line 470
    return-void

    .line 471
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 472
    .line 473
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdateRssiHistory(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const-string v1, "POLL (Rssi:"

    .line 482
    .line 483
    const-string v2, " MinRssi:"

    .line 484
    .line 485
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 490
    .line 491
    invoke-static {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmDynamicMinRssi(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    const-string v1, " Guard:"

    .line 499
    .line 500
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 504
    .line 505
    invoke-static {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmGuardPeriodEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    const-string v2, ")"

    .line 510
    .line 511
    invoke-static {v2, v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 519
    .line 520
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$misRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 521
    .line 522
    .line 523
    move-result p1

    .line 524
    if-eqz p1, :cond_8

    .line 525
    .line 526
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 527
    .line 528
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msetGuardPeriod(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V

    .line 529
    .line 530
    .line 531
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 532
    .line 533
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 534
    .line 535
    .line 536
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 537
    .line 538
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mgetWifiScanner(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    if-eqz p1, :cond_8

    .line 543
    .line 544
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 545
    .line 546
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 547
    .line 548
    .line 549
    :cond_8
    const/4 p1, 0x5

    .line 550
    const-wide/16 v0, 0xbb8

    .line 551
    .line 552
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 553
    .line 554
    .line 555
    return-void

    .line 556
    :pswitch_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 557
    .line 558
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V

    .line 559
    .line 560
    .line 561
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 562
    .line 563
    const/4 v0, -0x1

    .line 564
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamTargetFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 565
    .line 566
    .line 567
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 568
    .line 569
    const-string v0, ""

    .line 570
    .line 571
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmCurrentBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 575
    .line 576
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmCurrentFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 577
    .line 578
    .line 579
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 580
    .line 581
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 582
    .line 583
    .line 584
    return-void

    .line 585
    :pswitch_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 586
    .line 587
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 588
    .line 589
    .line 590
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 591
    .line 592
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    .line 598
    .line 599
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 600
    .line 601
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z

    .line 602
    .line 603
    .line 604
    move-result p1

    .line 605
    if-eqz p1, :cond_9

    .line 606
    .line 607
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 608
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    const-string v1, "Roam to "

    .line 612
    .line 613
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 617
    .line 618
    invoke-static {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmLogUtil(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    iget-object v3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 623
    .line 624
    invoke-static {v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logToDump(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 643
    .line 644
    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmSaLoggingHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->ROAM:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 649
    .line 650
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 651
    .line 652
    .line 653
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 654
    .line 655
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V

    .line 656
    .line 657
    .line 658
    return-void

    .line 659
    :pswitch_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 660
    .line 661
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 666
    .line 667
    .line 668
    move-result p1

    .line 669
    invoke-static {p0, v3, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msetRoamingStateBitMask(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;IZ)V

    .line 670
    .line 671
    .line 672
    :cond_9
    :goto_1
    return-void

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
