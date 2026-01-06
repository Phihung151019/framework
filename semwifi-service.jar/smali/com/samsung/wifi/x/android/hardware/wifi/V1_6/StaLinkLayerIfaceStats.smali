.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

.field public peers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public timeSliceDutyCycleInPercent:B

.field public wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

.field public wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

.field public wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

.field public wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 13
    .line 14
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 27
    .line 28
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 34
    .line 35
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 48
    .line 49
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;",
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
    mul-int/lit16 v3, v2, 0xe0

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit16 v5, v1, 0xe0

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;",
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
    mul-int/lit16 v3, v1, 0xe0

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    .line 37
    .line 38
    mul-int/lit16 v5, v4, 0xe0

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 32
    .line 33
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 41
    .line 42
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 52
    .line 53
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_6

    .line 58
    .line 59
    return v1

    .line 60
    :cond_6
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 63
    .line 64
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_7

    .line 69
    .line 70
    return v1

    .line 71
    :cond_7
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 74
    .line 75
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_8

    .line 80
    .line 81
    return v1

    .line 82
    :cond_8
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_9

    .line 91
    .line 92
    return v1

    .line 93
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 38
    .line 39
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x88

    .line 7
    .line 8
    add-long/2addr v0, p3

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 16
    .line 17
    const-wide/16 v1, 0x8c

    .line 18
    .line 19
    add-long/2addr v1, p3

    .line 20
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 24
    .line 25
    const-wide/16 v1, 0x9c

    .line 26
    .line 27
    add-long/2addr v1, p3

    .line 28
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 32
    .line 33
    const-wide/16 v1, 0xac

    .line 34
    .line 35
    add-long/2addr v1, p3

    .line 36
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 40
    .line 41
    const-wide/16 v1, 0xbc

    .line 42
    .line 43
    add-long/2addr v1, p3

    .line 44
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v0, 0xd0

    .line 48
    .line 49
    add-long v7, p3, v0

    .line 50
    .line 51
    const-wide/16 v0, 0xd8

    .line 52
    .line 53
    add-long/2addr p3, v0

    .line 54
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    mul-int/lit8 p4, p3, 0x18

    .line 59
    .line 60
    int-to-long v3, p4

    .line 61
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    const/4 v9, 0x1

    .line 66
    move-object v2, p1

    .line 67
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 74
    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    :goto_0
    if-ge p2, p3, :cond_0

    .line 78
    .line 79
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;

    .line 80
    .line 81
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;-><init>()V

    .line 82
    .line 83
    .line 84
    mul-int/lit8 v0, p2, 0x18

    .line 85
    .line 86
    int-to-long v0, v0

    .line 87
    invoke-virtual {p4, v2, p1, v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 p2, p2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0xe0

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.V1_0 = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .timeSliceDutyCycleInPercent = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .wmeBeContentionTimeStats = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", .wmeBkContentionTimeStats = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", .wmeViContentionTimeStats = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", .wmeVoContentionTimeStats = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", .peers = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 69
    .line 70
    const-string v1, "}"

    .line 71
    .line 72
    invoke-static {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x88

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 15
    .line 16
    const-wide/16 v1, 0x8c

    .line 17
    .line 18
    add-long/2addr v1, p2

    .line 19
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 23
    .line 24
    const-wide/16 v1, 0x9c

    .line 25
    .line 26
    add-long/2addr v1, p2

    .line 27
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 31
    .line 32
    const-wide/16 v1, 0xac

    .line 33
    .line 34
    add-long/2addr v1, p2

    .line 35
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 39
    .line 40
    const-wide/16 v1, 0xbc

    .line 41
    .line 42
    add-long/2addr v1, p2

    .line 43
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const-wide/16 v1, 0xd0

    .line 53
    .line 54
    add-long/2addr v1, p2

    .line 55
    const-wide/16 v3, 0xd8

    .line 56
    .line 57
    add-long/2addr v3, p2

    .line 58
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v3, 0xdc

    .line 62
    .line 63
    add-long/2addr p2, v3

    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Landroid/os/HwBlob;

    .line 69
    .line 70
    mul-int/lit8 p3, v0, 0x18

    .line 71
    .line 72
    invoke-direct {p2, p3}, Landroid/os/HwBlob;-><init>(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    if-ge v3, v0, :cond_0

    .line 76
    .line 77
    iget-object p3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;

    .line 84
    .line 85
    mul-int/lit8 v4, v3, 0x18

    .line 86
    .line 87
    int-to-long v4, v4

    .line 88
    invoke-virtual {p3, p2, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0xe0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
