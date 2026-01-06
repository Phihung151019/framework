.class public Lcom/samsung/android/gesture/ExposureToLuxMapping;
.super Ljava/lang/Object;
.source "ExposureToLuxMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;,
        Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;,
        Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    }
.end annotation


# static fields
.field private static final DEBUG_HISTORY_SIZE:I = 0x64

.field private static final DEFAULT_VAL_BRIGHTNESS:F = 2000000.0f

.field private static final DEFAULT_VAL_EXPOSURE:F = 2000000.0f

.field private static final EV2L_ATTR_DEVICE:Ljava/lang/String; = "target_device"

.field private static final EV2L_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final EV2L_ATTR_VER:Ljava/lang/String; = "table_ver"

.field private static final EV2L_TABLE_DEVICE_DEFAULT:Ljava/lang/String; = "none"

.field private static final EV2L_TABLE_TYPE_DEFAULT:Ljava/lang/String; = "normal"

.field private static final EV2L_TABLE_VER_DEFAULT:Ljava/lang/String; = "00000000"

.field private static final EV2L_TAG_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final EV2L_TAG_EXPOSURE:Ljava/lang/String; = "exposure"

.field private static final EV2L_TAG_HEADER:Ljava/lang/String; = "ev2lux_map"

.field private static final EV2L_TAG_ITEM:Ljava/lang/String; = "item"

.field private static final EV2L_TAG_LUX:Ljava/lang/String; = "lux"

.field private static final EV_TO_LUX_MAP_CONFIG:Ljava/lang/String; = "etc/ev_lux_map_config.xml"

.field private static final EV_TO_LUX_MAP_CONFIG_TO_VENDOR:Ljava/lang/String; = "vendor/etc/ev_lux_map_config.xml"

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field private EV2L_TABLE_DEVICE:Ljava/lang/String;

.field private EV2L_TABLE_TYPE:Ljava/lang/String;

.field private EV2L_TABLE_VER:Ljava/lang/String;

.field private brightness:F

.field private ev2l_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;",
            ">;"
        }
    .end annotation
.end field

.field private exposure:F

.field private flag_config_file:Z

