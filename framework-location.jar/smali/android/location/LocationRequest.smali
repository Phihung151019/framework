.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationRequest$Builder;,
        Landroid/location/LocationRequest$Quality;
    }
.end annotation


# static fields
.field public static final whitelist ACCURACY_BLOCK:I = 0x66
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACCURACY_CITY:I = 0x68
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACCURACY_FINE:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IMPLICIT_MIN_UPDATE_INTERVAL:J = -0x1L

.field private static final blacklist IMPLICIT_MIN_UPDATE_INTERVAL_FACTOR:D = 0.5

.field private static final blacklist LEGACY_IMPLICIT_MIN_UPDATE_INTERVAL_FACTOR:D = 0.16666666666666666

.field public static final blacklist LOW_POWER_EXCEPTIONS:J = 0xa11c3b7L

.field public static final whitelist PASSIVE_INTERVAL:J = 0x7fffffffffffffffL

.field public static final whitelist POWER_HIGH:I = 0xcb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist POWER_LOW:I = 0xc9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist POWER_NONE:I = 0xc8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist QUALITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final whitelist QUALITY_HIGH_ACCURACY:I = 0x64

.field public static final whitelist QUALITY_LOW_POWER:I = 0x68


# instance fields
.field private final blacklist mAdasGnssBypass:Z

.field private blacklist mBypass:Z

.field private blacklist mDurationMillis:J

.field private blacklist mExpireAtRealtimeMillis:J

.field private blacklist mHideFromAppOps:Z

.field private blacklist mIntervalMillis:J

.field private blacklist mLowPower:Z

.field private final blacklist mMaxUpdateDelayMillis:J

.field private blacklist mMaxUpdates:I

.field private blacklist mMinUpdateDistanceMeters:F

.field private blacklist mMinUpdateIntervalMillis:J

.field private blacklist mProvider:Ljava/lang/String;

.field private blacklist mQuality:I

