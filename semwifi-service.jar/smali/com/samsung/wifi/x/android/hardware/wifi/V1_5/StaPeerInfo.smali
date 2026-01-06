.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public chanUtil:S

.field public rateStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;",
            ">;"
        }
    .end annotation
.end field

.field public staCount:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 6
    .line 7
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 15
    .line 16
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;",
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
    mul-int/lit8 v3, v2, 0x18

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x18

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;",
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
    mul-int/lit8 v3, v1, 0x18

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x18

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    .locals 4

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    .line 19
    .line 20
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 21
    .line 22
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 28
    .line 29
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt16(J)S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 6
    .line 7
    const-wide/16 v0, 0x2

    .line 8
    .line 9
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 15
    .line 16
    const-wide/16 v0, 0x8

    .line 17
    .line 18
    add-long v7, p3, v0

    .line 19
    .line 20
    const-wide/16 v0, 0x10

    .line 21
    .line 22
    add-long/2addr p3, v0

    .line 23
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    mul-int/lit8 p4, p3, 0x24

    .line 28
    .line 29
    int-to-long v3, p4

    .line 30
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    const/4 v9, 0x1

    .line 35
    move-object v2, p1

    .line 36
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    :goto_0
    if-ge p2, p3, :cond_0

    .line 47
    .line 48
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;

    .line 49
    .line 50
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;-><init>()V

    .line 51
    .line 52
    .line 53
    mul-int/lit8 v0, p2, 0x24

    .line 54
    .line 55
    int-to-long v0, v0

    .line 56
    invoke-virtual {p4, v2, p1, v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x18

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{.staCount = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .chanUtil = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .rateStats = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 29
    .line 30
    const-string v1, "}"

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6

    .line 1
    iget-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-wide/16 v1, 0x8

    .line 21
    .line 22
    add-long/2addr v1, p2

    .line 23
    const-wide/16 v3, 0x10

    .line 24
    .line 25
    add-long/2addr v3, p2

    .line 26
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, 0x14

    .line 30
    .line 31
    add-long/2addr p2, v3

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Landroid/os/HwBlob;

    .line 37
    .line 38
    mul-int/lit8 p3, v0, 0x24

    .line 39
    .line 40
    invoke-direct {p2, p3}, Landroid/os/HwBlob;-><init>(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    if-ge v3, v0, :cond_0

    .line 44
    .line 45
    iget-object p3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;

    .line 52
    .line 53
    mul-int/lit8 v4, v3, 0x24

    .line 54
    .line 55
    int-to-long v4, v4

    .line 56
    invoke-virtual {p3, p2, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
