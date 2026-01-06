.class public Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiGeofenceData"
.end annotation


# static fields
.field public static final INVALID_GEOFENCE_ID:I = -0x1

.field public static final INVALID_LATITUDE_LONGITUDE:D = 1000.0

.field public static final RADIUS:I = 0x1f4


# instance fields
.field protected final mConfigKey:Ljava/lang/String;

.field protected mGeofenceId:I

.field protected mLastConnectedTime:J

.field protected mLatitude:D

.field protected mLongitude:D


# direct methods
.method protected constructor <init>(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 21
    iget v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    iput v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 22
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    .line 23
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 24
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->touch()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 10
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    const-wide p1, 0x408f400000000000L    # 1000.0

    .line 11
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 12
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 4
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    .line 5
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 6
    iput-wide p7, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    return-void
.end method

.method static from(Landroid/database/Cursor;)Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    const/16 v5, 0x9

    .line 20
    .line 21
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getDouble(I)D

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    const/16 v7, 0xa

    .line 26
    .line 27
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getDouble(I)D

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;-><init>(Ljava/lang/String;IJDD)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static isValidLocation(DD)Z
    .locals 2

    .line 1
    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpl-double v0, p0, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmpg-double p0, p0, v0

    .line 16
    .line 17
    if-gtz p0, :cond_0

    .line 18
    .line 19
    const-wide p0, -0x3f99800000000000L    # -180.0

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmpl-double p0, p2, p0

    .line 25
    .line 26
    if-ltz p0, :cond_0

    .line 27
    .line 28
    const-wide p0, 0x4066800000000000L    # 180.0

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmpg-double p0, p2, p0

    .line 34
    .line 35
    if-gtz p0, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method


# virtual methods
.method public getConfigKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getGeofenceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 2
    .line 3
    return p0
.end method

.method public getLastConnectedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMeasuredGeoLocation()[D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    new-array p0, p0, [D

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-wide v0, p0, v4

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-wide v2, p0, v0

    .line 13
    .line 14
    return-object p0
.end method

.method public hasValidLocation()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->isValidLocation(DD)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setGeofenceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "locationId : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " lastConnectedTime : "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public touch()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    .line 6
    .line 7
    return-void
.end method
