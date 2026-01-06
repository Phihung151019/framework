.class public Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;
.super Ljava/lang/Object;
.source "ConfigBuilderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HahsMap:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigBuilderWrapper"


# instance fields
.field private builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

.field mFunctionTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1eXLJ_jcJz5je4lU8PfBQoqAILc(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setUwbChipInfo(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4_T15rdfaPV5kfx7gTBXKwQHVek(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setUwbCalibratinoVersion(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4spYx2isRaQ246f7hGbZjqZlw9c(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setBeta1(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GWOiA2N52cMDO3EoJkVO9wz9JVo(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setTiltOffsetBoundary(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NAO-kjkCdxHXhUjH6UlXg8Ynptk(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setPdoaBoundar(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OBNteoNKCufL63uyI7aHlEw5uX4(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setCalibrationConfig(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QOu0-SzHdIQMW69MAMEH0sPp-oE(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setTiltOffsetCount(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qvS6nCMmmQgD8FExgHe257kFWc(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setCalibrationCount(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gITNkPBG01PPKj-tw3aMiSLxsg4(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setIsAoa1Flipped(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oKy5hegIuioP_LpO5d7XKY9A2v0(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setXIO(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qLOBh3X1m5qANg99TAZ8Jc2-GnQ(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setTiltOffsetValue(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vTDtYt6fQVFYlp46LdhQ2UObztY(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setDeltaPeak(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xiid39DqesZZj-QHvHkq_LNyLUo(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->setBeta2(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->createSetterTable()V

    .line 21
    return-void
.end method

.method private antennaTypeFromConfigName(Ljava/lang/String;)I
    .locals 4
    .param p1, "configName"    # Ljava/lang/String;

    .line 199
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "antString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigBuilderWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "RANGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 207
    const-string v1, "Not Impelemented Items"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v3

    .line 204
    :pswitch_1
    return v3

    :pswitch_data_0
    .packed-switch 0x6516869a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private channelIdFromConfigName(Ljava/lang/String;)I
    .locals 5
    .param p1, "configName"    # Ljava/lang/String;

    .line 179
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "splitedString":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 181
    return v2

    .line 184
    :cond_0
    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v4, "CH9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "CH5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 192
    const-string v2, "ConfigBuilderWrapper"

    const-string v3, "No Channel_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v1

    .line 189
    :pswitch_0
    const/16 v1, 0x9

    return v1

    .line 186
    :pswitch_1
    const/4 v1, 0x5

    return v1

    :sswitch_data_0
    .sparse-switch
        0x10470 -> :sswitch_1
        0x10474 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBeta1(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 145
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setBeta1(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 146
    return-void
.end method

.method private setBeta2(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 153
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setBeta2(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 154
    return-void
.end method

.method private setCalibrationConfig(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 112
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->channelIdFromConfigName(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "channelId":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v2, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setAoaCalbirationConfig(ILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 114
    return-void
.end method

.method private setCalibrationCount(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 107
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->channelIdFromConfigName(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "channelId":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v2, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setAoaCalbirationCount(ILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 109
    return-void
.end method

.method private setDeltaPeak(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 133
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setTxDeltaPeak(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 134
    return-void
.end method

.method private setIsAoa1Flipped(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 149
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setIsAoa1Flipped(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 150
    return-void
.end method

.method private setPdoaBoundar(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 117
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->channelIdFromConfigName(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "channelId":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v2, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setAoaPdoaBoundary(ILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 119
    return-void
.end method

.method private setTiltOffsetBoundary(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 129
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setTiltOffsetBoundary(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 130
    return-void
.end method

.method private setTiltOffsetCount(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 122
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setTiltOffsetCount(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 123
    return-void
.end method

.method private setTiltOffsetValue(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 125
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setTiltOffsetValue(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 126
    return-void
.end method

.method private setUwbCalibratinoVersion(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 99
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 100
    return-void
.end method

.method private setUwbChipInfo(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 103
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setUwbChipInfo(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 104
    return-void
.end method

.method private setXIO(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 137
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setXIO(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 138
    return-void
.end method


# virtual methods
.method public addConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 75
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orignal value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigBuilderWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "[\\[\\]]"

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->removeUnnecessaryCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "value is Empty"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    .line 85
    .local v0, "settingConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;>;"
    if-nez v0, :cond_1

    .line 86
    const-string v3, "Not valid config item"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v2

    .line 90
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 91
    const/4 v1, 0x1

    return v1
.end method

.method public create()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
    .locals 1

    .line 95
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->build()Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;

    move-result-object v0

    return-object v0
.end method

.method public createSetterTable()V
    .locals 3

    .line 40
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "UWB_CALIBRATION_VERSION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "UWB_CHIP_INFO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "CH5_SEGMENT_CAL_COUNT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "CH9_SEGMENT_CAL_COUNT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "CH5_SEGMENT_CAL_CONFIG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "CH9_SEGMENT_CAL_CONFIG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "CH9_SEGMENT_PDOA_BOUNDARY"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "CH5_RX_ANT_FOR_RANGING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "CH9_RX_ANT_FOR_RANGING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "TILT_OFFSET_COUNT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "TILT_OFFSET_VALUE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "TILT_OFFSET_BOUNDARY"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "TX_DELTA_PEAK"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "X_IO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "Y_IO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "BETA1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "AOA1_FLIPPED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "BETA2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "AOA2_FLIPPED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "FoV"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "FP_FILTERING_THRESHOLDLTA_PEAK"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->mFunctionTable:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;)V

    const-string v2, "FP_FILTERING_MAX_DISTANCE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public removeUnnecessaryCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "regEx"    # Ljava/lang/String;

    .line 71
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFov(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 161
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setFov(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 162
    return-void
.end method

.method public setFpFilteringMaxDistance(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 169
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setFpFilteringMaxDistance(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 170
    return-void
.end method

.method public setFpFilteringThreshold(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 165
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setFpFilteringThreshold(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 166
    return-void
.end method

.method public setIsAoa2Flipped(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 157
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setIsAoa2Flipped(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 158
    return-void
.end method

.method public setRxAntennaPairs(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 173
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->channelIdFromConfigName(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "channelId":I
    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->antennaTypeFromConfigName(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "antennaType":I
    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v3, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setRxAntennaPairs(IILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 176
    return-void
.end method

.method public setYIO(Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    .line 141
    .local p0, "this":Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;, "Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper<THahsMap;>;"
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;->builder:Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    iget-object v1, p1, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;->setYIO(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$Builder;

    .line 142
    return-void
.end method
