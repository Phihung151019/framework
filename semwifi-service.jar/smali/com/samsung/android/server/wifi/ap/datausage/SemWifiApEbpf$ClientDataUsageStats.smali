.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientDataUsageStats"
.end annotation


# instance fields
.field public alive:Z

.field public ip:Ljava/lang/String;

.field public mBitrateEgressPerSecond:J

.field public mBitrateIngressPerSecond:J

.field public mBitratePerSecond:J

.field public mCellularBytes:J

.field public mNrtBitrateperSecond:J

.field public mPreviousDataFetchTimestamp:J

.field public mRtBitratePerSecond:J

.field public mRtBytes:J

.field public mTotalDataBytes:J

.field public mTotalDataEgressBytes:J

.field public mTotalDataIngressBytes:J

.field public mWifiDataBytes:J

.field public mnRtBytes:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "alive="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->alive:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",mBitratePerSecond="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitratePerSecond:J

    .line 21
    .line 22
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->-$$Nest$mgetconverted(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ",mBitrateIngressPerSecond="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 35
    .line 36
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateIngressPerSecond:J

    .line 37
    .line 38
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->-$$Nest$mgetconverted(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ",mBitrateEgressPerSecond="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 51
    .line 52
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateEgressPerSecond:J

    .line 53
    .line 54
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->-$$Nest$mgetconverted(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ",mCellularBytes="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mCellularBytes:J

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ",mWifiDataBytes="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mWifiDataBytes:J

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ",mTotalDataBytes="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ",mTotalDataIngressBytes="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataIngressBytes:J

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ",mTotalDataEgressBytes="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ",mRtBytes="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ",mnRtBytes="

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mnRtBytes:J

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ",ip="

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->ip:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, ",mRtBitratePerSecond="

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 147
    .line 148
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBitratePerSecond:J

    .line 149
    .line 150
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->-$$Nest$mgetconverted(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;J)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, ",mNrtBitrateperSecond="

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 163
    .line 164
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mNrtBitrateperSecond:J

    .line 165
    .line 166
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->-$$Nest$mgetconverted(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;J)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    const-string v1, ","

    .line 171
    .line 172
    invoke-static {v0, p0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0
.end method
