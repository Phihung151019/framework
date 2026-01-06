.class Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/DnsThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheck"
.end annotation


# instance fields
.field private mDnsCheckSuccesses:[I

.field private mDnsCheckTAG:Ljava/lang/String;

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

.field private mDnsResponseStrs:[Ljava/lang/String;

.field private mDnsServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mIdDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsServerList:Ljava/util/List;

    .line 17
    .line 18
    new-instance v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/Network;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    move-object v6, p2

    .line 33
    move-object v4, p3

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;Landroid/net/Network;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    .line 38
    .line 39
    iput-object v4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/LinkProperties;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v2, p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " ["

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "]"

    .line 30
    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkDnsResult(III)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->checkDnsResultCore(III)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 p3, 0xa

    .line 6
    .line 7
    if-ne p1, p3, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p3, 0x3

    .line 11
    if-ne p1, p3, :cond_2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 14
    .line 15
    invoke-static {p3}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-static {p3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/16 v0, -0x32

    .line 34
    .line 35
    if-lt p3, v0, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const-string p1, "Dns Timeout but RSSI high : "

    .line 44
    .line 45
    const-string v0, " dBm. Link is okay and DNS service is not responsive. -> NO_INTERNET"

    .line 46
    .line 47
    invoke-static {p1, p3, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p3, "WifiConnectivityMonitor.DnsThread"

    .line 52
    .line 53
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    const/4 p1, 0x5

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;->notifyDnsResult(II)V

    .line 64
    .line 65
    .line 66
    return p1
.end method

.method public checkDnsResultCore(III)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    const-string v2, "WifiConnectivityMonitor.DnsThread"

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const-string p0, "Skip a Dns response with ID - "

    .line 26
    .line 27
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    return v1

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckSuccesses:[I

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    if-eqz v3, :cond_13

    .line 39
    .line 40
    array-length v3, v3

    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-gt v3, v5, :cond_2

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    if-ltz p2, :cond_3

    .line 60
    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckSuccesses:[I

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    aget v6, v3, v5

    .line 68
    .line 69
    add-int/2addr v6, p1

    .line 70
    aput v6, v3, v5

    .line 71
    .line 72
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    if-ltz p2, :cond_4

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    aget-object v7, v5, v6

    .line 90
    .line 91
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v7, "|"

    .line 95
    .line 96
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    aput-object v3, v5, v6

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    aget-object v7, v5, v6

    .line 121
    .line 122
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v7, "|x"

    .line 126
    .line 127
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    aput-object v3, v5, v6

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    const-string v3, "mDnsResponseStrs is null"

    .line 138
    .line 139
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckSuccesses:[I

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    aget v3, v3, v5

    .line 149
    .line 150
    const/4 v5, 0x0

    .line 151
    if-lt v3, p3, :cond_8

    .line 152
    .line 153
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    const-string v0, "  SUCCESS"

    .line 169
    .line 170
    invoke-static {p1, p3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    .line 186
    .line 187
    .line 188
    const/4 p1, 0x2

    .line 189
    if-ne p2, p1, :cond_7

    .line 190
    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 192
    .line 193
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    const/16 p2, 0x611

    .line 198
    .line 199
    invoke-interface {p0, p2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;->notifyAnalyticsDisconnectReason(S)V

    .line 200
    .line 201
    .line 202
    return p1

    .line 203
    :cond_7
    return v5

    .line 204
    :cond_8
    const/4 p3, -0x3

    .line 205
    if-ne p2, p3, :cond_f

    .line 206
    .line 207
    new-instance p2, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 213
    .line 214
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    :cond_9
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_a

    .line 227
    .line 228
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Ljava/util/Map$Entry;

    .line 233
    .line 234
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_9

    .line 243
    .line 244
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result p3

    .line 258
    :goto_3
    if-ge v5, p3, :cond_b

    .line 259
    .line 260
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    add-int/lit8 v5, v5, 0x1

    .line 265
    .line 266
    check-cast v0, Ljava/lang/Integer;

    .line 267
    .line 268
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 269
    .line 270
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_b
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    if-eqz p2, :cond_e

    .line 281
    .line 282
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-eqz p2, :cond_c

    .line 287
    .line 288
    const-string p2, "DNS gets no results"

    .line 289
    .line 290
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :cond_c
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    if-eqz p2, :cond_d

    .line 298
    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p3

    .line 308
    const-string v0, "  FAILURE "

    .line 309
    .line 310
    invoke-static {p2, p3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    .line 326
    .line 327
    .line 328
    return p1

    .line 329
    :cond_e
    return v1

    .line 330
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_12

    .line 337
    .line 338
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-eqz p1, :cond_10

    .line 343
    .line 344
    const-string p1, "DNS Checking FAILURE"

    .line 345
    .line 346
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    :cond_10
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-eqz p1, :cond_11

    .line 354
    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    const-string p3, "  FAILURE"

    .line 365
    .line 366
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->makeLogString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    .line 382
    .line 383
    .line 384
    return v4

    .line 385
    :cond_12
    return v1

    .line 386
    :catch_0
    const-string p0, "mDnsResponseStrs IndexOutOfBoundsException"

    .line 387
    .line 388
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    return v4

    .line 392
    :cond_13
    :goto_6
    const-string p1, "Not available to check dns results"

    .line 393
    .line 394
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    .line 398
    .line 399
    .line 400
    return v4
.end method

.method public isDnsCheckOngoing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

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

.method public quit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->cancelPings()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public requestDnsQuerying(IILjava/lang/String;)Z
    .locals 10

    .line 1
    const-string v0, "WifiConnectivityMonitor.DnsThread"

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/LinkProperties;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/LinkProperties;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsServerList:Ljava/util/List;

    .line 42
    .line 43
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsServerList:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-array v2, v1, [I

    .line 59
    .line 60
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsCheckSuccesses:[I

    .line 61
    .line 62
    new-array v2, v1, [Ljava/lang/String;

    .line 63
    .line 64
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    move v3, v2

    .line 68
    :goto_0
    if-ge v3, v1, :cond_2

    .line 69
    .line 70
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    .line 71
    .line 72
    const-string v5, ""

    .line 73
    .line 74
    aput-object v5, v4, v3

    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 82
    .line 83
    .line 84
    move v3, v2

    .line 85
    move v4, v3

    .line 86
    :goto_1
    if-ge v3, p1, :cond_6

    .line 87
    .line 88
    move v5, v2

    .line 89
    :goto_2
    if-ge v5, v1, :cond_5

    .line 90
    .line 91
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/net/InetAddress;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_4

    .line 112
    .line 113
    const/16 v6, 0x64

    .line 114
    .line 115
    if-nez p3, :cond_3

    .line 116
    .line 117
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 118
    .line 119
    iget-object v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    .line 120
    .line 121
    iget-object v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    check-cast v9, Ljava/net/InetAddress;

    .line 128
    .line 129
    invoke-virtual {v8, v9, p2, v6}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 146
    .line 147
    iget-object v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsPinger:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    .line 148
    .line 149
    iget-object v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->mDnsList:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    check-cast v9, Ljava/net/InetAddress;

    .line 156
    .line 157
    invoke-virtual {v8, v9, p2, v6, p3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :goto_3
    const/4 v4, 0x1

    .line 173
    goto :goto_4

    .line 174
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v7, "Loopback address (::1) is detected at DNS"

    .line 180
    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    .line 194
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :catch_0
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_5

    .line 202
    .line 203
    const-string v5, "IndexOutOfBoundsException"

    .line 204
    .line 205
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_6
    return v4
.end method
