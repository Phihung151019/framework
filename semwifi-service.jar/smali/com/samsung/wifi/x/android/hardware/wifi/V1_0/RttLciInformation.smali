.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public altitude:I

.field public altitudeUnc:B

.field public floor:I

.field public heightAboveFloor:I

.field public heightUnc:I

.field public latitude:J

.field public latitudeUnc:B

.field public longitude:J

.field public longitudeUnc:B

.field public motionPattern:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 12
    .line 13
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 14
    .line 15
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 16
    .line 17
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    .line 26
    .line 27
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x10

    .line 7
    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-wide/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-int/lit8 v3, v2, 0x28

    .line 19
    .line 20
    int-to-long v5, v3

    .line 21
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    const-wide/16 v9, 0x0

    .line 26
    .line 27
    const/4 v11, 0x1

    .line 28
    move-object v4, p0

    .line 29
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-ge v1, v2, :cond_0

    .line 38
    .line 39
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x28

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-wide/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0xc

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/os/HwBlob;

    .line 24
    .line 25
    mul-int/lit8 v3, v1, 0x28

    .line 26
    .line 27
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    if-ge v4, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x28

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 21
    .line 22
    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    return v1

    .line 29
    :cond_3
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    .line 30
    .line 31
    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    .line 32
    .line 33
    cmp-long v2, v2, v4

    .line 34
    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 39
    .line 40
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 41
    .line 42
    if-eq v2, v3, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 46
    .line 47
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 48
    .line 49
    if-eq v2, v3, :cond_6

    .line 50
    .line 51
    return v1

    .line 52
    :cond_6
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 53
    .line 54
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 55
    .line 56
    if-eq v2, v3, :cond_7

    .line 57
    .line 58
    return v1

    .line 59
    :cond_7
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 60
    .line 61
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 62
    .line 63
    if-eq v2, v3, :cond_8

    .line 64
    .line 65
    return v1

    .line 66
    :cond_8
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 67
    .line 68
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 69
    .line 70
    if-eq v2, v3, :cond_9

    .line 71
    .line 72
    return v1

    .line 73
    :cond_9
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 74
    .line 75
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 76
    .line 77
    if-eq v2, v3, :cond_a

    .line 78
    .line 79
    return v1

    .line 80
    :cond_a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 81
    .line 82
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 83
    .line 84
    if-eq v2, v3, :cond_b

    .line 85
    .line 86
    return v1

    .line 87
    :cond_b
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    .line 88
    .line 89
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    .line 90
    .line 91
    if-eq p0, p1, :cond_c

    .line 92
    .line 93
    return v1

    .line 94
    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 20
    .line 21
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 32
    .line 33
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 44
    .line 45
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt64(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 6
    .line 7
    const-wide/16 v0, 0x8

    .line 8
    .line 9
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    .line 15
    .line 16
    const-wide/16 v0, 0x10

    .line 17
    .line 18
    add-long/2addr v0, p3

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 24
    .line 25
    const-wide/16 v0, 0x14

    .line 26
    .line 27
    add-long/2addr v0, p3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 33
    .line 34
    const-wide/16 v0, 0x15

    .line 35
    .line 36
    add-long/2addr v0, p3

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 42
    .line 43
    const-wide/16 v0, 0x16

    .line 44
    .line 45
    add-long/2addr v0, p3

    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 51
    .line 52
    const-wide/16 v0, 0x18

    .line 53
    .line 54
    add-long/2addr v0, p3

    .line 55
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 60
    .line 61
    const-wide/16 v0, 0x1c

    .line 62
    .line 63
    add-long/2addr v0, p3

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 69
    .line 70
    const-wide/16 v0, 0x20

    .line 71
    .line 72
    add-long/2addr v0, p3

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 78
    .line 79
    const-wide/16 v0, 0x24

    .line 80
    .line 81
    add-long/2addr p3, v0

    .line 82
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    .line 87
    .line 88
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{.latitude = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .longitude = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .altitude = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", .latitudeUnc = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", .longitudeUnc = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", .altitudeUnc = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", .motionPattern = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 69
    .line 70
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttMotionPattern;->toString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", .floor = "

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", .heightAboveFloor = "

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", .heightUnc = "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    .line 103
    .line 104
    const-string v1, "}"

    .line 105
    .line 106
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x8

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x10

    .line 15
    .line 16
    add-long/2addr v0, p2

    .line 17
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0x14

    .line 23
    .line 24
    add-long/2addr v0, p2

    .line 25
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0x15

    .line 31
    .line 32
    add-long/2addr v0, p2

    .line 33
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0x16

    .line 39
    .line 40
    add-long/2addr v0, p2

    .line 41
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v0, 0x18

    .line 47
    .line 48
    add-long/2addr v0, p2

    .line 49
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, 0x1c

    .line 55
    .line 56
    add-long/2addr v0, p2

    .line 57
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v0, 0x20

    .line 63
    .line 64
    add-long/2addr v0, p2

    .line 65
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v0, 0x24

    .line 71
    .line 72
    add-long/2addr p2, v0

    .line 73
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    .line 74
    .line 75
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
