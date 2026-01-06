.class public Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils;
.super Ljava/lang/Object;
.source "StreamConfigUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistinctRawStreamConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
            ">;"
        }
    .end annotation

    .line 66
    .local p0, "rawStreamConfigCandidateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 71
    .local v0, "mainRawStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    nop

    .line 72
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 76
    .local v1, "subRawStreamConfigStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 77
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 76
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public static getFirstOverFitRawStreamConfig(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    .locals 2
    .param p1, "baseSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;"
        }
    .end annotation

    .line 48
    .local p0, "sourceStreamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils$$ExternalSyntheticLambda0;-><init>(Landroid/util/Size;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 48
    return-object v0
.end method

.method public static getLargestStreamConfigByRatio(Landroid/util/Size;Ljava/util/List;)Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    .locals 13
    .param p0, "baseSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
            ">;)",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;"
        }
    .end annotation

    .line 122
    .local p1, "streamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils;->TAG:Ljava/lang/String;

    const-string v1, "getLargestStreamConfigByRatio - empty streamConfig list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 129
    .local v0, "nearestRatio":D
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 130
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 132
    .local v2, "nearestStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 133
    .local v4, "streamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v5

    .line 134
    .local v5, "streamConfigSize":Landroid/util/Size;
    nop

    .line 135
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 136
    .local v6, "streamConfigSizeRatio":D
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 138
    .local v8, "baseSizeRatio":D
    sub-double v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 139
    .local v10, "diffRatio":D
    cmpg-double v12, v10, v0

    if-gez v12, :cond_1

    .line 140
    move-wide v0, v10

    .line 141
    move-object v2, v4

    .line 143
    .end local v4    # "streamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    .end local v5    # "streamConfigSize":Landroid/util/Size;
    .end local v6    # "streamConfigSizeRatio":D
    .end local v8    # "baseSizeRatio":D
    .end local v10    # "diffRatio":D
    :cond_1
    goto :goto_0

    .line 145
    :cond_2
    return-object v2
.end method

.method public static getNearestRawStreamConfig(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    .locals 8
    .param p1, "baseSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;"
        }
    .end annotation

    .line 91
    .local p0, "sourceStreamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "nearestStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    const/4 v1, 0x0

    .line 97
    .local v1, "smallestDiffSize":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 98
    .local v3, "referStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v4

    .line 99
    .local v4, "referSize":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    .line 100
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 99
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 101
    .local v5, "diffSize":I
    if-eqz v0, :cond_1

    if-ge v5, v1, :cond_2

    .line 102
    :cond_1
    move-object v0, v3

    .line 103
    move v1, v5

    .line 105
    .end local v3    # "referStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    .end local v4    # "referSize":Landroid/util/Size;
    .end local v5    # "diffSize":I
    :cond_2
    goto :goto_0

    .line 107
    :cond_3
    return-object v0
.end method

.method static synthetic lambda$getDistinctRawStreamConfigs$1(Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)Z
    .locals 2
    .param p0, "mainRawStreamConfig"    # Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    .param p1, "rawStreamConfig"    # Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getFormat()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getFormat()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 73
    :goto_1
    return v0
.end method

.method static synthetic lambda$getFirstOverFitRawStreamConfig$0(Landroid/util/Size;Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)Z
    .locals 3
    .param p0, "baseSize"    # Landroid/util/Size;
    .param p1, "rawStreamConfig"    # Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 50
    .local v0, "rawStreamWidth":I
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 52
    .local v1, "rawStreamHeight":I
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
