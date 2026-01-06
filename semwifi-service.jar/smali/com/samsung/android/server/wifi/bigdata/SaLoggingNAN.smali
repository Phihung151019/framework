.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final AWARE_DURATION:Ljava/lang/String; = "aware_dur"

.field public static final BASIC_INFO:Ljava/lang/String; = "basic_info"

.field public static final CONNECTED_COUNT:Ljava/lang/String; = "conn_cnt"

.field public static final ELAPSED_TIME_FROM_LAST_CONNECTION:Ljava/lang/String; = "ETFLC"

.field public static final EVENT_NAN_OFF:Ljava/lang/String; = "nan_off"

.field public static final EVENT_NAN_ON:Ljava/lang/String; = "nan_on"

.field public static final EVENT_NDP_CHANGED:Ljava/lang/String; = "nan_ndp_changed"

.field public static final EVENT_NDP_FAILED:Ljava/lang/String; = "nan_ndp_failed"

.field public static final FOREGROUND_PACKAGE:Ljava/lang/String; = "fg_pkg"

.field public static final IFACE_NAME:Ljava/lang/String; = "iface"

.field public static final IS_ADDED:Ljava/lang/String; = "added"

.field public static final MAX_MODE_80211:Ljava/lang/String; = "mode"

.field public static final NDP_CHANNEL_INFO:Ljava/lang/String; = "ndp_chan_infos"

.field public static final NDP_COUNT:Ljava/lang/String; = "ndp_cnt"

.field public static final REASON_CODE:Ljava/lang/String; = "reason"

.field public static final STA_FREQ:Ljava/lang/String; = "sta_freq"

.field private static final TAG:Ljava/lang/String; = "SaLoggingNAN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static makeAwareOffEvent(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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
    const-string v2, "sta_freq"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, ","

    .line 20
    .line 21
    const-string v4, "mode"

    .line 22
    .line 23
    invoke-static {v1, v2, v3, p0, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    const-string v4, "aware_dur"

    .line 30
    .line 31
    invoke-static {v1, v2, v3, p0, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "basic_info"

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v1, "fg_pkg"

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "makeAwareOffEvent, Value :  Extra : "

    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "iface"

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, " dimension : "

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 96
    .line 97
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setExtra(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method private static makeAwareOnEvent(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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
    const-string v2, "sta_freq"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, ","

    .line 20
    .line 21
    const-string v4, "mode"

    .line 22
    .line 23
    invoke-static {v1, v2, v3, p0, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    const-string v4, "ETFLC"

    .line 30
    .line 31
    invoke-static {v1, v2, v3, p0, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, "conn_cnt"

    .line 38
    .line 39
    invoke-static {v1, v2, v3, p0, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "basic_info"

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string v1, "fg_pkg"

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "makeAwareOnEvent, Extra : "

    .line 73
    .line 74
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v3, "iface"

    .line 78
    .line 79
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, " dimension : "

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 104
    .line 105
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setExtra(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0
.end method

.method private static makeNdpChangedEvent(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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
    const-string v2, "sta_freq"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, ","

    .line 20
    .line 21
    const-string v4, "added"

    .line 22
    .line 23
    invoke-static {v1, v2, v3, p0, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    const-string v4, "ndp_cnt"

    .line 30
    .line 31
    invoke-static {v1, v2, v3, p0, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "basic_info"

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v1, "fg_pkg"

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v1, "ndp_chan_infos"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "makeNdpChangedEvent, Extra : "

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v3, "iface"

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, " dimension : "

    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 107
    .line 108
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setExtra(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method private static makeNdpFailedEvent(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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
    const-string v2, "sta_freq"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, ","

    .line 20
    .line 21
    const-string v4, "ndp_cnt"

    .line 22
    .line 23
    invoke-static {v1, v2, v3, p0, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "basic_info"

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v1, "fg_pkg"

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string v1, "reason"

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string v3, "makeNdpFailedEvent, Value : "

    .line 67
    .line 68
    const-string v4, " Extra : "

    .line 69
    .line 70
    invoke-static {v3, v1, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v4, "iface"

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v5, " dimension : "

    .line 86
    .line 87
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 101
    .line 102
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setExtra(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method

.method public static sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "nan_off"

    .line 2
    .line 3
    const-string v1, "nan_on"

    .line 4
    .line 5
    const-string v2, "nan_ndp_failed"

    .line 6
    .line 7
    const-string v3, "nan_ndp_changed"

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    sparse-switch v5, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x3

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v4, 0x2

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v4, 0x1

    .line 47
    goto :goto_0

    .line 48
    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v4, 0x0

    .line 56
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    invoke-static {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->makeAwareOffEvent(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_1
    invoke-static {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->makeAwareOnEvent(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_2
    invoke-static {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->makeNdpFailedEvent(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_3
    invoke-static {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->makeNdpChangedEvent(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x79f53035 -> :sswitch_3
        -0x5a0657ba -> :sswitch_2
        -0x3ec0907d -> :sswitch_1
        0x66ae804b -> :sswitch_0
    .end sparse-switch

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
