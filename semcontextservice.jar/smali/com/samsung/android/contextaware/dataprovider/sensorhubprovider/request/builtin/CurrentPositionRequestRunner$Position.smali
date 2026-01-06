.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
.super Ljava/lang/Object;
.source "CurrentPositionRequestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method static bridge synthetic -$$Nest$fputaccuracy(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaltitude(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdistance(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlatitude(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlongitude(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsatelliteCount(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspeed(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtype(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fpututcTime(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;[I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D

    return-wide v0
.end method

.method public getSatelliteCount()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 140
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I

    return v0
.end method

.method public getUtcTime()[I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I

    return-object v0
.end method
