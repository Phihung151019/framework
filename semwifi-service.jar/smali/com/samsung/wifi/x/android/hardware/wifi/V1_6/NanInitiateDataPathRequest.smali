.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public appInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public channel:I

.field public channelRequestType:I

.field public ifaceName:Ljava/lang/String;

.field public peerDiscMacAddr:[B

.field public peerId:I

.field public securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

.field public serviceNameOutOfBand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerId:I

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channelRequestType:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channel:I

    .line 15
    .line 16
    new-instance v0, Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 43
    .line 44
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;",
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
    mul-int/lit16 v3, v2, 0x90

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit16 v5, v1, 0x90

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;",
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
    mul-int/lit16 v3, v1, 0x90

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;

    .line 37
    .line 38
    mul-int/lit16 v5, v4, 0x90

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;

    .line 19
    .line 20
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerId:I

    .line 21
    .line 22
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerId:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 28
    .line 29
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 30
    .line 31
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channelRequestType:I

    .line 39
    .line 40
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channelRequestType:I

    .line 41
    .line 42
    if-eq v2, v3, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channel:I

    .line 46
    .line 47
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channel:I

    .line 48
    .line 49
    if-eq v2, v3, :cond_6

    .line 50
    .line 51
    return v1

    .line 52
    :cond_6
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_7

    .line 61
    .line 62
    return v1

    .line 63
    :cond_7
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 66
    .line 67
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_8

    .line 72
    .line 73
    return v1

    .line 74
    :cond_8
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_9

    .line 83
    .line 84
    return v1

    .line 85
    :cond_9
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_a

    .line 94
    .line 95
    return v1

    .line 96
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerId:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channelRequestType:I

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channel:I

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerId:I

    .line 10
    .line 11
    const-wide/16 v2, 0x4

    .line 12
    .line 13
    add-long v2, p3, v2

    .line 14
    .line 15
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 16
    .line 17
    const/4 v5, 0x6

    .line 18
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0xc

    .line 22
    .line 23
    add-long v2, p3, v2

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channelRequestType:I

    .line 30
    .line 31
    const-wide/16 v2, 0x10

    .line 32
    .line 33
    add-long v2, p3, v2

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channel:I

    .line 40
    .line 41
    const-wide/16 v2, 0x18

    .line 42
    .line 43
    add-long v9, p3, v2

    .line 44
    .line 45
    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    array-length v2, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    int-to-long v5, v2

    .line 59
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    const/4 v11, 0x0

    .line 64
    move-object/from16 v4, p1

    .line 65
    .line 66
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 70
    .line 71
    const-wide/16 v3, 0x28

    .line 72
    .line 73
    add-long v3, p3, v3

    .line 74
    .line 75
    move-object/from16 v12, p1

    .line 76
    .line 77
    invoke-virtual {v2, v12, v1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v2, 0x70

    .line 81
    .line 82
    add-long v17, p3, v2

    .line 83
    .line 84
    const-wide/16 v2, 0x78

    .line 85
    .line 86
    add-long v2, p3, v2

    .line 87
    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    int-to-long v13, v2

    .line 93
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 94
    .line 95
    .line 96
    move-result-wide v15

    .line 97
    const/16 v19, 0x1

    .line 98
    .line 99
    invoke-virtual/range {v12 .. v19}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 106
    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    move v5, v4

    .line 110
    :goto_0
    if-ge v5, v2, :cond_0

    .line 111
    .line 112
    int-to-long v6, v5

    .line 113
    invoke-virtual {v3, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 118
    .line 119
    const/4 v8, 0x1

    .line 120
    invoke-static {v6, v7, v5, v8}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    const-wide/16 v2, 0x80

    .line 126
    .line 127
    add-long v17, p3, v2

    .line 128
    .line 129
    const-wide/16 v2, 0x88

    .line 130
    .line 131
    add-long v2, p3, v2

    .line 132
    .line 133
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    int-to-long v13, v2

    .line 138
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 139
    .line 140
    .line 141
    move-result-wide v15

    .line 142
    const/16 v19, 0x1

    .line 143
    .line 144
    move-object/from16 v12, p1

    .line 145
    .line 146
    invoke-virtual/range {v12 .. v19}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 153
    .line 154
    .line 155
    :goto_1
    if-ge v4, v2, :cond_1

    .line 156
    .line 157
    int-to-long v5, v4

    .line 158
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 163
    .line 164
    const/4 v6, 0x1

    .line 165
    invoke-static {v3, v5, v4, v6}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x90

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.peerId = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .peerDiscMacAddr = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 19
    .line 20
    const-string v2, ", .channelRequestType = "

    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channelRequestType:I

    .line 26
    .line 27
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathChannelCfg;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", .channel = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channel:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", .ifaceName = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", .securityConfig = "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", .appInfo = "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", .serviceNameOutOfBand = "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 80
    .line 81
    const-string v1, "}"

    .line 82
    .line 83
    invoke-static {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x6

    .line 15
    if-ne v3, v4, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0xc

    .line 21
    .line 22
    add-long/2addr v0, p2

    .line 23
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channelRequestType:I

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0x10

    .line 29
    .line 30
    add-long/2addr v0, p2

    .line 31
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->channel:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v0, 0x18

    .line 37
    .line 38
    add-long/2addr v0, p2

    .line 39
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 45
    .line 46
    const-wide/16 v1, 0x28

    .line 47
    .line 48
    add-long/2addr v1, p2

    .line 49
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-wide/16 v1, 0x70

    .line 59
    .line 60
    add-long/2addr v1, p2

    .line 61
    const-wide/16 v3, 0x78

    .line 62
    .line 63
    add-long/2addr v3, p2

    .line 64
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v3, 0x7c

    .line 68
    .line 69
    add-long/2addr v3, p2

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    move v10, v5

    .line 76
    :goto_0
    if-ge v10, v0, :cond_0

    .line 77
    .line 78
    int-to-long v8, v10

    .line 79
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    move-object v6, v3

    .line 86
    check-cast v6, Ljava/lang/Byte;

    .line 87
    .line 88
    const/4 v11, 0x1

    .line 89
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const-wide/16 v1, 0x80

    .line 104
    .line 105
    add-long/2addr v1, p2

    .line 106
    const-wide/16 v3, 0x88

    .line 107
    .line 108
    add-long/2addr v3, p2

    .line 109
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 110
    .line 111
    .line 112
    const-wide/16 v3, 0x8c

    .line 113
    .line 114
    add-long/2addr p2, v3

    .line 115
    invoke-static {p1, p2, p3, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    move v10, v5

    .line 120
    :goto_1
    if-ge v10, v0, :cond_1

    .line 121
    .line 122
    int-to-long v8, v10

    .line 123
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    move-object v6, p2

    .line 130
    check-cast v6, Ljava/lang/Byte;

    .line 131
    .line 132
    const/4 v11, 0x1

    .line 133
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string p1, "Array element is not of the expected length"

    .line 145
    .line 146
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x90

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
