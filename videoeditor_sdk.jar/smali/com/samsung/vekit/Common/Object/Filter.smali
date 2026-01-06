.class public Lcom/samsung/vekit/Common/Object/Filter;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Filter.java"


# static fields
.field private static final AI_GRAIN_TEMPLATE_IMAGE:Ljava/lang/String; = "/system/cameradata/preloadfilters/grain_patch_strong.png"

.field private static final GRAIN_TEMPLATE_IMAGE:Ljava/lang/String; = "/system/cameradata/myfilter/GrainTemplateImage"

.field private static final NOISE_TYPE_GRAY:I = 0x1

.field private static final NOISE_TYPE_NONE:I = 0x0

.field private static final NOISE_TYPE_RGB:I = 0x3


# instance fields
.field private aiGrainInitialPower:I

.field private aiGrainIntensity:F

.field private aiGrainRadius:F

.field private aiGrainStyle:I

.field private aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

.field private auxPath:Ljava/lang/String;

.field private enableAiGrain:Z

.field private enableGrain:Z

.field private enableVignette:Z

.field private filterType:Lcom/samsung/vekit/Common/Type/FilterType;

.field private grainPath:Ljava/lang/String;

.field private grainPower:F

.field private grainRadius:F

.field private jsonPath:Ljava/lang/String;

.field private noiseIntensity:F