.field private luxEvent:[F

.field private final mContext:Landroid/content/Context;

.field private mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<",
            "Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/ExposureToLuxMapping;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->convertTimeToStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    .line 67
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    .line 68
    const-string v0, "none"

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    .line 69
    const-string v0, "normal"

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/ev_lux_map_config.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v0, "temp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/io/File;

    const-string v2, "vendor/etc/ev_lux_map_config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    .line 88
    iget-boolean v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    if-eqz v1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->readEVtoLuxMap()V

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "MotionRecognitionService"

    const-string v2, "there is no ev_lux_map_config.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void
.end method

.method private checkEmptyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    move-object p1, p2

    .line 216
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 217
    return-object p1
.end method

.method private convertTimeToStr(J)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # J

    .line 1064
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1065
    const-string v0, ""

    return-object v0

    .line 1067
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1068
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1070
    .local v1, "today":Ljava/util/Calendar;
    if-eqz v1, :cond_1

    .line 1071
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1072
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 1074
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1081
    .end local v3    # "month":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLuxFromTable()F
    .locals 5

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "lux":F
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;

    .line 326
    .local v2, "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    iget v3, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    iget v4, v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_exposure:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 327
    goto :goto_0

    .line 329
    :cond_0
    iget v3, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    iget v4, v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_brightness:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 330
    goto :goto_0

    .line 332
    :cond_1
    iget v0, v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_lux:F

    .line 333
    nop

    .line 336
    .end local v2    # "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    :cond_2
    return v0
.end method

.method private readEVtoLuxMap()V
    .locals 11

    .line 235
    const-string v0, "[EV2L] Exception while closing configuation file."

    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/ev_lux_map_config.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    new-instance v3, Ljava/io/File;

    const-string v4, "vendor/etc/ev_lux_map_config.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 239
    :cond_0
    const/4 v3, 0x0

    .line 241
    .local v3, "configReader":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 244
    .local v4, "temp_item":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 249
    :goto_0
    goto :goto_1

    .line 247
    :catch_0
    move-exception v5

    .line 248
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "[EV2L] IOException USE DEFAULT CONFIGURATION."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 245
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 246
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    const-string v6, "[EV2L] USE DEFAULT CONFIGURATION."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 252
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 253
    .local v5, "configParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 254
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .local v6, "type":I
    :goto_2
    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    .line 257
    const/4 v7, 0x0

    .line 259
    .local v7, "name":Ljava/lang/String;
    const-string v8, "item"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 292
    :pswitch_0
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 293
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 294
    if-eqz v4, :cond_8

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EV2L] MAPPED: EV "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_exposure:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " && BR "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_brightness:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_lux:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v8, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 261
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 262
    const-string v9, "ev2lux_map"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 263
    const/4 v8, 0x0

    .line 265
    .local v8, "tmp":Ljava/lang/String;
    const-string v9, "table_ver"

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .end local v8    # "tmp":Ljava/lang/String;
    .local v9, "tmp":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 267
    iput-object v9, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    .line 269
    :cond_1
    const-string v8, "target_device"

    invoke-interface {v5, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 270
    .end local v9    # "tmp":Ljava/lang/String;
    .restart local v8    # "tmp":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 271
    iput-object v8, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    .line 273
    :cond_2
    const-string v9, "type"

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 274
    .end local v8    # "tmp":Ljava/lang/String;
    .restart local v9    # "tmp":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 275
    iput-object v9, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    .line 277
    .end local v9    # "tmp":Ljava/lang/String;
    :cond_3
    goto :goto_3

    :cond_4
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 278
    new-instance v8, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;

    invoke-direct {v8, v10}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;-><init>(Lcom/samsung/android/gesture/ExposureToLuxMapping-IA;)V

    move-object v4, v8

    .line 279
    const v8, 0x49f42400    # 2000000.0f

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setExposure(F)V

    .line 280
    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setBrightness(F)V

    goto :goto_3

    .line 281
    :cond_5
    if-eqz v4, :cond_8

    .line 282
    const-string v8, "exposure"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 283
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setExposure(F)V

    goto :goto_3

    .line 284
    :cond_6
    const-string v8, "brightness"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 285
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setBrightness(F)V

    goto :goto_3

    .line 286
    :cond_7
    const-string v8, "lux"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 287
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setLux(F)V

    .line 303
    :cond_8
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v8

    .line 304
    .end local v7    # "name":Ljava/lang/String;
    goto/16 :goto_2

    .line 311
    .end local v6    # "type":I
    :cond_9
    if-eqz v3, :cond_a

    .line 312
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 314
    :catch_2
    move-exception v6

    .line 315
    .local v6, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v6    # "ioe":Ljava/io/IOException;
    goto :goto_6

    .line 316
    :cond_a
    :goto_4
    goto :goto_6

    .line 310
    .end local v5    # "configParser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    goto :goto_7

    .line 307
    :catch_3
    move-exception v5

    .line 308
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_4
    const-string v6, "[EV2L] IOException on reading Config."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    .end local v5    # "ioe":Ljava/io/IOException;
    if-eqz v3, :cond_b

    .line 312
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 314
    :catch_4
    move-exception v5

    .line 315
    .restart local v5    # "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v5    # "ioe":Ljava/io/IOException;
    goto :goto_6

    .line 316
    :cond_b
    :goto_5
    goto :goto_6

    .line 305
    :catch_5
    move-exception v5

    .line 306
    .local v5, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v6, "[EV2L] XmlPullParserException on reading Config."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 311
    .end local v5    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_b

    .line 312
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 318
    :goto_6
    return-void

    .line 311
    :goto_7
    if-eqz v3, :cond_c

    .line 312
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    .line 314
    :catch_6
    move-exception v6

    .line 315
    .restart local v6    # "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 316
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_c
    :goto_8
    nop

    .line 317
    :goto_9
    throw v5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setLuxDefault()V
    .locals 2

    .line 713
    const-string v0, "MotionRecognitionService"

    const-string v1, "[CameraLightSensor] There is no Ev-Lux table."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void
.end method

.method private setLuxForA105F()V
    .locals 3

    .line 400
    const/high16 v0, 0x41000000    # 8.0f

    .line 401
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41800000    # 16.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 402
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c9a0000    # -230.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 403
    :cond_0
    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_0

    .line 404
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41b80000    # 23.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 405
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 406
    :cond_2
    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_0

    .line 407
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41f80000    # 31.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_0

    .line 408
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42400000    # 48.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_0

    .line 409
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 410
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42ec0000    # 118.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 411
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43200000    # 160.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_0

    .line 412
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x434b0000    # 203.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_0

    .line 413
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43780000    # 248.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_0

    .line 414
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_0

    .line 415
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43b18000    # 355.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_0

    .line 416
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43cd0000    # 410.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x44108000    # 578.0f

    goto/16 :goto_0

    .line 417
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43ee8000    # 477.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_0

    .line 418
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44060000    # 536.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x44408000    # 770.0f

    goto :goto_0

    .line 419
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44170000    # 604.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44598000    # 870.0f

    goto :goto_0

    .line 420
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x442d4000    # 693.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_0

    .line 421
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44430000    # 780.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x448c4000    # 1122.0f

    goto :goto_0

    .line 422
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x445c0000    # 880.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x449d2000    # 1257.0f

    goto :goto_0

    .line 423
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 425
    :cond_14
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 426
    return-void
.end method

.method private setLuxForA105N()V
    .locals 3

    .line 370
    const/high16 v0, 0x41000000    # 8.0f

    .line 371
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 372
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c9a0000    # -230.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 373
    :cond_0
    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_0

    .line 374
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41c80000    # 25.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 375
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 376
    :cond_2
    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_0

    .line 377
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42040000    # 33.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_0

    .line 378
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_0

    .line 379
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42dc0000    # 110.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 380
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42fe0000    # 127.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x42dc0000    # 110.0f

    goto/16 :goto_0

    .line 381
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43610000    # 225.0f

    goto/16 :goto_0

    .line 382
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x433e0000    # 190.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_0

    .line 383
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x436b0000    # 235.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_0

    .line 384
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x438e8000    # 285.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_0

    .line 385
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43aa0000    # 340.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_0

    .line 386
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43c30000    # 390.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x44108000    # 578.0f

    goto/16 :goto_0

    .line 387
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43e38000    # 455.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_0

    .line 388
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44020000    # 520.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x44408000    # 770.0f

    goto :goto_0

    .line 389
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44110000    # 580.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44598000    # 870.0f

    goto :goto_0

    .line 390
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44278000    # 670.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_0

    .line 391
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44390000    # 740.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x448c4000    # 1122.0f

    goto :goto_0

    .line 392
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44530000    # 844.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x449d2000    # 1257.0f

    goto :goto_0

    .line 393
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 395
    :cond_14
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 396
    return-void
.end method

.method private setLuxForA10E()V
    .locals 3

    .line 481
    const/high16 v0, 0x41000000    # 8.0f

    .line 482
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41e80000    # 29.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 483
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b446000    # -1501.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 484
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3bb7c000    # -801.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 485
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3c058000    # -501.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 486
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3cb70000    # -201.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 487
    :cond_3
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 488
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42440000    # 49.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 489
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43050000    # 133.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 490
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43410000    # 193.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_0

    .line 491
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x437a0000    # 250.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_0

    .line 492
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43958000    # 299.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_0

    .line 493
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43ac0000    # 344.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_0

    .line 494
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43ce0000    # 412.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_0

    .line 495
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43f40000    # 488.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_0

    .line 496
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x440bc000    # 559.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_0

    .line 497
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44314000    # 709.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_0

    .line 498
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x446e8000    # 954.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x449f6000    # 1275.0f

    goto/16 :goto_0

    .line 499
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44922000    # 1169.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44d16000    # 1675.0f

    goto :goto_0

    .line 500
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44b52000    # 1449.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_0

    .line 501
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44e44000    # 1826.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x451f6000    # 2550.0f

    goto :goto_0

    .line 502
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x45170000    # 2416.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x4541c000    # 3100.0f

    goto :goto_0

    .line 503
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x4539e000    # 2974.0f

    if-lez v1, :cond_14

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_14

    const v0, 0x458b3000    # 4454.0f

    goto :goto_0

    .line 504
    :cond_14
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const v2, 0x46485000    # 12820.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_15

    const v0, 0x4598f800    # 4895.0f

    goto :goto_0

    .line 505
    :cond_15
    const v0, 0x469c4000    # 20000.0f

    .line 507
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 508
    return-void
.end method

.method private setLuxForA20E()V
    .locals 3

    .line 456
    const/high16 v0, 0x41000000    # 8.0f

    .line 457
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 458
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    if-lez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 459
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 460
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42440000    # 49.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 461
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 462
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42dc0000    # 110.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x42ce0000    # 103.0f

    goto/16 :goto_0

    .line 463
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x43620000    # 226.0f

    goto/16 :goto_0

    .line 464
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x433e0000    # 190.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x439a0000    # 308.0f

    goto/16 :goto_0

    .line 465
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43660000    # 230.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43c20000    # 388.0f

    goto/16 :goto_0

    .line 466
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43ec0000    # 472.0f

    goto/16 :goto_0

    .line 467
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43a00000    # 320.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x440a4000    # 553.0f

    goto/16 :goto_0

    .line 468
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43be0000    # 380.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x44238000    # 654.0f

    goto/16 :goto_0

    .line 469
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43dc0000    # 440.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const/high16 v0, 0x44420000    # 776.0f

    goto :goto_0

    .line 470
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x44608000    # 898.0f

    goto :goto_0

    .line 471
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x440c0000    # 560.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const/high16 v0, 0x447f0000    # 1020.0f

    goto :goto_0

    .line 472
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44200000    # 640.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const/high16 v0, 0x448f0000    # 1144.0f

    goto :goto_0

    .line 473
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44340000    # 720.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44a3a000    # 1309.0f

    goto :goto_0

    .line 474
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x44480000    # 800.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44b78000    # 1468.0f

    goto :goto_0

    .line 475
    :cond_11
    const v0, 0x44cbc000    # 1630.0f

    .line 477
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 478
    return-void
.end method

.method private setLuxForA20F()V
    .locals 3

    .line 779
    const/high16 v0, 0x41000000    # 8.0f

    .line 780
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 781
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c380000    # -400.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 782
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 783
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41b80000    # 23.0f

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 784
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 785
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42340000    # 45.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 786
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 787
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42d20000    # 105.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 788
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_0

    .line 789
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x433e0000    # 190.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_0

    .line 790
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43660000    # 230.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_0

    .line 791
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43820000    # 260.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_0

    .line 792
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x439b0000    # 310.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_0

    .line 793
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43b90000    # 370.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_0

    .line 794
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43d70000    # 430.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_0

    .line 795
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44098000    # 550.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_0

    .line 796
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44340000    # 720.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x449f6000    # 1275.0f

    goto/16 :goto_0

    .line 797
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44610000    # 900.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44d16000    # 1675.0f

    goto :goto_0

    .line 798
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44898000    # 1100.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_0

    .line 799
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44988000    # 1220.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x451f6000    # 2550.0f

    goto :goto_0

    .line 800
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44c58000    # 1580.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x4541c000    # 3100.0f

    goto :goto_0

    .line 801
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44ed8000    # 1900.0f

    if-lez v1, :cond_14

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_14

    const v0, 0x458b3000    # 4454.0f

    goto :goto_0

    .line 802
    :cond_14
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x457a0000    # 4000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_15

    const v0, 0x4598f800    # 4895.0f

    goto :goto_0

    .line 803
    :cond_15
    const v0, 0x469c4000    # 20000.0f

    .line 804
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 805
    return-void
.end method

.method private setLuxForA305()V
    .locals 3

    .line 841
    const/high16 v0, 0x41000000    # 8.0f

    .line 842
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1f0000    # -1800.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 843
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 844
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 845
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 846
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 847
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 848
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 849
    return-void
.end method

.method private setLuxForA307()V
    .locals 3

    .line 830
    const/high16 v0, 0x41000000    # 8.0f

    .line 831
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b5d8000    # -1300.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 832
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 833
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 834
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 835
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 836
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 837
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 838
    return-void
.end method

.method private setLuxForA30C()V
    .locals 3

    .line 429
    const/high16 v0, 0x41000000    # 8.0f

    .line 430
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 431
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    if-lez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 432
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x41900000    # 18.0f

    goto/16 :goto_0

    .line 433
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42a00000    # 80.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 434
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 435
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43200000    # 160.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_0

    .line 436
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_0

    .line 437
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43700000    # 240.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_0

    .line 438
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x438c0000    # 280.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_0

    .line 439
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43a50000    # 330.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_0

    .line 440
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43c30000    # 390.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_0

    .line 441
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43e10000    # 450.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_0

    .line 442
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44110000    # 580.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_0

    .line 443
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x443e0000    # 760.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x449f6000    # 1275.0f

    goto/16 :goto_0

    .line 444
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44688000    # 930.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x44d16000    # 1675.0f

    goto :goto_0

    .line 445
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x448fc000    # 1150.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_0

    .line 446
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44b40000    # 1440.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x451f6000    # 2550.0f

    goto :goto_0

    .line 447
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44ed8000    # 1900.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x4541c000    # 3100.0f

    goto :goto_0

    .line 448
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x4511a000    # 2330.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x458b3000    # 4454.0f

    goto :goto_0

    .line 449
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x453b8000    # 3000.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x4598f800    # 4895.0f

    goto :goto_0

    .line 450
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const v0, 0x469c4000    # 20000.0f

    .line 452
    :cond_14
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 453
    return-void
.end method

.method private setLuxForA31()V
    .locals 3

    .line 973
    const/high16 v0, 0x41000000    # 8.0f

    .line 974
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b308000    # -1660.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 975
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b6a0000    # -1200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 976
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b7cc000    # -1050.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 977
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3bfb8000    # -530.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 978
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43af0000    # 350.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 979
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 980
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 981
    return-void
.end method

.method private setLuxForA405()V
    .locals 3

    .line 808
    const/high16 v0, 0x41000000    # 8.0f

    .line 809
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1f0000    # -1800.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 810
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b380000    # -1600.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 811
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b510000    # -1400.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 812
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 813
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c060000    # -500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 814
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 815
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 816
    return-void
.end method

.method private setLuxForA41()V
    .locals 3

    .line 819
    const/high16 v0, 0x41000000    # 8.0f

    .line 820
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b9f0000    # -900.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 821
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 822
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 823
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 824
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x44160000    # 600.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 825
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 826
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 827
    return-void
.end method

.method private setLuxForA50()V
    .locals 3

    .line 962
    const/high16 v0, 0x41000000    # 8.0f

    .line 963
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b2b8000    # -1700.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 964
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b380000    # -1600.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 965
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b510000    # -1400.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 966
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 967
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 968
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 969
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 970
    return-void
.end method

.method private setLuxForA507()V
    .locals 3

    .line 852
    const/high16 v0, 0x41000000    # 8.0f

    .line 853
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3af68000    # -2200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 854
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b380000    # -1600.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 855
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b510000    # -1400.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 856
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 857
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c060000    # -500.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 858
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 859
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 860
    return-void
.end method

.method private setLuxForA515()V
    .locals 3

    .line 863
    const/high16 v0, 0x41000000    # 8.0f

    .line 864
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b128000    # -1900.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 865
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b5d8000    # -1300.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 866
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b768000    # -1100.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 867
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 868
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 869
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 870
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 871
    return-void
.end method

.method private setLuxForA516()V
    .locals 3

    .line 874
    const/high16 v0, 0x41000000    # 8.0f

    .line 875
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3aea0000    # -2400.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 876
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b448000    # -1500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 877
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b6a0000    # -1200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 878
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3bf68000    # -550.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 879
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 880
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 881
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 882
    return-void
.end method

.method private setLuxForA60C()V
    .locals 3

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41800000    # 16.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 514
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42040000    # 33.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 515
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3d380000    # -100.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 516
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 517
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 518
    :cond_3
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 519
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 520
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43020000    # 130.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 521
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_0

    .line 522
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43660000    # 230.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_0

    .line 523
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_0

    .line 524
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x439d8000    # 315.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_0

    .line 525
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43c08000    # 385.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_0

    .line 526
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43d98000    # 435.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_0

    .line 527
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43f78000    # 495.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_0

    .line 528
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x441d8000    # 630.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_0

    .line 529
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44534000    # 845.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x449f6000    # 1275.0f

    goto/16 :goto_0

    .line 530
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44820000    # 1040.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44d16000    # 1675.0f

    goto :goto_0

    .line 531
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44a28000    # 1300.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_0

    .line 532
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44ce4000    # 1650.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x451f6000    # 2550.0f

    goto :goto_0

    .line 533
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x450c0000    # 2240.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x4541c000    # 3100.0f

    goto :goto_0

    .line 534
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x452be000    # 2750.0f

    if-lez v1, :cond_14

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_14

    const v0, 0x458b3000    # 4454.0f

    goto :goto_0

    .line 535
    :cond_14
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x45480000    # 3200.0f

    if-lez v1, :cond_15

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_15

    const v0, 0x4598f800    # 4895.0f

    goto :goto_0

    .line 536
    :cond_15
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_16

    const v0, 0x469c4000    # 20000.0f

    .line 538
    :cond_16
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 539
    return-void
.end method

.method private setLuxForA70()V
    .locals 3

    .line 907
    const/high16 v0, 0x41000000    # 8.0f

    .line 908
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b448000    # -1500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 909
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 910
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 911
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 912
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 913
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 914
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 915
    return-void
.end method

.method private setLuxForA71()V
    .locals 3

    .line 885
    const/high16 v0, 0x41000000    # 8.0f

    .line 886
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b128000    # -1900.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 887
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b768000    # -1100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 888
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 889
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3bea0000    # -600.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 890
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3ee00000    # -10.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 891
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 892
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 893
    return-void
.end method

.method private setLuxForA71U()V
    .locals 3

    .line 896
    const/high16 v0, 0x41000000    # 8.0f

    .line 897
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3afcc000    # -2100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 898
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 899
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3bea0000    # -600.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 900
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c380000    # -400.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 901
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 902
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 903
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 904
    return-void
.end method

.method private setLuxForA908()V
    .locals 3

    .line 929
    const/high16 v0, 0x41000000    # 8.0f

    .line 930
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b448000    # -1500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 931
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 932
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 933
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 934
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 935
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 936
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 937
    return-void
.end method

.method private setLuxForG770()V
    .locals 3

    .line 918
    const/high16 v0, 0x41000000    # 8.0f

    .line 919
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1a0000    # -1840.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 920
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b600000    # -1280.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 921
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 922
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c010000    # -510.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 923
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3e600000    # -20.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 924
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 925
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 926
    return-void
.end method

.method private setLuxForJ600()V
    .locals 3

    .line 748
    const/high16 v0, 0x41000000    # 8.0f

    .line 749
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41e80000    # 29.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 750
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b060000    # -2000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 751
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3cfd0000    # -131.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 752
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x421c0000    # 39.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 753
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 754
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x435c0000    # 220.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 755
    :cond_4
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 756
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42960000    # 75.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 757
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43050000    # 133.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 758
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43410000    # 193.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_0

    .line 759
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x437a0000    # 250.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_0

    .line 760
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43958000    # 299.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_0

    .line 761
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43ac0000    # 344.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_0

    .line 762
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43ce0000    # 412.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_0

    .line 763
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43f40000    # 488.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_0

    .line 764
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x4415c000    # 599.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_0

    .line 765
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44314000    # 709.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_0

    .line 766
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x446e8000    # 954.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x449f6000    # 1275.0f

    goto/16 :goto_0

    .line 767
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44922000    # 1169.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44d16000    # 1675.0f

    goto :goto_0

    .line 768
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44b52000    # 1449.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_0

    .line 769
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44e44000    # 1826.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x451f6000    # 2550.0f

    goto :goto_0

    .line 770
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x45170000    # 2416.0f

    if-lez v1, :cond_14

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_14

    const v0, 0x4541c000    # 3100.0f

    goto :goto_0

    .line 771
    :cond_14
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x4539e000    # 2974.0f

    if-lez v1, :cond_15

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_15

    const v0, 0x458b3000    # 4454.0f

    goto :goto_0

    .line 772
    :cond_15
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x46485000    # 12820.0f

    if-lez v1, :cond_16

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_16

    const v0, 0x4598f800    # 4895.0f

    goto :goto_0

    .line 773
    :cond_16
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    const v0, 0x469c4000    # 20000.0f

    .line 775
    :cond_17
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 776
    return-void
.end method

.method private setLuxForM10()V
    .locals 3

    .line 602
    const/high16 v0, 0x41000000    # 8.0f

    .line 603
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 604
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f700000    # -4.5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 605
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3fe00000    # -2.5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 606
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_0

    .line 607
    :cond_2
    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_0

    .line 608
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41a80000    # 21.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 609
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_0

    .line 610
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_0

    .line 611
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 612
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42d20000    # 105.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 613
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x430c0000    # 140.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_0

    .line 614
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_0

    .line 615
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x435c0000    # 220.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_0

    .line 616
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_0

    .line 617
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43a00000    # 320.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_0

    .line 618
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x44108000    # 578.0f

    goto/16 :goto_0

    .line 619
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43cd0000    # 410.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_0

    .line 620
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43e60000    # 460.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44408000    # 770.0f

    goto :goto_0

    .line 621
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44070000    # 540.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44598000    # 870.0f

    goto :goto_0

    .line 622
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44188000    # 610.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_0

    .line 623
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x442f0000    # 700.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x448c4000    # 1122.0f

    goto :goto_0

    .line 624
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    if-lez v1, :cond_14

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_14

    const v0, 0x449d2000    # 1257.0f

    goto :goto_0

    .line 625
    :cond_14
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 627
    :cond_15
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 628
    return-void
.end method

.method private setLuxForM105M()V
    .locals 3

    .line 631
    const/high16 v0, 0x41000000    # 8.0f

    .line 632
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 633
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3fc00000    # -3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 634
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 635
    :cond_1
    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_0

    .line 636
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41a80000    # 21.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 637
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41f80000    # 31.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_0

    .line 638
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42240000    # 41.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_0

    .line 639
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42dc0000    # 110.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 640
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42f20000    # 121.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 641
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x430c0000    # 140.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_0

    .line 642
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_0

    .line 643
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x435c0000    # 220.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_0

    .line 644
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_0

    .line 645
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43a00000    # 320.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_0

    .line 646
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43b90000    # 370.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x44108000    # 578.0f

    goto/16 :goto_0

    .line 647
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43d70000    # 430.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_0

    .line 648
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43f00000    # 480.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x44408000    # 770.0f

    goto :goto_0

    .line 649
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44048000    # 530.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44598000    # 870.0f

    goto :goto_0

    .line 650
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x441d8000    # 630.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_0

    .line 651
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x442f0000    # 700.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x448c4000    # 1122.0f

    goto :goto_0

    .line 652
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x4445c000    # 791.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x449d2000    # 1257.0f

    goto :goto_0

    .line 653
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 655
    :cond_14
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 656
    return-void
.end method

.method private setLuxForM205F()V
    .locals 3

    .line 659
    const/high16 v0, 0x41000000    # 8.0f

    .line 660
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 661
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f200000    # -7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 662
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 663
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 664
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 665
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42440000    # 49.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 666
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 667
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42dc0000    # 110.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 668
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_0

    .line 669
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x433e0000    # 190.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_0

    .line 670
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43660000    # 230.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_0

    .line 671
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_0

    .line 672
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43a00000    # 320.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_0

    .line 673
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43be0000    # 380.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const v0, 0x44108000    # 578.0f

    goto/16 :goto_0

    .line 674
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43dc0000    # 440.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_0

    .line 675
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x44408000    # 770.0f

    goto :goto_0

    .line 676
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x440c0000    # 560.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x44598000    # 870.0f

    goto :goto_0

    .line 677
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44200000    # 640.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_0

    .line 678
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44340000    # 720.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x448c4000    # 1122.0f

    goto :goto_0

    .line 679
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x449d2000    # 1257.0f

    goto :goto_0

    .line 680
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 682
    :cond_13
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 683
    return-void
.end method

.method private setLuxForM205M()V
    .locals 3

    .line 686
    const/high16 v0, 0x41000000    # 8.0f

    .line 687
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 688
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f200000    # -7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 689
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 690
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 691
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41e80000    # 29.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 692
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42440000    # 49.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 693
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42dc0000    # 110.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 694
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 695
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43120000    # 146.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_0

    .line 696
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x433a0000    # 186.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_0

    .line 697
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43620000    # 226.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_0

    .line 698
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43898000    # 275.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_0

    .line 699
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43a20000    # 324.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_0

    .line 700
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43bb0000    # 374.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const v0, 0x44108000    # 578.0f

    goto/16 :goto_0

    .line 701
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43d78000    # 431.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_0

    .line 702
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43f48000    # 489.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x44408000    # 770.0f

    goto :goto_0

    .line 703
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44098000    # 550.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x44598000    # 870.0f

    goto :goto_0

    .line 704
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x441d4000    # 629.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_0

    .line 705
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x442f8000    # 702.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x448c4000    # 1122.0f

    goto :goto_0

    .line 706
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44450000    # 788.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x449d2000    # 1257.0f

    goto :goto_0

    .line 707
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 709
    :cond_13
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 710
    return-void
.end method

.method private setLuxForM30()V
    .locals 4

    .line 542
    const/high16 v0, 0x41000000    # 8.0f

    .line 543
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 544
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f200000    # -7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 545
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 546
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    .line 547
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 548
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_17

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 549
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 550
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v3

    const/high16 v2, 0x42200000    # 40.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 551
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 552
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42dc0000    # 110.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 553
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_0

    .line 554
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43aa0000    # 340.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_0

    .line 555
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43cd0000    # 410.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_0

    .line 556
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43f00000    # 480.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_0

    .line 557
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44110000    # 580.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_0

    .line 558
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x442a0000    # 680.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_0

    .line 559
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44430000    # 780.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_0

    .line 560
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x445c0000    # 880.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_0

    .line 561
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44af0000    # 1400.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x449f6000    # 1275.0f

    goto/16 :goto_0

    .line 562
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44d48000    # 1700.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44d16000    # 1675.0f

    goto :goto_0

    .line 563
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x45098000    # 2200.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_0

    .line 564
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x45228000    # 2600.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x451f6000    # 2550.0f

    goto :goto_0

    .line 565
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x45548000    # 3400.0f

    if-lez v1, :cond_14

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_14

    const v0, 0x4541c000    # 3100.0f

    goto :goto_0

    .line 566
    :cond_14
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x456d8000    # 3800.0f

    if-lez v1, :cond_15

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_15

    const v0, 0x458b3000    # 4454.0f

    goto :goto_0

    .line 567
    :cond_15
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x457a0000    # 4000.0f

    if-lez v1, :cond_16

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_16

    const v0, 0x4598f800    # 4895.0f

    goto :goto_0

    .line 568
    :cond_16
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    const v0, 0x469c4000    # 20000.0f

    .line 570
    :cond_17
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 571
    return-void
.end method

.method private setLuxForM305M()V
    .locals 4

    .line 574
    const/high16 v0, 0x41000000    # 8.0f

    .line 575
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 576
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f800000    # -4.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 577
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 578
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    .line 579
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 580
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_14

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 581
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 582
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v3

    const/high16 v2, 0x42200000    # 40.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 583
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42700000    # 60.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 584
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x42f00000    # 120.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 585
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x42dc0000    # 110.0f

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43070000    # 135.0f

    goto/16 :goto_0

    .line 586
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43910000    # 290.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43750000    # 245.0f

    goto/16 :goto_0

    .line 587
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43be0000    # 380.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43b18000    # 355.0f

    goto/16 :goto_0

    .line 588
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43eb0000    # 470.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x43e88000    # 465.0f

    goto/16 :goto_0

    .line 589
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x440c0000    # 560.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const v0, 0x440ec000    # 571.0f

    goto/16 :goto_0

    .line 590
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44200000    # 640.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const v0, 0x442ac000    # 683.0f

    goto/16 :goto_0

    .line 591
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44340000    # 720.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x44424000    # 777.0f

    goto :goto_0

    .line 592
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const/high16 v0, 0x445b0000    # 876.0f

    goto :goto_0

    .line 593
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44610000    # 900.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44748000    # 978.0f

    goto :goto_0

    .line 594
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44750000    # 980.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44858000    # 1068.0f

    goto :goto_0

    .line 595
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44848000    # 1060.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x44924000    # 1170.0f

    goto :goto_0

    .line 596
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44910000    # 1160.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x449f6000    # 1275.0f

    goto :goto_0

    .line 597
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 598
    :cond_14
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 599
    return-void
.end method

.method private setLuxForM307()V
    .locals 3

    .line 717
    const/high16 v0, 0x41000000    # 8.0f

    .line 718
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41e80000    # 29.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 719
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b060000    # -2000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 720
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3cfd0000    # -131.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 721
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x421c0000    # 39.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 722
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 723
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x435c0000    # 220.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 724
    :cond_4
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 725
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42960000    # 75.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 726
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43050000    # 133.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 727
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43410000    # 193.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_0

    .line 728
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x437a0000    # 250.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_0

    .line 729
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x43958000    # 299.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_0

    .line 730
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43ac0000    # 344.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_0

    .line 731
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43ce0000    # 412.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_0

    .line 732
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43f40000    # 488.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_0

    .line 733
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x4415c000    # 599.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_0

    .line 734
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44314000    # 709.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_0

    .line 735
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x446e8000    # 954.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x449f6000    # 1275.0f

    goto/16 :goto_0

    .line 736
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44922000    # 1169.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x44d16000    # 1675.0f

    goto :goto_0

    .line 737
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44b52000    # 1449.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_0

    .line 738
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44e44000    # 1826.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x451f6000    # 2550.0f

    goto :goto_0

    .line 739
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x45170000    # 2416.0f

    if-lez v1, :cond_14

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_14

    const v0, 0x4541c000    # 3100.0f

    goto :goto_0

    .line 740
    :cond_14
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x4539e000    # 2974.0f

    if-lez v1, :cond_15

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_15

    const v0, 0x458b3000    # 4454.0f

    goto :goto_0

    .line 741
    :cond_15
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x46485000    # 12820.0f

    if-lez v1, :cond_16

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_16

    const v0, 0x4598f800    # 4895.0f

    goto :goto_0

    .line 742
    :cond_16
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    const v0, 0x469c4000    # 20000.0f

    .line 744
    :cond_17
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 745
    return-void
.end method

.method private setLuxForM31()V
    .locals 3

    .line 951
    const/high16 v0, 0x41000000    # 8.0f

    .line 952
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3af18000    # -2280.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 953
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b09c000    # -1970.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 954
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b5d8000    # -1300.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 955
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c1f0000    # -450.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 956
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 957
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 958
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 959
    return-void
.end method

.method private setLuxForN770()V
    .locals 3

    .line 940
    const/high16 v0, 0x41000000    # 8.0f

    .line 941
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1f0000    # -1800.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 942
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b768000    # -1100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 943
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b9f0000    # -900.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 944
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c060000    # -500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 945
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3d380000    # -100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 946
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 947
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 948
    return-void
.end method

.method private setLuxForP61()V
    .locals 3

    .line 984
    const/high16 v0, 0x41000000    # 8.0f

    .line 985
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b0c4000    # -1950.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 986
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1f0000    # -1800.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 987
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b768000    # -1100.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 988
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c290000    # -430.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 989
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    .line 990
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x43c80000    # 400.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    .line 991
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x44960000    # 1200.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x43960000    # 300.0f

    goto :goto_0

    .line 992
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, 0x44e10000    # 1800.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x43fa0000    # 500.0f

    goto :goto_0

    .line 993
    :cond_7
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 994
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 995
    return-void
.end method

.method private setbrightnessMediumResolution()V
    .locals 3

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 343
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    if-lez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 344
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 345
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42440000    # 49.0f

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_0

    .line 346
    :cond_3
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_0

    .line 347
    :cond_4
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x42dc0000    # 110.0f

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 348
    :cond_5
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_0

    .line 349
    :cond_6
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x433e0000    # 190.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_0

    .line 350
    :cond_7
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43660000    # 230.0f

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_0

    .line 351
    :cond_8
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_0

    .line 352
    :cond_9
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43a00000    # 320.0f

    if-lez v1, :cond_a

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_0

    .line 353
    :cond_a
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43be0000    # 380.0f

    if-lez v1, :cond_b

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_0

    .line 354
    :cond_b
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x43dc0000    # 440.0f

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_0

    .line 355
    :cond_c
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44098000    # 550.0f

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_0

    .line 356
    :cond_d
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44318000    # 710.0f

    if-lez v1, :cond_e

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    const v0, 0x449f6000    # 1275.0f

    goto/16 :goto_0

    .line 357
    :cond_e
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44610000    # 900.0f

    if-lez v1, :cond_f

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const v0, 0x44d16000    # 1675.0f

    goto :goto_0

    .line 358
    :cond_f
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x44834000    # 1050.0f

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_0

    .line 359
    :cond_10
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44af0000    # 1400.0f

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11

    const v0, 0x451f6000    # 2550.0f

    goto :goto_0

    .line 360
    :cond_11
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x44e10000    # 1800.0f

    if-lez v1, :cond_12

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    const v0, 0x4541c000    # 3100.0f

    goto :goto_0

    .line 361
    :cond_12
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x450fc000    # 2300.0f

    if-lez v1, :cond_13

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13

    const v0, 0x458b3000    # 4454.0f

    goto :goto_0

    .line 362
    :cond_13
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    const v2, 0x453b8000    # 3000.0f

    if-lez v1, :cond_14

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_14

    const v0, 0x4598f800    # 4895.0f

    goto :goto_0

    .line 363
    :cond_14
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    const v0, 0x469c4000    # 20000.0f

    .line 365
    :cond_15
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 366
    return-void
.end method


# virtual methods
.method public declared-synchronized addConversionHistory(FFF)V
    .locals 3
    .param p1, "e"    # F
    .param p2, "b"    # F
    .param p3, "l"    # F

    monitor-enter p0

    .line 1005
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;-><init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;Lcom/samsung/android/gesture/ExposureToLuxMapping-IA;)V

    .line 1007
    .local v0, "t":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setExposure(F)V

    .line 1008
    invoke-virtual {v0, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setBrightness(F)V

    .line 1009
    invoke-virtual {v0, p3}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setLux(F)V

    .line 1010
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setTime(J)V

    .line 1011
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1013
    .end local v0    # "t":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    .end local p0    # "this":Lcom/samsung/android/gesture/ExposureToLuxMapping;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    iget-object v2, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;

    .line 1014
    .restart local v0    # "t":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    iget v2, v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_exposure:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_1

    iget v2, v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_brightness:F

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_2

    .line 1015
    :cond_1
    new-instance v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;-><init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;Lcom/samsung/android/gesture/ExposureToLuxMapping-IA;)V

    move-object v0, v2

    .line 1016
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setExposure(F)V

    .line 1017
    invoke-virtual {v0, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setBrightness(F)V

    .line 1018
    invoke-virtual {v0, p3}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setLux(F)V

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setTime(J)V

    .line 1020
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1004
    .end local v0    # "t":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    .end local p1    # "e":F
    .end local p2    # "b":F
    .end local p3    # "l":F
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 1031
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    if-eqz v0, :cond_3

    .line 1032
    const-string v0, " ------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    const-string v0, " : EV2L Conversion Table"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    .end local p0    # "this":Lcom/samsung/android/gesture/ExposureToLuxMapping;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : Device  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : Type    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    :cond_2
    const-string v0, "    Exposure (<)      Brightness (<)      Lux"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    const-string v0, " ------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;

    .line 1043
    .local v1, "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    const-string v2, "   %12.1f && %12.1f  ==> %8.1f%n"

    iget v3, v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_exposure:F

    .line 1044
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_brightness:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_lux:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 1043
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1045
    nop

    .end local v1    # "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    goto :goto_0

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    if-eqz v0, :cond_4

    .line 1048
    const-string v0, " ---------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : EV2L Conversion History : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    const-string v0, "    Exposure (<)      Brightness (<)      Lux         When"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    const-string v0, " ---------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1053
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;

    .line 1054
    .local v1, "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    const-string v2, "       %8.1f        %8.1f  ==> %8.1f @ %s%n"

    iget v3, v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_exposure:F

    .line 1055
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_brightness:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_lux:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_timeStr:Ljava/lang/String;

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 1054
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    nop

    .end local v1    # "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1058
    .end local v0    # "i":I
    :cond_4
    monitor-exit p0

    return-void

    .line 1030
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Ljava/lang/String;

    .line 194
    const-string v0, "wrong"

    .line 196
    .local v0, "retInfo":Ljava/lang/String;
    const-string v1, "table_ver"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MotionRecognitionService"

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    const-string v3, "00000000"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_0
    const-string v1, "target_device"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    const-string v3, "none"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_1
    const-string v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    const-string v3, "normal"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EV2L] sABC info is wrong "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EV2L] sABC "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v0
