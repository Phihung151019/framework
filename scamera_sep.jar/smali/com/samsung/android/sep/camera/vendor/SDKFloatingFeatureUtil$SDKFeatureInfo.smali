.class Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;
.super Ljava/lang/Object;
.source "SDKFloatingFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDKFeatureInfo"
.end annotation


# static fields
.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "camera_id"

.field private static final KEY_SIZE:Ljava/lang/String; = "size"

.field private static final SEPARATOR_DETAIL:Ljava/lang/String; = ":"

.field private static final SEPARATOR_FEATURE:Ljava/lang/String; = ","

.field private static final SEPARATOR_FEATURE_VERSION:Ljava/lang/String; = "\\."

.field private static final SEPARATOR_SIZE:Ljava/lang/String; = "x"

.field private static final SEPARATOR_VALUE:Ljava/lang/String; = "="

.field private static final SEPARATOR_VALUE_MULTIPLE:Ljava/lang/String; = "\\|"

.field private static final SPECIFIER_VERSION_1:Ljava/lang/String; = "v"

.field private static final SPECIFIER_VERSION_2:Ljava/lang/String; = "version"

.field private static final VERSION_1:I = 0x1

.field private static final VERSION_2:I = 0x2


# instance fields
.field private final mSdkFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSupportedSizes(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->getSupportedSizes(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mparseFeaturesFromFloatingFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->parseFeaturesFromFloatingFeature()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->parseFeaturesFromFloatingFeature()V

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;-><init>()V

    return-void
.end method

.method private getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;
    .locals 2
    .param p1, "feature"    # Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 240
    const-string v0, "camera_id"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->isValidFeatureAndKey(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    const-string v0, ""

    return-object v0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    .line 244
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 243
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 245
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    return-object v0
.end method

.method private getSupportedSizes(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/util/Set;
    .locals 8
    .param p1, "feature"    # Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;",
            ")",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 255
    const-string v0, "size"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->isValidFeatureAndKey(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 260
    .local v1, "sizes":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    iget-object v2, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 261
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 262
    .local v3, "value":Ljava/lang/String;
    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "sizeArray":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 264
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 265
    .local v5, "width":I
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 266
    .local v6, "height":I
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 267
    .local v7, "size":Landroid/util/Size;
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "sizeArray":[Ljava/lang/String;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "size":Landroid/util/Size;
    :cond_1
    goto :goto_0

    .line 270
    :cond_2
    return-object v1
.end method

.method private isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 230
    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isValidFeatureAndKey(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .param p2, "key"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    .line 282
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    .line 284
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 283
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 285
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0
.end method

.method private parseFeaturesFromFloatingFeature()V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_SDK_FEATURE_INFO"

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SemFloatingFeatureWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "feature":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "SDKFloatingFeatureUtil"

    const-string v2, "no value for SEC_FLOATING_FEATURE_CAMERA_CONFIG_SDK_FEATURE_INFO."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 156
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 159
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 160
    :cond_1
    move v2, v5

    :goto_0
    nop

    .line 162
    .local v2, "version":I
    if-ne v2, v5, :cond_2

    .line 163
    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->parseVersion1(Ljava/util/List;)V

    goto :goto_1

    .line 164
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 165
    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->parseVersion2(Ljava/util/List;)V

    .line 167
    :cond_3
    :goto_1
    return-void
.end method

.method private parseVersion1(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "feature":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "attributes":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVersion1: not following version1 rule for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SDKFloatingFeatureUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    goto :goto_0

    .line 182
    :cond_0
    aget-object v3, v2, v5

    invoke-static {v3}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->getSDKFeature(Ljava/lang/String;)Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    move-result-object v3

    .line 183
    .local v3, "featureEnum":Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v4, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v3}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->-$$Nest$fgethasCameraIdForV1(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    const/4 v5, 0x1

    aget-object v5, v2, v5

    .line 188
    const-string v6, "v"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 185
    const-string v6, "camera_id"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v1    # "feature":Ljava/lang/String;
    .end local v2    # "attributes":[Ljava/lang/String;
    .end local v3    # "featureEnum":Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 192
    :cond_2
    return-void
.end method

.method private parseVersion2(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "feature":Ljava/lang/String;
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    goto :goto_0

    .line 206
    :cond_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "details":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->getSDKFeature(Ljava/lang/String;)Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    move-result-object v4

    .line 208
    .local v4, "featureEnum":Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v5, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .local v6, "index":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 210
    aget-object v7, v2, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "values":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseVersion2: not following version2 rule for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SDKFloatingFeatureUtil"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    goto :goto_2

    .line 215
    :cond_1
    const/4 v8, 0x1

    aget-object v8, v7, v8

    .line 216
    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 217
    .local v8, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    aget-object v9, v7, v3

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v7    # "values":[Ljava/lang/String;
    .end local v8    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 219
    .end local v6    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeatureInfo;->mSdkFeatureMap:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v1    # "feature":Ljava/lang/String;
    .end local v2    # "details":[Ljava/lang/String;
    .end local v4    # "featureEnum":Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;
    .end local v5    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 221
    :cond_3
    return-void
.end method
