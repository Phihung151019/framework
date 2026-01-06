.class public Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;
.super Ljava/lang/Object;
.source "PostProcessingManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostProcessingManager"

.field private static mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;


# instance fields
.field private mAccelerometer:[F

.field private final mContext:Landroid/content/Context;

.field private mDeviceParamExist:Z

.field private mGyroscope:[F

.field private mIsPpModelExist:Z

.field private mOrientation:[F

.field private final mUwb3DPostProcessorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccelerometer(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mAccelerometer:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGyroscope(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mGyroscope:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mOrientation:[F

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mUwb3DPostProcessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mOrientation:[F

    .line 38
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mAccelerometer:[F

    .line 39
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mGyroscope:[F

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mIsPpModelExist:Z

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mDeviceParamExist:Z

    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->setPostProcessingConfigurations()V

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->registerSensorListener(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private isDevice3DPostProcessorExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "shortAddress"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mUwb3DPostProcessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPostProcessingSupported()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mIsPpModelExist:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mDeviceParamExist:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parsePpParam()I
    .locals 33

    .line 152
    const-string v0, "PostProcessingManager"

    const-string v1, "parsePpParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, -0x1

    .line 155
    .local v1, "status":I
    const/4 v2, 0x0

    .line 157
    .local v2, "count":I
    const-wide/16 v3, 0x0

    .local v3, "xIO":D
    const-wide/16 v5, 0x0

    .line 158
    .local v5, "yIO":D
    const-wide/16 v7, 0x0

    .line 159
    .local v7, "beta1":D
    const/4 v9, 0x0

    .line 160
    .local v9, "isAoa1Flipped":Z
    const-wide/16 v10, 0x0

    .line 161
    .local v10, "beta2":D
    const/4 v12, 0x0

    .line 162
    .local v12, "isAoa2Flipped":Z
    const-wide/high16 v13, 0x4044000000000000L    # 40.0

    .line 163
    .local v13, "FoV":D
    const/4 v15, 0x0

    .line 164
    .local v15, "fpFilteringThreshold":I
    const/16 v16, 0x0

    .line 165
    .local v16, "fpFilteringMaxDistance":I
    const/4 v0, 0x0

    move/from16 v17, v1

    .end local v1    # "status":I
    .local v17, "status":I
    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "system/etc/libuwb-cal.conf"

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 166
    .local v1, "file":Ljava/nio/file/Path;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    return v17

    .line 171
    :cond_0
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move/from16 v25, v9

    move-wide/from16 v26, v10

    move/from16 v28, v12

    move-wide/from16 v29, v13

    move/from16 v31, v15

    move/from16 v32, v16

    move/from16 v3, v18

    .end local v5    # "yIO":D
    .end local v7    # "beta1":D
    .end local v9    # "isAoa1Flipped":Z
    .end local v10    # "beta2":D
    .end local v12    # "isAoa2Flipped":Z
    .end local v13    # "FoV":D
    .end local v15    # "fpFilteringThreshold":I
    .end local v16    # "fpFilteringMaxDistance":I
    .local v3, "index":I
    .local v19, "xIO":D
    .local v21, "yIO":D
    .local v23, "beta1":D
    .local v25, "isAoa1Flipped":Z
    .local v26, "beta2":D
    .local v28, "isAoa2Flipped":Z
    .local v29, "FoV":D
    .local v31, "fpFilteringThreshold":I
    .local v32, "fpFilteringMaxDistance":I
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 173
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 174
    .local v4, "readLine":Ljava/lang/String;
    const-string v5, ""

    .line 175
    .local v5, "value":Ljava/lang/String;
    const-string v6, "X_IO"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "="

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    .line 176
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 177
    .end local v5    # "value":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 178
    .end local v19    # "xIO":D
    .local v7, "xIO":D
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v19, v7

    goto/16 :goto_1

    .line 179
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "xIO":D
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v19    # "xIO":D
    :cond_1
    const-string v6, "Y_IO"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 181
    .end local v5    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 182
    .end local v21    # "yIO":D
    .local v7, "yIO":D
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v21, v7

    goto/16 :goto_1

    .line 183
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "yIO":D
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v21    # "yIO":D
    :cond_2
    const-string v6, "BETA1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 185
    .end local v5    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 186
    .end local v23    # "beta1":D
    .local v7, "beta1":D
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v23, v7

    goto/16 :goto_1

    .line 187
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "beta1":D
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v23    # "beta1":D
    :cond_3
    const-string v6, "AOA1_FLIPPED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 188
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 189
    .end local v5    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 190
    const/16 v25, 0x1

    .line 192
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 193
    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    const-string v6, "BETA2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 194
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 195
    .end local v5    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 196
    .end local v26    # "beta2":D
    .local v7, "beta2":D
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v26, v7

    goto :goto_1

    .line 197
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "beta2":D
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v26    # "beta2":D
    :cond_6
    const-string v6, "AOA2_FLIPPED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 198
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 199
    .end local v5    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 200
    const/16 v28, 0x1

    .line 202
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_8
    const-string v6, "FoV"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 204
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 205
    .end local v5    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 206
    .end local v29    # "FoV":D
    .local v7, "FoV":D
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v29, v7

    goto :goto_1

    .line 207
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "FoV":D
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v29    # "FoV":D
    :cond_9
    const-string v6, "FP_FILTERING_THRESHOLD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 208
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 209
    .end local v5    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 210
    .end local v31    # "fpFilteringThreshold":I
    .local v5, "fpFilteringThreshold":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v31, v5

    goto :goto_1

    .line 211
    .end local v6    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v31    # "fpFilteringThreshold":I
    :cond_a
    const-string v6, "FP_FILTERING_MAX_DISTANCE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 212
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 213
    .end local v5    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 214
    .end local v32    # "fpFilteringMaxDistance":I
    .local v5, "fpFilteringMaxDistance":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v32, v5

    .line 172
    .end local v4    # "readLine":Ljava/lang/String;
    .end local v5    # "fpFilteringMaxDistance":I
    .end local v6    # "value":Ljava/lang/String;
    .restart local v32    # "fpFilteringMaxDistance":I
    :cond_b
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 218
    .end local v3    # "index":I
    :cond_c
    const/4 v3, 0x6

    if-lt v2, v3, :cond_d

    .line 219
    const/4 v3, 0x0

    move/from16 v17, v3

    .line 221
    :cond_d
    new-instance v3, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    invoke-direct {v3}, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;-><init>()V

    sput-object v3, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    .line 222
    sget-object v18, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    invoke-virtual/range {v18 .. v32}, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->set(DDDZDZDII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 223
    :catch_0
    move-exception v0

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    move-wide/from16 v7, v23

    move/from16 v9, v25

    move-wide/from16 v10, v26

    move/from16 v12, v28

    move-wide/from16 v13, v29

    move/from16 v15, v31

    move/from16 v16, v32

    goto :goto_2

    .end local v19    # "xIO":D
    .end local v21    # "yIO":D
    .end local v23    # "beta1":D
    .end local v25    # "isAoa1Flipped":Z
    .end local v26    # "beta2":D
    .end local v28    # "isAoa2Flipped":Z
    .end local v29    # "FoV":D
    .end local v31    # "fpFilteringThreshold":I
    .end local v32    # "fpFilteringMaxDistance":I
    .local v3, "xIO":D
    .local v5, "yIO":D
    .local v7, "beta1":D
    .restart local v9    # "isAoa1Flipped":Z
    .restart local v10    # "beta2":D
    .restart local v12    # "isAoa2Flipped":Z
    .restart local v13    # "FoV":D
    .restart local v15    # "fpFilteringThreshold":I
    .restart local v16    # "fpFilteringMaxDistance":I
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move/from16 v25, v9

    move-wide/from16 v26, v10

    move/from16 v28, v12

    move-wide/from16 v29, v13

    move/from16 v31, v15

    move/from16 v32, v16

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "xIO":D
    .end local v5    # "yIO":D
    .end local v7    # "beta1":D
    .end local v9    # "isAoa1Flipped":Z
    .end local v10    # "beta2":D
    .end local v12    # "isAoa2Flipped":Z
    .end local v13    # "FoV":D
    .end local v15    # "fpFilteringThreshold":I
    .end local v16    # "fpFilteringMaxDistance":I
    .restart local v19    # "xIO":D
    .restart local v21    # "yIO":D
    .restart local v23    # "beta1":D
    .restart local v25    # "isAoa1Flipped":Z
    .restart local v26    # "beta2":D
    .restart local v28    # "isAoa2Flipped":Z
    .restart local v29    # "FoV":D
    .restart local v31    # "fpFilteringThreshold":I
    .restart local v32    # "fpFilteringMaxDistance":I
    :goto_3
    return v17
.end method

.method private registerSensorListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-static {p1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;-><init>(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->registerListener(Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;)V

    .line 80
    return-void
.end method

.method private setPostProcessingConfigurations()V
    .locals 3

    .line 143
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/system/etc/pp_model.tflite"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mIsPpModelExist:Z

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->parsePpParam()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mDeviceParamExist:Z

    .line 145
    return-void
.end method

.method private static toRangingLog(Lcom/samsung/uwb/support/data/ranging/RangingData;[Z)Ljava/lang/String;
    .locals 19
    .param p0, "rangingData"    # Lcom/samsung/uwb/support/data/ranging/RangingData;
    .param p1, "isFov"    # [Z

    .line 231
    if-nez p1, :cond_0

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getNumOfRangingMeasurements()B

    move-result v0

    new-array v0, v0, [Z

    .end local p1    # "isFov":[Z
    .local v0, "isFov":[Z
    goto :goto_0

    .line 231
    .end local v0    # "isFov":[Z
    .restart local p1    # "isFov":[Z
    :cond_0
    move-object/from16 v0, p1

    .line 234
    .end local p1    # "isFov":[Z
    .restart local v0    # "isFov":[Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getNumOfRangingMeasurements()B

    move-result v3

    const-string v4, "}"

    if-ge v2, v3, :cond_9

    .line 236
    const/4 v3, 0x0

    .line 237
    .local v3, "aoaFirst":F
    const/4 v5, 0x0

    .line 238
    .local v5, "aoaSecond":F
    const/4 v6, 0x0

    .line 239
    .local v6, "pdoaFirst":F
    const/4 v7, 0x0

    .line 241
    .local v7, "pdoaSecond":F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v8

    instance-of v8, v8, [Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;

    const-string v9, ", fov = "

    const-string v10, ", aoaSecond = "

    const-string v11, ", aoaFirst = "

    if-eqz v8, :cond_1

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v8

    aget-object v8, v8, v2

    check-cast v8, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;

    .line 244
    .local v8, "measurement":Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UwbTDoAMeasurement{macAddress = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 245
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->getMacAddress()[B

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 246
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->getAoaAzimuth()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 247
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->getAoaElevation()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v0, v2

    .line 248
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "strLog":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .end local v4    # "strLog":Ljava/lang/String;
    .end local v8    # "measurement":Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;
    move-object/from16 v17, v0

    goto/16 :goto_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v8

    instance-of v8, v8, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    const/4 v12, 0x2

    const-string v13, ", pdoaSecond = "

    const-string v14, ", pdoaFirst = "

    const/16 v16, 0x0

    if-eqz v8, :cond_4

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v8

    aget-object v8, v8, v2

    check-cast v8, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    .line 253
    .local v8, "measurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v17

    .line 255
    .local v17, "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v18

    if-eqz v18, :cond_3

    .line 256
    const/16 p1, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getNumOfRxForRanging()I

    move-result v15

    if-lt v15, v12, :cond_2

    .line 257
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v12

    aget v3, v12, v16

    .line 258
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v12

    aget v5, v12, p1

    .line 259
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoa()[F

    move-result-object v12

    aget v6, v12, v16

    .line 260
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoa()[F

    move-result-object v12

    aget v7, v12, p1

    goto :goto_2

    .line 261
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getNumOfRxForRanging()I

    move-result v12

    move/from16 v15, p1

    if-lt v12, v15, :cond_3

    .line 262
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v12

    aget v3, v12, v16

    .line 263
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoa()[F

    move-result-object v12

    aget v6, v12, v16

    .line 267
    :cond_3
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RangingTwoWayMeasures{macAddress = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 268
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getMacAddress()[B

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ", rangingStatus = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 269
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getStatus()B

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ", distance = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 270
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getDistance()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v0, v2

    .line 275
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .restart local v4    # "strLog":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .end local v4    # "strLog":Ljava/lang/String;
    .end local v8    # "measurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .end local v17    # "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    move-object/from16 v17, v0

    goto/16 :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v8

    instance-of v8, v8, [Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    if-eqz v8, :cond_8

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v8

    aget-object v8, v8, v2

    check-cast v8, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 280
    .local v8, "measurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getSamsungSpecificDataForOwrForAdv()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    move-result-object v15

    .line 282
    .local v15, "specificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getPdoa()[F

    move-result-object v17

    if-eqz v17, :cond_6

    .line 283
    move-object/from16 v17, v0

    .end local v0    # "isFov":[Z
    .local v17, "isFov":[Z
    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getNumOfRxForRanging()I

    move-result v0

    if-lt v0, v12, :cond_5

    .line 284
    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getAoa()[F

    move-result-object v0

    aget v3, v0, v16

    .line 285
    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getAoa()[F

    move-result-object v0

    const/4 v12, 0x1

    aget v5, v0, v12

    .line 286
    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getPdoa()[F

    move-result-object v0

    aget v6, v0, v16

    .line 287
    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getPdoa()[F

    move-result-object v0

    aget v7, v0, v12

    goto :goto_3

    .line 288
    :cond_5
    const/4 v12, 0x1

    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getNumOfRxForRanging()I

    move-result v0

    if-lt v0, v12, :cond_7

    .line 289
    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getAoa()[F

    move-result-object v0

    aget v3, v0, v16

    .line 290
    invoke-virtual {v15}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getPdoa()[F

    move-result-object v0

    aget v6, v0, v16

    goto :goto_3

    .line 282
    .end local v17    # "isFov":[Z
    .restart local v0    # "isFov":[Z
    :cond_6
    move-object/from16 v17, v0

    .line 293
    .end local v0    # "isFov":[Z
    .restart local v17    # "isFov":[Z
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UwbOwrAoaMeasurement{macAddress = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getMacAddress()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-boolean v9, v17, v2

    .line 299
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "strLog":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 278
    .end local v8    # "measurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    .end local v15    # "specificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    .end local v17    # "isFov":[Z
    .local v0, "isFov":[Z
    :cond_8
    move-object/from16 v17, v0

    .line 235
    .end local v0    # "isFov":[Z
    .end local v3    # "aoaFirst":F
    .end local v5    # "aoaSecond":F
    .end local v6    # "pdoaFirst":F
    .end local v7    # "pdoaSecond":F
    .restart local v17    # "isFov":[Z
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_1

    .end local v17    # "isFov":[Z
    .restart local v0    # "isFov":[Z
    :cond_9
    move-object/from16 v17, v0

    .line 305
    .end local v0    # "isFov":[Z
    .end local v2    # "i":I
    .restart local v17    # "isFov":[Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalibratedRangingData {sequenceNo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getSeqCounter()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sessionId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getSessionToken()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rangingMeasuresType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurementType()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", macAddressMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getMacAddressMode()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", noOfRangingMeasures = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getNumOfRangingMeasurements()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rangingTwoWayMeasures = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "res":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public findOrCreate3DPostProcessor(Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    .locals 6
    .param p1, "rangingMeasure"    # Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    .line 125
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getMacAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "macAddress":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->isDevice3DPostProcessorExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;-><init>(DZLcom/samsung/android/server/uwb/postprocessor/DeviceParams;)V

    .line 129
    .local v1, "uwb3DPostProcessor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mUwb3DPostProcessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v1    # "uwb3DPostProcessor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    nop

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mUwb3DPostProcessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;

    return-object v1

    .line 132
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAvailableToPostProcessing(Lcom/samsung/uwb/support/data/ranging/RangingData;)Z
    .locals 7
    .param p1, "rangingData"    # Lcom/samsung/uwb/support/data/ranging/RangingData;

    .line 317
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getNumOfRangingMeasurements()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 318
    return v1

    .line 321
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v0

    .line 322
    .local v0, "measurements":[Lcom/samsung/uwb/support/data/ranging/Measurement;
    instance-of v2, v0, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 323
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    .line 324
    .local v2, "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v5

    .line 325
    .local v5, "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxModeForRanging()B

    move-result v6

    .line 326
    .local v6, "rxMode":B
    if-eq v6, v4, :cond_2

    if-ne v6, v3, :cond_1

    goto :goto_0

    .end local v2    # "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .end local v5    # "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .end local v6    # "rxMode":B
    :cond_1
    goto :goto_1

    .line 327
    .restart local v2    # "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .restart local v5    # "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .restart local v6    # "rxMode":B
    :cond_2
    :goto_0
    return v4

    .line 329
    .end local v2    # "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .end local v5    # "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .end local v6    # "rxMode":B
    :cond_3
    instance-of v2, v0, [Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    if-eqz v2, :cond_5

    .line 330
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 331
    .local v2, "owrAoaMeasurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getSamsungSpecificDataForOwrForAdv()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    move-result-object v5

    .line 332
    .local v5, "specificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getRxModeForRanging()B

    move-result v6

    .line 333
    .restart local v6    # "rxMode":B
    if-eq v6, v4, :cond_4

    if-ne v6, v3, :cond_6

    .line 334
    :cond_4
    return v4

    .line 329
    .end local v2    # "owrAoaMeasurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    .end local v5    # "specificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    .end local v6    # "rxMode":B
    :cond_5
    :goto_1
    nop

    .line 337
    :cond_6
    return v1
.end method

.method public requestPostProcessing(ZILcom/samsung/uwb/support/data/ranging/RangingData;)Lcom/samsung/uwb/support/data/ranging/RangingData;
    .locals 19
    .param p1, "ppFovEnable"    # Z
    .param p2, "channelId"    # I
    .param p3, "rangingData"    # Lcom/samsung/uwb/support/data/ranging/RangingData;

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "requestPostProcessing"

    const-string v3, "PostProcessingManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getAoaCalibrationStatus()Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mOrientation:[F

    aget v2, v2, v5

    iget-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mOrientation:[F

    aget v6, v6, v4

    move/from16 v7, p2

    invoke-static {v1, v7, v2, v6}, Lcom/samsung/android/server/uwb/postprocessor/AoaCalibrationProcessor;->calibrateRangingData(Lcom/samsung/uwb/support/data/ranging/RangingData;IFF)V

    goto :goto_0

    .line 84
    :cond_0
    move/from16 v7, p2

    .line 88
    :goto_0
    const/4 v2, 0x0

    .line 89
    .local v2, "isFov":[Z
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v6

    instance-of v6, v6, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    if-eqz v6, :cond_4

    .line 90
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    .line 91
    .local v6, "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v9

    .line 92
    .local v9, "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getNumOfRxForRanging()I

    move-result v10

    if-lt v10, v4, :cond_4

    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, "processor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getNumOfRangingMeasurements()B

    move-result v10

    new-array v2, v10, [Z

    .line 95
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getNumOfRangingMeasurements()B

    move-result v11

    if-ge v10, v11, :cond_4

    .line 96
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v11

    aget-object v11, v11, v10

    move-object v14, v11

    check-cast v14, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    .line 97
    .end local v6    # "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .local v14, "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    invoke-virtual {v14}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getStatus()B

    move-result v6

    if-nez v6, :cond_3

    .line 98
    invoke-virtual {v14}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v6

    .line 99
    .end local v9    # "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .local v6, "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    if-nez v6, :cond_1

    .line 100
    return-object v1

    .line 102
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoa()[F

    move-result-object v9

    aget v9, v9, v8

    float-to-int v9, v9

    .line 103
    .local v9, "pdoa1":I
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoa()[F

    move-result-object v11

    aget v11, v11, v5

    float-to-int v11, v11

    .line 104
    .local v11, "pdoa2":I
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoaIndex()[I

    move-result-object v12

    aget v12, v12, v8

    .line 105
    .local v12, "pdoaIndex1":I
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoaIndex()[I

    move-result-object v13

    aget v13, v13, v5

    .line 107
    .local v13, "pdoaIndex2":I
    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->findOrCreate3DPostProcessor(Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;

    move-result-object v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    invoke-virtual {v4, v9, v11, v12, v13}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->initPdoaInfo(IIII)V

    .line 110
    invoke-virtual {v4, v6}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->initRframeMeasures(Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;)V

    .line 111
    iget-object v15, v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mOrientation:[F

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mAccelerometer:[F

    move/from16 v18, v8

    iget-object v8, v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->mGyroscope:[F

    move/from16 v16, v12

    move-object v12, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move v5, v13

    move/from16 v13, p1

    .end local v13    # "pdoaIndex2":I
    .local v4, "pdoaIndex1":I
    .local v5, "pdoaIndex2":I
    .local v12, "processor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    invoke-virtual/range {v12 .. v17}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->calculatePostprocessor(ZLcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;[F[F[F)V

    .line 112
    iget-boolean v8, v12, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    aput-boolean v8, v2, v10

    goto :goto_2

    .line 114
    .end local v5    # "pdoaIndex2":I
    .local v4, "processor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    .local v12, "pdoaIndex1":I
    .restart local v13    # "pdoaIndex2":I
    :cond_2
    move v5, v12

    move-object v12, v4

    move v4, v5

    move/from16 v18, v8

    move v5, v13

    .end local v13    # "pdoaIndex2":I
    .local v4, "pdoaIndex1":I
    .restart local v5    # "pdoaIndex2":I
    .local v12, "processor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    aput-boolean v18, v2, v10

    .line 95
    .end local v4    # "pdoaIndex1":I
    .end local v5    # "pdoaIndex2":I
    .end local v9    # "pdoa1":I
    .end local v11    # "pdoa2":I
    :goto_2
    move-object v9, v6

    move-object v4, v12

    goto :goto_3

    .line 97
    .end local v6    # "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .end local v12    # "processor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    .local v4, "processor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    .local v9, "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    :cond_3
    move/from16 v18, v8

    .line 95
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object v6, v14

    move/from16 v8, v18

    const/4 v5, 0x1

    goto :goto_1

    .line 120
    .end local v4    # "processor":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
    .end local v9    # "specificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .end local v10    # "i":I
    .end local v14    # "twrMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    :cond_4
    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->toRangingLog(Lcom/samsung/uwb/support/data/ranging/RangingData;[Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v1
.end method
