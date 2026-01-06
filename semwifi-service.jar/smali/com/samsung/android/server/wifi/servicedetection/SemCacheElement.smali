.class public Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final BUFFER_CAPACITY:I = 0x6

.field private static final MAX_BLANK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemCacheElement"


# instance fields
.field private ipVersion:I

.field private ipv4Address:I

.field private ipv6Address:[I

.field private lastUpdate:J

.field private final mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;",
            ">;"
        }
    .end annotation
.end field

.field private final mConvo:Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;

.field private final mKey:I

.field private mNumBlank:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipv6Address:[I

    .line 11
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mKey:I

    .line 12
    iget p1, p2, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipVersion:I

    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipVersion:I

    .line 13
    iget p1, p2, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipv4Address:I

    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipv4Address:I

    .line 14
    iget-object p1, p2, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipv6Address:[I

    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipv6Address:[I

    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mConvo:Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;

    .line 16
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 17
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->lastUpdate:J

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipv6Address:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mKey:I

    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mConvo:Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;

    .line 5
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->lastUpdate:J

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    return-void
.end method

.method private getStringIpv4Address(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit16 v0, p1, 0xff

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "."

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x8

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    shr-int/lit8 v1, p1, 0x10

    .line 27
    .line 28
    and-int/lit16 v1, v1, 0xff

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    shr-int/lit8 p1, p1, 0x18

    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method private getStringIpv6Address([I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget v1, p1, v0

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    aget v2, p1, v0

    .line 16
    .line 17
    shr-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "%02x%02x"

    .line 30
    .line 31
    const-string v3, "."

    .line 32
    .line 33
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    aget v1, p1, v0

    .line 37
    .line 38
    shr-int/lit8 v1, v1, 0x10

    .line 39
    .line 40
    and-int/lit16 v1, v1, 0xff

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    aget v0, p1, v0

    .line 47
    .line 48
    shr-int/lit8 v0, v0, 0x18

    .line 49
    .line 50
    and-int/lit16 v0, v0, 0xff

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aget v1, p1, v0

    .line 65
    .line 66
    and-int/lit16 v1, v1, 0xff

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    aget v4, p1, v0

    .line 73
    .line 74
    shr-int/lit8 v4, v4, 0x8

    .line 75
    .line 76
    and-int/lit16 v4, v4, 0xff

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    aget v1, p1, v0

    .line 90
    .line 91
    shr-int/lit8 v1, v1, 0x10

    .line 92
    .line 93
    and-int/lit16 v1, v1, 0xff

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    aget v0, p1, v0

    .line 100
    .line 101
    shr-int/lit8 v0, v0, 0x18

    .line 102
    .line 103
    and-int/lit16 v0, v0, 0xff

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    aget v1, p1, v0

    .line 118
    .line 119
    and-int/lit16 v1, v1, 0xff

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    aget v4, p1, v0

    .line 126
    .line 127
    shr-int/lit8 v4, v4, 0x8

    .line 128
    .line 129
    and-int/lit16 v4, v4, 0xff

    .line 130
    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    aget v1, p1, v0

    .line 143
    .line 144
    shr-int/lit8 v1, v1, 0x10

    .line 145
    .line 146
    and-int/lit16 v1, v1, 0xff

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    aget v0, p1, v0

    .line 153
    .line 154
    shr-int/lit8 v0, v0, 0x18

    .line 155
    .line 156
    and-int/lit16 v0, v0, 0xff

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 v0, 0x3

    .line 170
    aget v1, p1, v0

    .line 171
    .line 172
    and-int/lit16 v1, v1, 0xff

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    aget v4, p1, v0

    .line 179
    .line 180
    shr-int/lit8 v4, v4, 0x8

    .line 181
    .line 182
    and-int/lit16 v4, v4, 0xff

    .line 183
    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    aget v1, p1, v0

    .line 196
    .line 197
    shr-int/lit8 v1, v1, 0x10

    .line 198
    .line 199
    and-int/lit16 v1, v1, 0xff

    .line 200
    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    aget p1, p1, v0

    .line 206
    .line 207
    shr-int/lit8 p1, p1, 0x18

    .line 208
    .line 209
    and-int/lit16 p1, p1, 0xff

    .line 210
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0
.end method


# virtual methods
.method public addBlank2Buffer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x6

    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->isBlank()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 43
    .line 44
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->lastUpdate:J

    .line 57
    .line 58
    return-void
.end method

.method public buffer2String()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->toString(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v2, v3

    .line 40
    if-ge v1, v2, :cond_0

    .line 41
    .line 42
    const-string v2, "; "

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string p0, "]"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public convertTrafficData2Array(Z)[F
    .locals 6

    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    .line 1
    new-array v0, v0, [F

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    .line 2
    new-array v0, v0, [F

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->getTrafficArrayData(Z)[F

    move-result-object v3

    .line 4
    array-length v4, v3

    mul-int/2addr v4, v2

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public convertTrafficData2Array(ZI)[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt p2, v0, :cond_2

    if-eqz p1, :cond_0

    mul-int/lit8 v0, p2, 0xf

    .line 6
    new-array v0, v0, [F

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p2, 0xa

    .line 7
    new-array v0, v0, [F

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    move p2, v1

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->getTrafficArrayData(Z)[F

    move-result-object v2

    sub-int v3, p2, v1

    .line 11
    array-length v4, v2

    mul-int/2addr v3, v4

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Number of time steps is larger than the buffer size"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBuffer()Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConversation()Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mConvo:Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIpVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public getKey()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mKey:I

    .line 2
    .line 3
    return p0
.end method

.method public getLastUpdate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->lastUpdate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNumBlank()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    .line 2
    .line 3
    return p0
.end method

.method public getServerIpAddress()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipVersion:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipv4Address:I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getStringIpv4Address(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 v1, 0x6

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->ipv6Address:[I

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getStringIpv6Address([I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, ""

    .line 24
    .line 25
    return-object p0
.end method

.method public hasMaxBlank()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public isBufferReady()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v0, 0x6

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBufferReady(I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateBuffer(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x6

    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->isBlank()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mNumBlank:I

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->lastUpdate:J

    .line 46
    .line 47
    return-void
.end method
