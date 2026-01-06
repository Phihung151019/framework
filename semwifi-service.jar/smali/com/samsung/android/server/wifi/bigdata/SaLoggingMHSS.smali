.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSS;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final KEY_MH_USED_MINIUTES:Ljava/lang/String; = "mh_umi"

.field private static final KEY_MH_USED_MOBILE_MINIUTES:Ljava/lang/String; = "mh_mmi"

.field private static final KEY_MH_USED_MOBILE_TIME:Ljava/lang/String; = "mh_umt"

.field private static final KEY_MH_USED_MOBILE_TX_RX:Ljava/lang/String; = "mh_mtr"

.field private static final KEY_MH_USED_MOBILE_TX_RX_PACKET:Ljava/lang/String; = "mh_map"

.field private static final KEY_MH_USED_TIME:Ljava/lang/String; = "mh_uti"

.field private static final KEY_MH_USED_TX_RX:Ljava/lang/String; = "mh_utr"

.field private static final KEY_MH_USED_TX_RX_PACKET:Ljava/lang/String; = "mh_uap"

.field private static final KEY_MH_USED_WIFI_MINIUTES:Ljava/lang/String; = "mh_wmi"

.field private static final KEY_MH_USED_WIFI_TIME:Ljava/lang/String; = "mh_uwt"

.field private static final KEY_MH_USED_WIFI_TX_RX:Ljava/lang/String; = "mh_wtr"

.field private static final KEY_MH_USED_WIFI_TX_RX_PACKET:Ljava/lang/String; = "mh_wap"

.field private static final MHSS:[[Ljava/lang/String;

.field private static final MHSS_SALOGGING:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SaLoggingMHSS"

.field private static final mLogMessages:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v0, "mh_umi"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "mh_mmi"

    .line 10
    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v0, "mh_wmi"

    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v0, "mh_uti"

    .line 22
    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v0, "mh_umt"

    .line 28
    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v0, "mh_uwt"

    .line 34
    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const-string v0, "mh_utr"

    .line 40
    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v0, "mh_mtr"

    .line 46
    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v0, "mh_wtr"

    .line 52
    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    const-string v0, "mh_uap"

    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    const-string v0, "mh_map"

    .line 64
    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    const-string v0, "mh_wap"

    .line 70
    .line 71
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    filled-new-array/range {v2 .. v13}, [[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSS;->MHSS:[[Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "mhs_used_miniutes"

    .line 82
    .line 83
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v0, "mhs_used_mobile_miniutes"

    .line 88
    .line 89
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v0, "mhs_used_wifi_miniutes"

    .line 94
    .line 95
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v0, "mhs_used_total_time"

    .line 100
    .line 101
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v0, "mhs_used_mobile_time"

    .line 106
    .line 107
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    const-string v0, "mhs_used_wifi_time"

    .line 112
    .line 113
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    const-string v0, "mhs_used_tx_rx"

    .line 118
    .line 119
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const-string v0, "mhs_used_mobile_tx_rx"

    .line 124
    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    const-string v0, "mhs_used_wifi_tx_rx"

    .line 130
    .line 131
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    const-string v0, "mhs_used_tx_rx_packet"

    .line 136
    .line 137
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    const-string v0, "mhs_used_mobile_tx_rx_packet"

    .line 142
    .line 143
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    const-string v0, "mhs_used_wifi_tx_rx_packet"

    .line 148
    .line 149
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    filled-new-array/range {v2 .. v13}, [[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSS;->MHSS_SALOGGING:[[Ljava/lang/String;

    .line 158
    .line 159
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const-string v0, "\\s+"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_5

    .line 20
    .line 21
    array-length v1, p1

    .line 22
    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSS;->MHSS:[[Ljava/lang/String;

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    if-eq v1, v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    array-length v3, v2

    .line 39
    move v4, v0

    .line 40
    move v5, v4

    .line 41
    :goto_0
    if-ge v4, v3, :cond_4

    .line 42
    .line 43
    aget-object v6, v2, v4

    .line 44
    .line 45
    aget-object v7, v6, v0

    .line 46
    .line 47
    const-string v8, "mh_uap"

    .line 48
    .line 49
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/4 v8, 0x1

    .line 54
    if-eq v7, v8, :cond_2

    .line 55
    .line 56
    const-string v7, "mh_map"

    .line 57
    .line 58
    aget-object v9, v6, v0

    .line 59
    .line 60
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eq v7, v8, :cond_2

    .line 65
    .line 66
    const-string v7, "mh_uti"

    .line 67
    .line 68
    aget-object v9, v6, v0

    .line 69
    .line 70
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eq v7, v8, :cond_2

    .line 75
    .line 76
    const-string v7, "mh_wap"

    .line 77
    .line 78
    aget-object v6, v6, v0

    .line 79
    .line 80
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ne v6, v8, :cond_3

    .line 85
    .line 86
    :cond_2
    sget-object v6, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSS;->MHSS_SALOGGING:[[Ljava/lang/String;

    .line 87
    .line 88
    aget-object v6, v6, v5

    .line 89
    .line 90
    aget-object v6, v6, v0

    .line 91
    .line 92
    aget-object v7, p1, v5

    .line 93
    .line 94
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendSettings(Ljava/util/HashMap;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    array-length v0, p1

    .line 110
    :goto_2
    const-string p0, "can\'t parse bigdata extra"

    .line 111
    .line 112
    const-string p1, "SaLoggingMHSS"

    .line 113
    .line 114
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_3
    return-void
.end method
