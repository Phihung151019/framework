.class final Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final AUDIO_CODEC_SUPPORTED:[Ljava/lang/String;

.field private static final AUDIO_CONFIG_SUPPORTED:[I

.field private static final AUDIO_SAMPLING_SUPPORTED:[Ljava/lang/String;

.field private static final VIDEO_CODEC_SUPPORTED:[Ljava/lang/String;

.field private static final VIDEO_CONFIG_SUPPORTED:[I

.field private static final VIDEO_RESOLUTION_SUPPORTED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "8kHz"

    .line 2
    .line 3
    const-string v1, "48kHz"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->AUDIO_SAMPLING_SUPPORTED:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "U3840p"

    .line 12
    .line 13
    const-string v6, "N360p"

    .line 14
    .line 15
    const-string v1, "720p"

    .line 16
    .line 17
    const-string v2, "1080p"

    .line 18
    .line 19
    const-string v3, "Q2560p"

    .line 20
    .line 21
    const-string v4, "Q1920p"

    .line 22
    .line 23
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->VIDEO_RESOLUTION_SUPPORTED:[Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    const/4 v1, 0x5

    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x2

    .line 33
    filled-new-array {v2, v3, v0, v1}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->AUDIO_CONFIG_SUPPORTED:[I

    .line 38
    .line 39
    const/16 v0, 0xb

    .line 40
    .line 41
    const/16 v1, 0xc

    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    const/16 v3, 0x9

    .line 46
    .line 47
    const/16 v4, 0xa

    .line 48
    .line 49
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->VIDEO_CONFIG_SUPPORTED:[I

    .line 54
    .line 55
    const-string v0, "mp4a-latm"

    .line 56
    .line 57
    const-string v1, "g711-mlaw"

    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->AUDIO_CODEC_SUPPORTED:[Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "c2.qti.avc.encoder"

    .line 66
    .line 67
    const-string v1, "c2.exynos.h264.encoder"

    .line 68
    .line 69
    const-string v2, "OMX.google.h264.encoder"

    .line 70
    .line 71
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->VIDEO_CODEC_SUPPORTED:[Ljava/lang/String;

    .line 76
    .line 77
    return-void
.end method

.method private static addConfigureOptionForAudio(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "AC"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "AS"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "CH"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v4, "MONO"

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object p1, v4

    .line 29
    :goto_0
    const-string v2, "audioCodec : "

    .line 30
    .line 31
    const-string v3, " , audioSamplingRate : "

    .line 32
    .line 33
    const-string v5, ", audioChannel : "

    .line 34
    .line 35
    invoke-static {v2, v0, v3, v1, v5}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "ContinuityStreamingJSONHelper"

    .line 47
    .line 48
    const-string v5, "addConfigureOptionForAudio"

    .line 49
    .line 50
    invoke-static {v3, v5, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "AAC"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const-string v3, "8kHz"

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    const-string v0, "48kHz"

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    const/4 p1, 0x2

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p0, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    const-string v0, "STEREO"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    const/4 p1, 0x3

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 137
    .line 138
    const-string p1, "Requested sampling rate not supported"

    .line 139
    .line 140
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_4
    const-string p1, "MULAW"

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    const/4 p1, 0x5

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p0, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 170
    .line 171
    const-string p1, "Requested audio codec not supported "

    .line 172
    .line 173
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0
.end method

.method private static addConfigureOptionForVideo(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "VC"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "VR"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    invoke-direct {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "ContinuityStreamingJSONHelper"

    .line 19
    .line 20
    const-string v3, "addConfigureOptionForVideo"

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "H264"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "VP8"

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :cond_0
    const-string v2, "1080p"

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const/16 p1, 0x8

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    :cond_2
    const-string v2, "720p"

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    const/16 p1, 0x9

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    :cond_4
    const-string v2, "Q2560p"

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    const/16 p1, 0xa

    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p0, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_6

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_7

    .line 136
    .line 137
    :cond_6
    const-string v2, "Q1920p"

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_7

    .line 144
    .line 145
    const/16 p1, 0xb

    .line 146
    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p0, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_8

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_9

    .line 168
    .line 169
    :cond_8
    const-string v2, "U3840p"

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_9

    .line 176
    .line 177
    const/16 p1, 0xc

    .line 178
    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p0, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_a

    .line 194
    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_b

    .line 200
    .line 201
    :cond_a
    const-string v0, "N360p"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_b

    .line 208
    .line 209
    const/16 p1, 0xd

    .line 210
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p0, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    .line 222
    .line 223
    const-string p1, "Requested video resolution not supported "

    .line 224
    .line 225
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p0
.end method

.method static createJSONObjectClientInfo()Lorg/json/JSONObject;
    .locals 3

    .line 1
    sget v0, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v1, "TYPE"

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->prepareJSONObjectPeerSupportedFeatures(Lorg/json/JSONObject;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "STREAM_MODE"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "ContinuityStreamingJSONHelper"

    .line 30
    .line 31
    const-string v2, "createJSONObjectClientInfo"

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method static getMediaStreamCapability(Lorg/json/JSONObject;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SECURE_STREAM_SUPPORT"

    .line 4
    .line 5
    const-string v2, "STREAM_MODE_BITMASK"

    .line 6
    .line 7
    const-string v3, "OPERATION_TYPE"

    .line 8
    .line 9
    const-string v4, "STREAM_MODE"

    .line 10
    .line 11
    const-string v5, "VIDEO_CODEC_SUPPORTED"

    .line 12
    .line 13
    const-string v6, "AUDIO_CODEC_SUPPORTED"

    .line 14
    .line 15
    const-string v7, "VIDEO_CONFIG_SUPPORTED"

    .line 16
    .line 17
    const-string v8, "AUDIO_CONFIG_SUPPORTED"

    .line 18
    .line 19
    new-instance v9, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v10, 0x5

    .line 22
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v11, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v12, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v13, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v13, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    const-string v13, "FEATURES"

    .line 46
    .line 47
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v13

    .line 51
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    if-eqz v14, :cond_1

    .line 56
    .line 57
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    new-instance v11, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    const/16 v16, 0x2

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    if-ge v14, v15, :cond_0

    .line 74
    .line 75
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->getInt(I)I

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    add-int/lit8 v14, v14, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move/from16 v17, v10

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    const/16 v16, 0x2

    .line 93
    .line 94
    const-string v8, "AUDIO_SAMPLING_SUPPORTED"

    .line 95
    .line 96
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    new-instance v14, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .line 104
    .line 105
    move/from16 v17, v10

    .line 106
    .line 107
    const/4 v15, 0x0

    .line 108
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-ge v15, v10, :cond_2

    .line 113
    .line 114
    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    add-int/lit8 v15, v15, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const/4 v8, 0x1

    .line 125
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    const-string v8, "48kHz"

    .line 140
    .line 141
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_3

    .line 146
    .line 147
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_2
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_4

    .line 159
    .line 160
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    new-instance v12, Ljava/util/ArrayList;

    .line 165
    .line 166
    move/from16 v8, v17

    .line 167
    .line 168
    invoke-direct {v12, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .line 170
    .line 171
    const/4 v8, 0x0

    .line 172
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    if-ge v8, v10, :cond_5

    .line 177
    .line 178
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getInt(I)I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    add-int/lit8 v8, v8, 0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_4
    const-string v7, "VIDEO_RESOLUTION_SUPPORTED"

    .line 193
    .line 194
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    new-instance v9, Ljava/util/ArrayList;

    .line 199
    .line 200
    const/4 v8, 0x5

    .line 201
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-ge v8, v10, :cond_5

    .line 210
    .line 211
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    add-int/lit8 v8, v8, 0x1

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    const/4 v8, 0x0

    .line 226
    :goto_5
    if-ge v8, v7, :cond_a

    .line 227
    .line 228
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    add-int/lit8 v8, v8, 0x1

    .line 233
    .line 234
    check-cast v10, Ljava/lang/String;

    .line 235
    .line 236
    const-string v11, "1080p"

    .line 237
    .line 238
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    if-eqz v11, :cond_6

    .line 243
    .line 244
    const/16 v10, 0x8

    .line 245
    .line 246
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_6
    const-string v11, "720p"

    .line 255
    .line 256
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-eqz v11, :cond_7

    .line 261
    .line 262
    const/16 v10, 0x9

    .line 263
    .line 264
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_7
    const-string v11, "Q2560p"

    .line 273
    .line 274
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    if-eqz v11, :cond_8

    .line 279
    .line 280
    const/16 v10, 0xa

    .line 281
    .line 282
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_8
    const-string v11, "Q1920p"

    .line 291
    .line 292
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    if-eqz v10, :cond_9

    .line 297
    .line 298
    const/16 v10, 0xb

    .line 299
    .line 300
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_9
    const/16 v10, 0xc

    .line 309
    .line 310
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_a
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    if-eqz v7, :cond_b

    .line 323
    .line 324
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    new-instance v7, Ljava/util/ArrayList;

    .line 329
    .line 330
    const/4 v8, 0x5

    .line 331
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .line 333
    .line 334
    const/4 v8, 0x0

    .line 335
    :goto_6
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    if-ge v8, v9, :cond_b

    .line 340
    .line 341
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    add-int/lit8 v8, v8, 0x1

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_b
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-eqz v6, :cond_c

    .line 356
    .line 357
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    new-instance v6, Ljava/util/ArrayList;

    .line 362
    .line 363
    const/4 v8, 0x5

    .line 364
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .line 366
    .line 367
    const/4 v15, 0x0

    .line 368
    :goto_7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-ge v15, v7, :cond_c

    .line 373
    .line 374
    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    add-int/lit8 v15, v15, 0x1

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_c
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-eqz v5, :cond_d

    .line 389
    .line 390
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    :cond_d
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-eqz v4, :cond_e

    .line 398
    .line 399
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    move/from16 v4, v16

    .line 404
    .line 405
    if-ne v3, v4, :cond_e

    .line 406
    .line 407
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v3, :cond_e

    .line 412
    .line 413
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    :cond_e
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_f

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .line 424
    .line 425
    :cond_f
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const-string v1, "ContinuityStreamingJSONHelper"

    .line 432
    .line 433
    const-string v2, "getMediaStreamCapability"

    .line 434
    .line 435
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    return-void
.end method

.method public static getStreamInfoObject(Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    const-string v0, "getStreamInfoObject"

    .line 2
    .line 3
    const-string v1, "ContinuityStreamingJSONHelper"

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string v4, "PORT"

    .line 16
    .line 17
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string v4, "ENABLE_OPTION"

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const-string v5, "CONFIGURE_OPTION"

    .line 27
    .line 28
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v6, "CODEC_OPTION"

    .line 33
    .line 34
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v6, 0x1

    .line 39
    const-string v7, "AE"

    .line 40
    .line 41
    if-eq v4, v6, :cond_2

    .line 42
    .line 43
    const/4 v6, 0x2

    .line 44
    const-string v8, "VE"

    .line 45
    .line 46
    if-eq v4, v6, :cond_1

    .line 47
    .line 48
    const/4 v6, 0x3

    .line 49
    if-ne v4, v6, :cond_0

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v2, v5}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->addConfigureOptionForAudio(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v5}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->addConfigureOptionForVideo(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    const-string v2, "Enable option not able to parse"

    .line 79
    .line 80
    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_1
    invoke-static {v2, v5}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->addConfigureOptionForVideo(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-static {v2, v5}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->addConfigureOptionForAudio(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v3, "Unsupported :- "

    .line 109
    .line 110
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v3, "Failed to parse json "

    .line 131
    .line 132
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method private static prepareJSONObjectPeerSupportedFeatures(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONArray;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/json/JSONArray;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->AUDIO_SAMPLING_SUPPORTED:[Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    const/4 v5, 0x2

    .line 18
    if-ge v4, v5, :cond_0

    .line 19
    .line 20
    aget-object v5, v2, v4

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->VIDEO_RESOLUTION_SUPPORTED:[Ljava/lang/String;

    .line 29
    .line 30
    move v4, v3

    .line 31
    :goto_1
    const/4 v6, 0x6

    .line 32
    if-ge v4, v6, :cond_1

    .line 33
    .line 34
    aget-object v6, v2, v4

    .line 35
    .line 36
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    sget-object v2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->AUDIO_CONFIG_SUPPORTED:[I

    .line 43
    .line 44
    sget v4, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 45
    .line 46
    new-instance v4, Lorg/json/JSONArray;

    .line 47
    .line 48
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .line 50
    .line 51
    move v6, v3

    .line 52
    :goto_2
    const/4 v7, 0x4

    .line 53
    if-ge v6, v7, :cond_2

    .line 54
    .line 55
    aget v7, v2, v6

    .line 56
    .line 57
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    sget-object v2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->AUDIO_CODEC_SUPPORTED:[Ljava/lang/String;

    .line 64
    .line 65
    sget v6, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 66
    .line 67
    new-instance v6, Lorg/json/JSONArray;

    .line 68
    .line 69
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 70
    .line 71
    .line 72
    move v7, v3

    .line 73
    :goto_3
    if-ge v7, v5, :cond_3

    .line 74
    .line 75
    aget-object v8, v2, v7

    .line 76
    .line 77
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    .line 79
    .line 80
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    sget-object v2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->VIDEO_CONFIG_SUPPORTED:[I

    .line 84
    .line 85
    sget v5, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 86
    .line 87
    new-instance v5, Lorg/json/JSONArray;

    .line 88
    .line 89
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 90
    .line 91
    .line 92
    move v7, v3

    .line 93
    :goto_4
    const/4 v8, 0x5

    .line 94
    if-ge v7, v8, :cond_4

    .line 95
    .line 96
    aget v8, v2, v7

    .line 97
    .line 98
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    sget-object v2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->VIDEO_CODEC_SUPPORTED:[Ljava/lang/String;

    .line 105
    .line 106
    sget v7, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 107
    .line 108
    new-instance v7, Lorg/json/JSONArray;

    .line 109
    .line 110
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .line 112
    .line 113
    :goto_5
    const/4 v8, 0x3

    .line 114
    if-ge v3, v8, :cond_5

    .line 115
    .line 116
    aget-object v8, v2, v3

    .line 117
    .line 118
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_5
    sget v2, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 125
    .line 126
    new-instance v2, Lorg/json/JSONObject;

    .line 127
    .line 128
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v3, "AUDIO_SAMPLING_SUPPORTED"

    .line 132
    .line 133
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    const-string v0, "VIDEO_RESOLUTION_SUPPORTED"

    .line 137
    .line 138
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    const-string v0, "AUDIO_CONFIG_SUPPORTED"

    .line 142
    .line 143
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    const-string v0, "AUDIO_CODEC_SUPPORTED"

    .line 147
    .line 148
    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    const-string v0, "VIDEO_CONFIG_SUPPORTED"

    .line 152
    .line 153
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string v0, "VIDEO_CODEC_SUPPORTED"

    .line 157
    .line 158
    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    const-string v0, "FEATURES"

    .line 162
    .line 163
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    return-void
.end method
