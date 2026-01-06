.class public Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;
.super Ljava/lang/Object;
.source "AoaSegmentConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;
    }
.end annotation


# static fields
.field public static AOA_SEGMENT_ANTENNA_SPACING:I = 0x0

.field public static AOA_SEGMENT_PDOA_BOUNDARY:I = 0x0

.field public static AOA_SEGMENT_PDOA_OFFSET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AoaSegmentConfig"


# instance fields
.field mAzimuthValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field public mChannelId:I

.field public mCount:I

.field mElevatinoValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_ANTENNA_SPACING:I

    .line 17
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_OFFSET:I

    .line 18
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_BOUNDARY:I

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "channleId"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "[F>;",
            "Ljava/util/ArrayList<",
            "[F>;)V"
        }
    .end annotation

    .line 30
    .local p3, "azimuthValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    .local p4, "elevatinoValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mChannelId:I

    .line 32
    iput p2, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mCount:I

    .line 33
    iput-object p3, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mAzimuthValues:Ljava/util/ArrayList;

    .line 34
    iput-object p4, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mElevatinoValues:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method private getAzimuthValue(I)[F
    .locals 1
    .param p1, "index"    # I

    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mAzimuthValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method private getElevatonVlue(I)[F
    .locals 1
    .param p1, "index"    # I

    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mElevatinoValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method private toFormattedString(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 88
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, ""

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 95
    .local v2, "values":[F
    if-nez v2, :cond_1

    .line 97
    goto :goto_0

    .line 99
    :cond_1
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 101
    .local v5, "value":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .end local v5    # "value":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    :cond_2
    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .end local v2    # "values":[F
    goto :goto_0

    .line 105
    :cond_3
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAzimuthAntennaSpacing()[F
    .locals 1

    .line 46
    sget v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_ANTENNA_SPACING:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getAzimuthValue(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getAzimuthPdoaBoundary()[F
    .locals 1

    .line 54
    sget v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_BOUNDARY:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getAzimuthValue(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getAzimuthPdoaOffset()[F
    .locals 1

    .line 50
    sget v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_OFFSET:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getAzimuthValue(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getChanneId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mChannelId:I

    return v0
.end method

.method public getConfigCount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mCount:I

    return v0
.end method

.method public getElevationAntennaSpacing()[F
    .locals 1

    .line 58
    sget v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_ANTENNA_SPACING:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getElevatonVlue(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getElevationPdoaBoundary()[F
    .locals 1

    .line 66
    sget v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_BOUNDARY:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getElevatonVlue(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getElevationPdoaOffset()[F
    .locals 1

    .line 62
    sget v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_OFFSET:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->getElevatonVlue(I)[F

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelID; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Cal[count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Azimuth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mAzimuthValues:Ljava/util/ArrayList;

    .line 82
    invoke-direct {p0, v2}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->toFormattedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Elevation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->mElevatinoValues:Ljava/util/ArrayList;

    .line 83
    invoke-direct {p0, v2}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->toFormattedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0
.end method