.field private noiseType:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "filterPath"    # Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 34
    sget-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    .line 36
    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    .line 38
    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    .line 39
    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    .line 40
    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    .line 41
    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    .line 42
    new-instance v0, Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/IntensityInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    .line 43
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    .line 53
    const/16 v0, 0x24

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    .line 54
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/samsung/vekit/Common/Object/Filter;->id:I

    .line 60
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/Filter;->name:Ljava/lang/String;

    .line 61
    invoke-direct {p0, p4}, Lcom/samsung/vekit/Common/Object/Filter;->setPath(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private parseJson(Ljava/lang/String;)Z
    .locals 18
    .param p1, "jsonPath"    # Ljava/lang/String;

    .line 85
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 87
    .local v3, "json":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "stream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 89
    .local v5, "reader":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v6, "buffer":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .end local v6    # "buffer":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    :cond_0
    nop

    .line 99
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v5, "filter_type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "filterData":Ljava/lang/String;
    const-string v6, "basic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 102
    sget-object v6, Lcom/samsung/vekit/Common/Type/FilterType;->NOISE:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 103
    const-string v6, "noise_intensity"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v6, v8

    iput v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    .line 104
    const-string v6, "noise_color"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "noiseType":Ljava/lang/String;
    const-string v8, "gray"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto :goto_1

    .line 107
    :cond_1
    const-string v8, "rgb"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    const/4 v8, 0x3

    iput v8, v1, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto :goto_1

    .line 110
    :cond_2
    iput v4, v1, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    .line 113
    .end local v6    # "noiseType":Ljava/lang/String;
    :goto_1
    move/from16 v16, v7

    goto/16 :goto_2

    :cond_3
    const-string v6, "myfilter_effect"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, ".aux"

    const/16 v9, 0x2e

    if-eqz v6, :cond_4

    .line 114
    :try_start_2
    sget-object v6, Lcom/samsung/vekit/Common/Type/FilterType;->MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 116
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "filePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    .line 118
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v8, "auxFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    iput-boolean v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    .line 121
    const-string v9, "/system/cameradata/myfilter/GrainTemplateImage"

    iput-object v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    .line 122
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v9, "grainFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    iput-boolean v10, v1, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    .line 125
    const-string v10, "grain_power"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v1, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    .line 126
    const-string v10, "grain_radius"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v1, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    .line 127
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "auxFile":Ljava/io/File;
    .end local v9    # "grainFile":Ljava/io/File;
    move/from16 v16, v7

    goto/16 :goto_2

    :cond_4
    const-string v6, "ai_myfilter_effect"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v10, "ai_grain_initial_power"

    const-string v11, "ai_grain_style"

    const-string v12, "ai_grain_radius"

    const-string v13, "step"

    const-string v14, "default"

    const-string v15, "max"

    move/from16 v16, v7

    const-string v7, "min"

    const-string v4, "ai_grain_power"

    if-eqz v6, :cond_5

    .line 128
    :try_start_3
    sget-object v6, Lcom/samsung/vekit/Common/Type/FilterType;->AI_MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 129
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 130
    .restart local v6    # "filePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    .line 131
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v8    # "auxFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    iput-boolean v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    .line 135
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 136
    .local v4, "grainPowerObject":Lorg/json/JSONObject;
    iget-object v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMin(I)V

    .line 137
    iget-object v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMax(I)V

    .line 138
    iget-object v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setBase(I)V

    .line 139
    iget-object v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setStep(I)V

    .line 141
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v7, v12

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    .line 142
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    .line 143
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    .line 144
    const-string v7, "ai_grain_intensity"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    .line 146
    .end local v4    # "grainPowerObject":Lorg/json/JSONObject;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "auxFile":Ljava/io/File;
    goto :goto_2

    .line 147
    :cond_5
    sget-object v6, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 150
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 151
    .restart local v4    # "grainPowerObject":Lorg/json/JSONObject;
    iget-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMin(I)V

    .line 152
    iget-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMax(I)V

    .line 153
    iget-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setBase(I)V

    .line 154
    iget-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setStep(I)V

    .line 155
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    .line 156
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    .line 157
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 162
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v4    # "grainPowerObject":Lorg/json/JSONObject;
    .end local v5    # "filterData":Ljava/lang/String;
    :goto_2
    nop

    .line 163
    return v16

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, v1, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v5, "parseJson: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/16 v17, 0x0

    return v17

    .line 92
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, v1, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/16 v17, 0x0

    return v17
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 5
    .param p1, "filterPath"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->path:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v1, "filterPath is Empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "filterFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v2, "filterPath doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 76
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/cameradata/preloadfilters/grain_patch_strong.png"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "grainFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/vekit/Common/Object/Filter;->parseJson(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v3, "Parse failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    return-void
.end method


# virtual methods
.method public getAiGrainInitialPower()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    return v0
.end method

.method public getAiGrainIntensity()F
    .locals 1

    .line 252
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    return v0
.end method

.method public getAiGrainPower()Lcom/samsung/vekit/Common/Object/IntensityInfo;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    return-object v0
.end method

.method public getAiGrainRadius()F
    .locals 1

    .line 228
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    return v0
.end method

.method public getAiGrainStyle()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    return v0
.end method

.method public getAuxPath()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()Lcom/samsung/vekit/Common/Type/FilterType;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    return-object v0
.end method

.method public getGrainPath()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGrainPower()F
    .locals 1

    .line 187
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    return v0
.end method

.method public getGrainRadius()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    return v0
.end method

.method public getJsonPath()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNoiseIntensity()F
    .locals 1

    .line 199
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    return v0
.end method

.method public getNoiseType()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableAiGrain()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    return v0
.end method

.method public isEnableGrain()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    return v0
.end method

.method public isEnableVignette()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    return v0
.end method

.method public setAiGrainInitialPower(I)V
    .locals 0
    .param p1, "aiGrainInitialPower"    # I

    .line 248
    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    .line 249
    return-void
.end method

.method public setAiGrainIntensity(F)V
    .locals 0
    .param p1, "aiGrainIntensity"    # F

    .line 256
    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    .line 257
    return-void
.end method

.method public setAiGrainPower(Lcom/samsung/vekit/Common/Object/IntensityInfo;)V
    .locals 0
    .param p1, "aiIntensityInfo"    # Lcom/samsung/vekit/Common/Object/IntensityInfo;

    .line 224
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    .line 225
    return-void
.end method

.method public setAiGrainRadius(F)V
    .locals 0
    .param p1, "aiGrainRadius"    # F

    .line 232
    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    .line 233
    return-void
.end method

.method public setAiGrainStyle(I)V
    .locals 0
    .param p1, "aiGrainStyle"    # I

    .line 240
    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    .line 241
    return-void
.end method

.method public setEnableAiGrain(Z)V
    .locals 0
    .param p1, "enableAiGrain"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    .line 217
    return-void
.end method
