.class Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugLogger"
.end annotation


# static fields
.field private static final APE_EXTRA_DEBUG_TXT:Ljava/lang/String; = "logtxt"

.field private static final BASE_PATH:Ljava/lang/String; = "/data/log/wifi/ape2.0/"

.field private static final COLUMNS:Ljava/lang/String; = "time,timestamp,appRx,bgRx,Restriction,isRuleApplied,isRecal,oldGamma,updatedTotalEstimate,gAPI,NetworkBottleneckCount,ServerBottleneckCount,decCount,RSSI,RxLinkSpeed,TxLinkSpeed,MinLinkspeed,StreamRx,ExtraInfo"


# instance fields
.field private mCumJitterNrt:J

.field private mCumJitterRt:J

.field private mCumSpeedNRt:J

.field private mCumSpeedRt:J

.field private final mExtraInfo:Ljava/lang/StringBuffer;

.field private mIsTxtLoggingEnabled:Z

.field private final mLogData:Ljava/lang/StringBuffer;

.field private mPrevSpeedNrt:J

.field private mPrevSpeedRt:J

.field private final mShortName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mShortName:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v0, "com.activision.callofduty.shooter"

    .line 14
    .line 15
    const-string v1, "COD"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v0, "com.supercell.brawlstars"

    .line 21
    .line 22
    const-string v1, "BRAWL"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v0, "com.google.android.apps.tachyon"

    .line 28
    .line 29
    const-string v1, "DUO"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v0, "us.zoom.videomeetings"

    .line 35
    .line 36
    const-string v1, "ZOOM"

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v0, "com.microsoft.teams"

    .line 42
    .line 43
    const-string v1, "msTEAMS"

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string v0, "com.pubg.imobile"

    .line 49
    .line 50
    const-string v1, "PUBG"

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mIsTxtLoggingEnabled:Z

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuffer;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mExtraInfo:Ljava/lang/StringBuffer;

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuffer;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mLogData:Ljava/lang/StringBuffer;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->init()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private createDirectory()Z
    .locals 7

    .line 1
    const-string p0, "/"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v1, "/data/log/wifi/ape2.0/"

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_1

    .line 18
    .line 19
    aget-object v5, v1, v4

    .line 20
    .line 21
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v5, Ljava/io/File;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_0

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 43
    .line 44
    .line 45
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    return v3

    .line 49
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method private getCurTimeDetails()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "yyMMdd_HHmmss"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method appendExtraInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mExtraInfo:Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/16 v0, 0x5b

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x5d

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method createCsvFile(Ljava/lang/String;I)Z
    .locals 9

    .line 1
    const-string v0, "Saved to "

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mIsTxtLoggingEnabled:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumSpeedRt:J

    .line 17
    .line 18
    long-to-double v3, v3

    .line 19
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    mul-double/2addr v3, v5

    .line 22
    int-to-double v7, p2

    .line 23
    div-double/2addr v3, v7

    .line 24
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ","

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumJitterRt:J

    .line 33
    .line 34
    long-to-double v3, v3

    .line 35
    mul-double/2addr v3, v5

    .line 36
    div-double/2addr v3, v7

    .line 37
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumSpeedNRt:J

    .line 44
    .line 45
    long-to-double v3, v3

    .line 46
    mul-double/2addr v3, v5

    .line 47
    div-double/2addr v3, v7

    .line 48
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumJitterNrt:J

    .line 55
    .line 56
    long-to-double v3, v3

    .line 57
    mul-double/2addr v3, v5

    .line 58
    div-double/2addr v3, v7

    .line 59
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->VER()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v3, "\n"

    .line 72
    .line 73
    invoke-static {v1, p2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mLogData:Ljava/lang/StringBuffer;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-lez p2, :cond_2

    .line 87
    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "/data/log/wifi/ape2.0/"

    .line 91
    .line 92
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->getCurTimeDetails()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, "_"

    .line 103
    .line 104
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mShortName:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/lang/String;

    .line 114
    .line 115
    const-string v1, ".csv"

    .line 116
    .line 117
    invoke-static {p2, p1, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->createDirectory()Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_2

    .line 126
    .line 127
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    .line 128
    .line 129
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    :try_start_1
    const-string v1, "time,timestamp,appRx,bgRx,Restriction,isRuleApplied,isRecal,oldGamma,updatedTotalEstimate,gAPI,NetworkBottleneckCount,ServerBottleneckCount,decCount,RSSI,RxLinkSpeed,TxLinkSpeed,MinLinkspeed,StreamRx,ExtraInfo\n"

    .line 133
    .line 134
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mLogData:Ljava/lang/StringBuffer;

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 160
    .line 161
    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    .line 179
    .line 180
    const/4 p0, 0x1

    .line 181
    return p0

    .line 182
    :catch_0
    move-exception p0

    .line 183
    goto :goto_1

    .line 184
    :catchall_0
    move-exception p0

    .line 185
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :catchall_1
    move-exception p1

    .line 190
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 194
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    :cond_2
    return v2
.end method

.method getEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mIsTxtLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method init()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mPrevSpeedRt:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mPrevSpeedNrt:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumJitterNrt:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumJitterRt:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumSpeedNRt:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumSpeedRt:J

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mLogData:Ljava/lang/StringBuffer;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method periodicLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumSpeedRt:J

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    add-long/2addr v2, v4

    .line 12
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumSpeedRt:J

    .line 13
    .line 14
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumSpeedNRt:J

    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    add-long/2addr v2, v4

    .line 21
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumSpeedNRt:J

    .line 22
    .line 23
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumJitterRt:J

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mPrevSpeedRt:J

    .line 40
    .line 41
    sub-long/2addr v4, v6

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    add-long/2addr v4, v2

    .line 47
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumJitterRt:J

    .line 48
    .line 49
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumJitterNrt:J

    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mPrevSpeedNrt:J

    .line 56
    .line 57
    sub-long/2addr v4, v6

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    add-long/2addr v4, v2

    .line 63
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mCumJitterNrt:J

    .line 64
    .line 65
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    long-to-int v2, v2

    .line 70
    int-to-long v2, v2

    .line 71
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mPrevSpeedRt:J

    .line 72
    .line 73
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    long-to-int v2, v2

    .line 78
    int-to-long v2, v2

    .line 79
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mPrevSpeedNrt:J

    .line 80
    .line 81
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 82
    .line 83
    const-string v3, "HH:mm:ss.SSS "

    .line 84
    .line 85
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 86
    .line 87
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 88
    .line 89
    .line 90
    new-instance v3, Ljava/util/Date;

    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mIsTxtLoggingEnabled:Z

    .line 104
    .line 105
    const-wide/16 v4, 0x3e8

    .line 106
    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mLogData:Ljava/lang/StringBuffer;

    .line 110
    .line 111
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 112
    .line 113
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    iget v6, v6, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 118
    .line 119
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    .line 121
    .line 122
    const-string v6, ","

    .line 123
    .line 124
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    .line 132
    .line 133
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v7

    .line 137
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    .line 142
    .line 143
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    .line 152
    .line 153
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 154
    .line 155
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 160
    .line 161
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 168
    .line 169
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    .line 178
    .line 179
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 180
    .line 181
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->isRestrictPhase()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    xor-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 198
    .line 199
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-wide v7, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 204
    .line 205
    long-to-int v2, v7

    .line 206
    div-int/lit16 v2, v2, 0x3e8

    .line 207
    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    .line 213
    .line 214
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 215
    .line 216
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iget-wide v7, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 221
    .line 222
    div-long/2addr v7, v4

    .line 223
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    .line 228
    .line 229
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 230
    .line 231
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    div-int/lit16 v2, v2, 0x3e8

    .line 236
    .line 237
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    .line 242
    .line 243
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 244
    .line 245
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 250
    .line 251
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    .line 256
    .line 257
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 258
    .line 259
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mServerBottleneckCount:I

    .line 264
    .line 265
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    .line 276
    .line 277
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 278
    .line 279
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    .line 288
    .line 289
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 290
    .line 291
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    .line 300
    .line 301
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 302
    .line 303
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    .line 312
    .line 313
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 314
    .line 315
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmMinLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    .line 324
    .line 325
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedStreaming(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v7

    .line 329
    div-long/2addr v7, v4

    .line 330
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    .line 335
    .line 336
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mExtraInfo:Ljava/lang/StringBuffer;

    .line 337
    .line 338
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 339
    .line 340
    .line 341
    const-string v2, "\n"

    .line 342
    .line 343
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    .line 345
    .line 346
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 352
    .line 353
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 358
    .line 359
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 360
    .line 361
    .line 362
    move-result-wide v6

    .line 363
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 364
    .line 365
    .line 366
    move-result-wide v8

    .line 367
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 368
    .line 369
    .line 370
    move-result-wide v10

    .line 371
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 372
    .line 373
    .line 374
    move-result-wide v12

    .line 375
    iget-object v14, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 376
    .line 377
    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 378
    .line 379
    .line 380
    move-result-object v14

    .line 381
    iget v14, v14, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 382
    .line 383
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 384
    .line 385
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 386
    .line 387
    .line 388
    move-result-object v15

    .line 389
    move-wide/from16 v16, v4

    .line 390
    .line 391
    iget-wide v4, v15, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 392
    .line 393
    div-long v4, v4, v16

    .line 394
    .line 395
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 396
    .line 397
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 398
    .line 399
    .line 400
    move-result-object v15

    .line 401
    move-object/from16 v18, v2

    .line 402
    .line 403
    iget-wide v1, v15, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 404
    .line 405
    div-long v1, v1, v16

    .line 406
    .line 407
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 408
    .line 409
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 410
    .line 411
    .line 412
    move-result v15

    .line 413
    div-int/lit16 v15, v15, 0x3e8

    .line 414
    .line 415
    move/from16 v16, v15

    .line 416
    .line 417
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 418
    .line 419
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 420
    .line 421
    .line 422
    move-result-object v15

    .line 423
    iget v15, v15, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 424
    .line 425
    move/from16 v17, v15

    .line 426
    .line 427
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 428
    .line 429
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 430
    .line 431
    .line 432
    move-result-object v15

    .line 433
    iget v15, v15, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mServerBottleneckCount:I

    .line 434
    .line 435
    move/from16 p1, v15

    .line 436
    .line 437
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 438
    .line 439
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 440
    .line 441
    .line 442
    move-result v15

    .line 443
    move/from16 p2, v15

    .line 444
    .line 445
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 446
    .line 447
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 448
    .line 449
    .line 450
    move-result v15

    .line 451
    move/from16 v19, v15

    .line 452
    .line 453
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 454
    .line 455
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 456
    .line 457
    .line 458
    move-result v15

    .line 459
    move/from16 v20, v15

    .line 460
    .line 461
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 462
    .line 463
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 464
    .line 465
    .line 466
    move-result v15

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    move/from16 v21, v15

    .line 470
    .line 471
    const-string v15, "Timer="

    .line 472
    .line 473
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v3, " RT(R="

    .line 480
    .line 481
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v3, " T="

    .line 488
    .line 489
    const-string v6, ") NRT(R="

    .line 490
    .line 491
    invoke-static {v0, v3, v8, v9, v6}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v6, ") Alloc="

    .line 498
    .line 499
    invoke-static {v0, v3, v12, v13, v6}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v6, " Estimate(gamma="

    .line 506
    .line 507
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string v4, " our="

    .line 514
    .line 515
    const-string v5, " gapi="

    .line 516
    .line 517
    invoke-static {v0, v4, v1, v2, v5}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const-string v1, ") NB="

    .line 521
    .line 522
    const-string v2, " SB="

    .line 523
    .line 524
    move/from16 v15, v16

    .line 525
    .line 526
    move/from16 v4, v17

    .line 527
    .line 528
    invoke-static {v0, v15, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 529
    .line 530
    .line 531
    const-string v1, " DC="

    .line 532
    .line 533
    const-string v2, " Link(R="

    .line 534
    .line 535
    move/from16 v5, p1

    .line 536
    .line 537
    move/from16 v4, p3

    .line 538
    .line 539
    invoke-static {v0, v5, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 540
    .line 541
    .line 542
    const-string v1, ") RSSI="

    .line 543
    .line 544
    move/from16 v2, p2

    .line 545
    .line 546
    move/from16 v4, v19

    .line 547
    .line 548
    invoke-static {v0, v2, v3, v4, v1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 549
    .line 550
    .line 551
    move/from16 v1, v20

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    const-string v1, " Rule=["

    .line 557
    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    move/from16 v1, v21

    .line 562
    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    const-string v1, "]"

    .line 567
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    move-object/from16 v1, v18

    .line 576
    .line 577
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    move-object/from16 v0, p0

    .line 581
    .line 582
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mExtraInfo:Ljava/lang/StringBuffer;

    .line 583
    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mExtraInfo:Ljava/lang/StringBuffer;

    .line 592
    .line 593
    const/4 v3, 0x0

    .line 594
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 595
    .line 596
    .line 597
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 598
    .line 599
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    if-nez v2, :cond_3

    .line 604
    .line 605
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 606
    .line 607
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 612
    .line 613
    if-eqz v2, :cond_2

    .line 614
    .line 615
    goto :goto_0

    .line 616
    :cond_2
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    return-void

    .line 620
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 624
    .line 625
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    return-void
.end method

.method setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mIsTxtLoggingEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->init()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->mIsTxtLoggingEnabled:Z

    .line 11
    .line 12
    return-void
.end method
