.class public Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final BUFFER_CAPACITY:I = 0x6

.field private static final MAX_BLANK:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemApCacheElement"


# instance fields
.field private ipVersion:I

.field private lastUpdate:J

.field private final mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;",
            ">;"
        }
    .end annotation
.end field

.field private final mClntMac:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mNumBlank:I

.field private final mUid:I


# direct methods
.method public static synthetic $r8$lambda$EOtzmc2_77DqVrIvWIRCGN3UjGA(IILcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->lambda$calculateStats$2(IILcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$IDXhOk3opZm32aGIrMjML0fxo8Y(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->lambda$calculateStats$1(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic $r8$lambda$cyNxxmVj3xLsMn5odQYrW0nJfjM(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->lambda$calculateStats$0(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->key:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mKey:Ljava/lang/String;

    .line 7
    .line 8
    iget v0, p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->uid:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mUid:I

    .line 11
    .line 12
    iget-object v0, p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->cliMacAddr:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mClntMac:Ljava/lang/String;

    .line 15
    .line 16
    iget v0, p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ipVersion:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->ipVersion:I

    .line 19
    .line 20
    new-instance v0, Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->lastUpdate:J

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 38
    .line 39
    return-void
.end method

.method private static synthetic lambda$calculateStats$0(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getTrafficArrayData(I)[F

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    float-to-double p0, p0

    .line 8
    return-wide p0
.end method

.method private static synthetic lambda$calculateStats$1(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getTrafficArrayData(I)[F

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    float-to-double p0, p0

    .line 8
    return-wide p0
.end method

.method private static synthetic lambda$calculateStats$2(IILcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, p2, p1, v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/stream/DoubleStream;->sum()D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    double-to-float p2, v1

    .line 21
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, p3, p1, v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;II)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sum()D

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    double-to-float p0, p0

    .line 40
    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method


# virtual methods
.method public addBlank2Buffer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

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
    check-cast v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->isBlank()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 43
    .line 44
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;-><init>()V

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
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->lastUpdate:J

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
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

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
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->toString(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

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

.method public calculateStats(I)[F
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getTrafficArrayData(I)[F

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    array-length v2, v2

    .line 18
    new-array v3, v2, [F

    .line 19
    .line 20
    new-array v4, v2, [F

    .line 21
    .line 22
    new-array v5, v2, [F

    .line 23
    .line 24
    new-array v6, v2, [F

    .line 25
    .line 26
    new-array v7, v2, [F

    .line 27
    .line 28
    new-array v8, v2, [F

    .line 29
    .line 30
    new-instance v9, Ljava/util/LinkedList;

    .line 31
    .line 32
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-direct {v9, v10}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    new-instance v10, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement$$ExternalSyntheticLambda0;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->sort(Ljava/util/Comparator;)V

    .line 43
    .line 44
    .line 45
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 46
    .line 47
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    div-int/lit8 v10, v10, 0x2

    .line 52
    .line 53
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 54
    .line 55
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    const/4 v12, 0x1

    .line 60
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    const/4 v14, 0x0

    .line 65
    if-eqz v13, :cond_5

    .line 66
    .line 67
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    check-cast v13, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 72
    .line 73
    invoke-virtual {v13, v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getTrafficArrayData(I)[F

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    move v15, v14

    .line 78
    :goto_1
    if-ge v15, v2, :cond_4

    .line 79
    .line 80
    aget v16, v13, v15

    .line 81
    .line 82
    aget v17, v7, v15

    .line 83
    .line 84
    add-float v17, v17, v16

    .line 85
    .line 86
    aput v17, v7, v15

    .line 87
    .line 88
    aget v17, v8, v15

    .line 89
    .line 90
    mul-float v18, v16, v16

    .line 91
    .line 92
    add-float v18, v18, v17

    .line 93
    .line 94
    aput v18, v8, v15

    .line 95
    .line 96
    if-nez v12, :cond_0

    .line 97
    .line 98
    aget v17, v5, v15

    .line 99
    .line 100
    cmpg-float v17, v16, v17

    .line 101
    .line 102
    if-gez v17, :cond_1

    .line 103
    .line 104
    :cond_0
    aput v16, v5, v15

    .line 105
    .line 106
    :cond_1
    if-nez v12, :cond_2

    .line 107
    .line 108
    aget v17, v6, v15

    .line 109
    .line 110
    cmpl-float v17, v16, v17

    .line 111
    .line 112
    if-lez v17, :cond_3

    .line 113
    .line 114
    :cond_2
    aput v16, v6, v15

    .line 115
    .line 116
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    move v12, v14

    .line 120
    goto :goto_0

    .line 121
    :cond_5
    move v11, v14

    .line 122
    :goto_2
    if-ge v11, v2, :cond_6

    .line 123
    .line 124
    aget v12, v7, v11

    .line 125
    .line 126
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 127
    .line 128
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    int-to-float v13, v13

    .line 133
    div-float/2addr v12, v13

    .line 134
    aput v12, v3, v11

    .line 135
    .line 136
    aget v12, v8, v11

    .line 137
    .line 138
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 139
    .line 140
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    int-to-float v13, v13

    .line 145
    div-float/2addr v12, v13

    .line 146
    aget v13, v3, v11

    .line 147
    .line 148
    mul-float/2addr v13, v13

    .line 149
    sub-float/2addr v12, v13

    .line 150
    aput v12, v4, v11

    .line 151
    .line 152
    add-int/lit8 v11, v11, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getTrafficArrayData(I)[F

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    mul-int/lit8 v1, v2, 0x5

    .line 166
    .line 167
    new-array v1, v1, [F

    .line 168
    .line 169
    invoke-static {v3, v14, v1, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v14, v1, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    .line 174
    .line 175
    mul-int/lit8 v0, v2, 0x2

    .line 176
    .line 177
    invoke-static {v4, v14, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    .line 179
    .line 180
    mul-int/lit8 v0, v2, 0x3

    .line 181
    .line 182
    invoke-static {v5, v14, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    .line 184
    .line 185
    mul-int/lit8 v0, v2, 0x4

    .line 186
    .line 187
    invoke-static {v6, v14, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .line 189
    .line 190
    return-object v1
.end method

.method public convertTrafficData2Array(II)[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p2, v0, :cond_1

    .line 8
    .line 9
    mul-int v0, p1, p2

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int/2addr v1, p2

    .line 20
    move p2, v1

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge p2, v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getTrafficArrayData(I)[F

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sub-int v3, p2, v1

    .line 42
    .line 43
    array-length v4, v2

    .line 44
    mul-int/2addr v3, v4

    .line 45
    array-length v4, v2

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 p2, p2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object v0

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    .line 55
    .line 56
    const-string p1, "Number of time steps is larger than the buffer size"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public getBuffer()Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getClntMac()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mClntMac:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIpVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->ipVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLastUpdate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->lastUpdate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNumBlank()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 2
    .line 3
    return p0
.end method

.method public getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mUid:I

    .line 2
    .line 3
    return p0
.end method

.method public hasMaxBlank()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 2
    .line 3
    const/4 v0, 0x4

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

.method public updateBuffer(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

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
    check-cast v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->isBlank()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mNumBlank:I

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->mBuffer:Ljava/util/LinkedList;

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
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->lastUpdate:J

    .line 46
    .line 47
    return-void
.end method