.field private blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdasGnssBypass(Landroid/location/LocationRequest;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBypass(Landroid/location/LocationRequest;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/location/LocationRequest;->mBypass:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDurationMillis(Landroid/location/LocationRequest;)J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHideFromAppOps(Landroid/location/LocationRequest;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntervalMillis(Landroid/location/LocationRequest;)J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLowPower(Landroid/location/LocationRequest;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/location/LocationRequest;->mLowPower:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxUpdateDelayMillis(Landroid/location/LocationRequest;)J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxUpdates(Landroid/location/LocationRequest;)I
    .locals 0

    iget p0, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinUpdateDistanceMeters(Landroid/location/LocationRequest;)F
    .locals 0

    iget p0, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinUpdateIntervalMillis(Landroid/location/LocationRequest;)J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQuality(Landroid/location/LocationRequest;)I
    .locals 0

    iget p0, p0, Landroid/location/LocationRequest;->mQuality:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorkSource(Landroid/location/LocationRequest;)Landroid/os/WorkSource;
    .locals 0

    iget-object p0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 766
    new-instance v0, Landroid/location/LocationRequest$1;

    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;)V
    .locals 17
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "intervalMillis"    # J
    .param p4, "quality"    # I
    .param p5, "expireAtRealtimeMillis"    # J
    .param p7, "durationMillis"    # J
    .param p9, "maxUpdates"    # I
    .param p10, "minUpdateIntervalMillis"    # J
    .param p12, "minUpdateDistanceMeters"    # F
    .param p13, "maxUpdateDelayMillis"    # J
    .param p15, "hiddenFromAppOps"    # Z
    .param p16, "adasGnssBypass"    # Z
    .param p17, "bypass"    # Z
    .param p18, "lowPower"    # Z
    .param p19, "workSource"    # Landroid/os/WorkSource;

    .line 295
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 296
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 297
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/location/LocationRequest;->mIntervalMillis:J

    .line 298
    move/from16 v4, p4

    iput v4, v0, Landroid/location/LocationRequest;->mQuality:I

    .line 299
    move-wide/from16 v5, p10

    iput-wide v5, v0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    .line 300
    move-wide/from16 v7, p5

    iput-wide v7, v0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    .line 301
    move-wide/from16 v9, p7

    iput-wide v9, v0, Landroid/location/LocationRequest;->mDurationMillis:J

    .line 302
    move/from16 v11, p9

    iput v11, v0, Landroid/location/LocationRequest;->mMaxUpdates:I

    .line 303
    move/from16 v12, p12

    iput v12, v0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    .line 304
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    .line 305
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 306
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    .line 307
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/location/LocationRequest;->mBypass:Z

    .line 308
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/location/LocationRequest;->mLowPower:Z

    .line 309
    invoke-static/range {p19 .. p19}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/os/WorkSource;

    iput-object v1, v0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 310
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;Landroid/location/LocationRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;)V

    return-void
.end method

.method public static whitelist create()Landroid/location/LocationRequest;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/32 v1, 0x36ee80

    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .locals 3
    .param p0, "criteria"    # Landroid/location/Criteria;
    .param p1, "intervalMillis"    # J
    .param p3, "minUpdateDistanceMeters"    # F
    .param p4, "singleShot"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 264
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 265
    const-wide/16 p1, 0x0

    goto :goto_1

    .line 266
    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 267
    const-wide p1, 0x7ffffffffffffffeL

    .line 269
    :cond_2
    :goto_1
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    .line 270
    const/4 p3, 0x0

    .line 273
    :cond_3
    new-instance v1, Landroid/location/LocationRequest$Builder;

    invoke-direct {v1, p1, p2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 274
    invoke-virtual {v1, p0}, Landroid/location/LocationRequest$Builder;->setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 275
    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1, p3}, Landroid/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 277
    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    const v0, 0x7fffffff

    :goto_2
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    .line 273
    return-object v0
.end method

.method public static whitelist createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .locals 3
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "intervalMillis"    # J
    .param p3, "minUpdateDistanceMeters"    # F
    .param p4, "singleShot"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 226
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 227
    const-wide/16 p1, 0x0

    goto :goto_1

    .line 228
    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 229
    const-wide p1, 0x7ffffffffffffffeL

    .line 231
    :cond_2
    :goto_1
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    .line 232
    const/4 p3, 0x0

    .line 236
    :cond_3
    const-string v1, "passive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    const/16 v1, 0xc8

    .local v1, "quality":I
    goto :goto_2

    .line 238
    .end local v1    # "quality":I
    :cond_4
    const-string v1, "gps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 239
    const/16 v1, 0x64

    .restart local v1    # "quality":I
    goto :goto_2

    .line 241
    .end local v1    # "quality":I
    :cond_5
    const/16 v1, 0x66

    .line 244
    .restart local v1    # "quality":I
    :goto_2
    new-instance v2, Landroid/location/LocationRequest$Builder;

    invoke-direct {v2, p1, p2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 245
    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v2

    .line 246
    invoke-virtual {v2, p3}, Landroid/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;

    move-result-object v2

    .line 247
    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    const v0, 0x7fffffff

    :goto_3
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v0

    .line 244
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 818
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 819
    return v0

    .line 821
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 825
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/location/LocationRequest;

    .line 826
    .local v2, "that":Landroid/location/LocationRequest;
    iget-wide v3, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/location/LocationRequest;->mQuality:I

    iget v4, v2, Landroid/location/LocationRequest;->mQuality:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    iget v4, v2, Landroid/location/LocationRequest;->mMaxUpdates:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, v2, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    iget v4, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    .line 832
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iget-boolean v4, v2, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    iget-boolean v4, v2, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/location/LocationRequest;->mBypass:Z

    iget-boolean v4, v2, Landroid/location/LocationRequest;->mBypass:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/location/LocationRequest;->mLowPower:Z

    iget-boolean v4, v2, Landroid/location/LocationRequest;->mLowPower:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iget-object v4, v2, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 838
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, v2, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 839
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 826
    :goto_0
    return v0

    .line 822
    .end local v2    # "that":Landroid/location/LocationRequest;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getDurationMillis()J
    .locals 2

    .line 494
    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    return-wide v0
.end method

.method public blacklist getExpirationRealtimeMs(J)J
    .locals 4
    .param p1, "startRealtimeMs"    # J

    .line 503
    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    const-wide v2, 0x7fffffffffffffffL

    sub-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 504
    const-wide v0, 0x7fffffffffffffffL

    .local v0, "expirationRealtimeMs":J
    goto :goto_0

    .line 506
    .end local v0    # "expirationRealtimeMs":J
    :cond_0
    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    add-long/2addr v0, p1

    .line 508
    .restart local v0    # "expirationRealtimeMs":J
    :goto_0
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public whitelist getExpireAt()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    return-wide v0
.end method

.method public whitelist getExpireIn()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    invoke-virtual {p0}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFastestInterval()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    invoke-virtual {p0}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getHideFromAppOps()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    invoke-virtual {p0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    return v0
.end method

.method public whitelist getInterval()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    invoke-virtual {p0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getIntervalMillis()J
    .locals 2

    .line 420
    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    return-wide v0
.end method

.method public whitelist getMaxUpdateDelayMillis()J
    .locals 2

    .line 618
    iget-wide v0, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    return-wide v0
.end method

.method public whitelist getMaxUpdates()I
    .locals 1

    .line 542
    iget v0, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    return v0
.end method

.method public whitelist getMinUpdateDistanceMeters()F
    .locals 1

    .line 600
    iget v0, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    return v0
.end method

.method public whitelist getMinUpdateIntervalMillis()J
    .locals 4

    .line 557
    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 558
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->updateMinLocationRequestInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 561
    :cond_0
    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    long-to-double v0, v0

    const-wide v2, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 565
    :cond_1
    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    iget-wide v2, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getNumUpdates()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    invoke-virtual {p0}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v0

    return v0
.end method

.method public whitelist getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "fused"

    :goto_0
    return-object v0
.end method

.method public whitelist getQuality()I
    .locals 1

    .line 373
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public whitelist getSmallestDisplacement()F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    invoke-virtual {p0}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v0

    return v0
.end method

.method public whitelist getWorkSource()Landroid/os/WorkSource;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 762
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 844
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAdasGnssBypass()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 667
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    return v0
.end method

.method public blacklist isBypass()Z
    .locals 1

    .line 701
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mBypass:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist isHiddenFromAppOps()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 652
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public whitelist isLocationSettingsIgnored()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 692
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mBypass:Z

    return v0
.end method

.method public whitelist isLowPower()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 736
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPower:Z

    return v0
.end method

.method public whitelist isLowPowerMode()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 722
    invoke-virtual {p0}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v0

    return v0
.end method

.method public whitelist setExpireAt(J)Landroid/location/LocationRequest;
    .locals 2
    .param p1, "millis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    .line 453
    return-object p0
.end method

.method public whitelist setExpireIn(J)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "millis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 473
    iput-wide p1, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    .line 474
    return-object p0
.end method

.method public whitelist setFastestInterval(J)Landroid/location/LocationRequest;
    .locals 2
    .param p1, "millis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 430
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 431
    iput-wide p1, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    .line 432
    return-object p0
.end method

.method public whitelist setHideFromAppOps(Z)V
    .locals 0
    .param p1, "hiddenFromAppOps"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 629
    return-void
.end method

.method public whitelist setInterval(J)Landroid/location/LocationRequest;
    .locals 4
    .param p1, "millis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 386
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 387
    const-wide p1, 0x7ffffffffffffffeL

    .line 390
    :cond_1
    iput-wide p1, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    .line 391
    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    iget-wide v2, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 392
    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    .line 394
    :cond_2
    return-object p0
.end method

.method public whitelist setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "locationSettingsIgnored"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 678
    iput-boolean p1, p0, Landroid/location/LocationRequest;->mBypass:Z

    .line 679
    return-object p0
.end method

.method public whitelist setLowPowerMode(Z)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 711
    iput-boolean p1, p0, Landroid/location/LocationRequest;->mLowPower:Z

    .line 712
    return-object p0
.end method

.method public whitelist setNumUpdates(I)Landroid/location/LocationRequest;
    .locals 3
    .param p1, "numUpdates"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    if-lez p1, :cond_0

    .line 522
    iput p1, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    .line 523
    return-object p0

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 320
    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 321
    return-object p0
.end method

.method public whitelist setQuality(I)Landroid/location/LocationRequest;
    .locals 3
    .param p1, "quality"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    sparse-switch p1, :sswitch_data_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :sswitch_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    .line 357
    goto :goto_0

    .line 353
    :sswitch_1
    const/16 v0, 0x68

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 354
    goto :goto_0

    .line 348
    :sswitch_2
    const/16 v0, 0x66

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 349
    goto :goto_0

    .line 345
    :sswitch_3
    const/16 v0, 0x64

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 346
    nop

    .line 362
    :goto_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x66 -> :sswitch_2
        0x68 -> :sswitch_1
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xcb -> :sswitch_3
    .end sparse-switch
.end method

.method public whitelist setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .locals 3
    .param p1, "minDisplacementMeters"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "minDisplacementMeters"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    .line 578
    return-object p0
.end method

.method public whitelist setWorkSource(Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 746
    if-nez p1, :cond_0

    .line 747
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    move-object p1, v0

    .line 749
    :cond_0
    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 750
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_0
    iget-wide v1, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 856
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    iget-wide v1, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 859
    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 867
    :pswitch_1
    const-string v1, " LOW_POWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 864
    :pswitch_2
    const-string v1, " BALANCED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    goto :goto_0

    .line 861
    :pswitch_3
    const-string v1, " HIGH_ACCURACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    nop

    .line 868
    :goto_0
    goto :goto_1

    .line 871
    :cond_1
    const-string v1, "PASSIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :goto_1
    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 874
    const-string v1, ", expireAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_2
    iget-wide v1, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 877
    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    iget-wide v1, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 880
    :cond_3
    iget v1, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_4

    .line 881
    const-string v1, ", maxUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 883
    :cond_4
    iget-wide v1, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    iget-wide v1, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    iget-wide v3, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 885
    const-string v1, ", minUpdateInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    iget-wide v1, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 888
    :cond_5
    iget v1, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    .line 889
    const-string v1, ", minUpdateDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 891
    :cond_6
    iget-wide v1, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    iget-wide v3, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    .line 892
    const-string v1, ", maxUpdateDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    iget-wide v1, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 895
    :cond_7
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mLowPower:Z

    if-eqz v1, :cond_8

    .line 896
    const-string v1, ", lowPower"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_8
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    if-eqz v1, :cond_9

    .line 899
    const-string v1, ", hiddenFromAppOps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_9
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    if-eqz v1, :cond_a

    .line 902
    const-string v1, ", adasGnssBypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    :cond_a
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mBypass:Z

    if-eqz v1, :cond_b

    .line 905
    const-string v1, ", bypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_b
    iget-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 908
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 910
    :cond_c
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 800
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 801
    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 802
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 804
    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 805
    iget v0, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 807
    iget v0, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 808
    iget-wide v0, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 809
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 810
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 811
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 812
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 813
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 814
    return-void
.end method