.end method

.method public getLux([F)[F
    .locals 5
    .param p1, "values"    # [F

    .line 100
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    aget v1, p1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 102
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v1, 0x2

    aget v4, p1, v3

    aput v4, v0, v1

    .line 104
    iget v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    float-to-int v0, v0

    aget v1, p1, v2

    float-to-int v1, v1

    const-string v4, "MotionRecognitionService"

    if-eq v0, v1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ev-lux map, exposure= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " brightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    aget v0, p1, v2

    iput v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    .line 108
    aget v0, p1, v3

    iput v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->getLuxFromTable()F

    move-result v1

    aput v1, v0, v2

    goto/16 :goto_c

    .line 113
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_b

    .line 115
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A3050"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA30C()V

    goto/16 :goto_c

    .line 117
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A305"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCV43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_a

    .line 119
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A202"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA20E()V

    goto/16 :goto_c

    .line 121
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "N778"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "02M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCV46"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_9

    .line 123
    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105FN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_8

    .line 125
    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7

    .line 127
    :cond_8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 128
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M205M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM205M()V

    goto/16 :goto_c

    .line 131
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM205F()V

    goto/16 :goto_c

    .line 133
    :cond_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M305"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM305M()V

    goto/16 :goto_c

    .line 135
    :cond_b
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 136
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M105M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M105Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    .line 139
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM10()V

    goto/16 :goto_c

    .line 137
    :cond_d
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM105M()V

    goto/16 :goto_c

    .line 141
    :cond_e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA405()V

    goto/16 :goto_c

    .line 143
    :cond_f
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "N582"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "41A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCV48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_6

    .line 145
    :cond_10
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A307"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA307()V

    goto/16 :goto_c

    .line 147
    :cond_11
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A507"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA507()V

    goto/16 :goto_c

    .line 149
    :cond_12
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A908"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA908()V

    goto/16 :goto_c

    .line 151
    :cond_13
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A515"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S515"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_5

    .line 153
    :cond_14
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A516"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA516()V

    goto/16 :goto_c

    .line 155
    :cond_15
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "G770"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForG770()V

    goto/16 :goto_c

    .line 157
    :cond_16
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A716"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_3

    .line 162
    :cond_17
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "N770"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForN770()V

    goto/16 :goto_c

    .line 164
    :cond_18
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A70"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA70()V

    goto/16 :goto_c

    .line 166
    :cond_19
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM31()V

    goto/16 :goto_c

    .line 168
    :cond_1a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A505"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S506"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2

    .line 170
    :cond_1b
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA31()V

    goto/16 :goto_c

    .line 172
    :cond_1c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "P61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForP61()V

    goto/16 :goto_c

    .line 174
    :cond_1d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "J600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForJ600()V

    goto/16 :goto_c

    .line 176
    :cond_1e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_1

    .line 179
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CameraLightSensor] There is no Ev-Lux table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 177
    :cond_20
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA20F()V

    goto :goto_c

    .line 169
    :cond_21
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA50()V

    goto :goto_c

    .line 158
    :cond_22
    :goto_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A716V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A716U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_4

    .line 161
    :cond_23
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA71()V

    goto :goto_c

    .line 159
    :cond_24
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA71U()V

    goto :goto_c

    .line 152
    :cond_25
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA515()V

    goto :goto_c

    .line 144
    :cond_26
    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA41()V

    goto :goto_c

    .line 126
    :cond_27
    :goto_7
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA105N()V

    goto :goto_c

    .line 124
    :cond_28
    :goto_8
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA105F()V

    goto :goto_c

    .line 122
    :cond_29
    :goto_9
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA10E()V

    goto :goto_c

    .line 118
    :cond_2a
    :goto_a
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA305()V

    goto :goto_c

    .line 114
    :cond_2b
    :goto_b
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA60C()V

    .line 184
    :goto_c
    iget v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    iget-object v3, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    aget v2, v3, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->addConversionHistory(FFF)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    return-object v0
.end method
