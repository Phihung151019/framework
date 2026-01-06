.class public Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiRouterInfo"
.end annotation


# instance fields
.field public mCollectionTime:J

.field public mConfigKeyString:Ljava/lang/String;

.field public mGatewayIp:Ljava/lang/String;

.field public mGatewayMac:Ljava/lang/String;

.field public mGwToApMacMatchCount:I

.field public mGwToApMacMatchPattern:Ljava/lang/String;

.field public mHttpInfo:Ljava/lang/String;

.field public mLatestBssid:Ljava/lang/String;

.field public mSsdpInfo:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mCollectionTime:J

    .line 11
    .line 12
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayIp:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mConfigKeyString:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mLatestBssid:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 21
    .line 22
    if-nez p7, :cond_0

    .line 23
    .line 24
    new-instance p1, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {p1, p7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->checkGwMacToBssidMatchLevel()V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public checkGwMacToBssidMatchLevel()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mLatestBssid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v2, 0x11

    .line 25
    .line 26
    if-lt v0, v2, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mLatestBssid:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ge v0, v2, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    const-string v0, ""

    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 40
    .line 41
    iput v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 42
    .line 43
    :goto_0
    const/4 v0, 0x6

    .line 44
    if-ge v1, v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 47
    .line 48
    mul-int/lit8 v2, v1, 0x3

    .line 49
    .line 50
    add-int/lit8 v3, v2, 0x2

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mLatestBssid:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 74
    .line 75
    const-string v3, "O"

    .line 76
    .line 77
    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 82
    .line 83
    iget v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 84
    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    iput v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 96
    .line 97
    const-string v3, "X"

    .line 98
    .line 99
    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 104
    .line 105
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    return-void

    .line 109
    :cond_3
    :goto_2
    const-string v0, "XXXXXX"

    .line 110
    .line 111
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 112
    .line 113
    iput v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 114
    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mConfigKeyString:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " Collected at "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 22
    .line 23
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mCollectionTime:J

    .line 24
    .line 25
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$mconvertTimeToSimpleDateFormat(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "\n"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "Gateway IP: "

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayIp:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, ", Gateway MAC: "

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v3, "BSSID: "

    .line 89
    .line 90
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mLatestBssid:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, ", GwMac to BSSID match: "

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v3, "/6 "

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v3, "httpInfo: "

    .line 141
    .line 142
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v3, "ssdpInfo: "

    .line 163
    .line 164
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0
.end method
