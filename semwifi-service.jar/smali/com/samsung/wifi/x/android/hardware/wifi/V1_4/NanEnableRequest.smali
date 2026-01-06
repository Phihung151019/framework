.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

.field public debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

.field public hopCountMax:B

.field public operateInBand:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Z

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 25
    .line 26
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;",
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
    mul-int/lit8 v3, v2, 0x5c

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x5c

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;",
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
    mul-int/lit8 v3, v1, 0x5c

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x5c

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    .line 21
    .line 22
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

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
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 32
    .line 33
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

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
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_6

    .line 58
    .line 59
    return v1

    .line 60
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

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
    move-result-object v0

    .line 11
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 12
    .line 13
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 18
    .line 19
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 28
    .line 29
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x3

    .line 8
    .line 9
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 17
    .line 18
    const-wide/16 v1, 0x4

    .line 19
    .line 20
    add-long/2addr v1, p3

    .line 21
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 25
    .line 26
    const-wide/16 v0, 0x2c

    .line 27
    .line 28
    add-long/2addr p3, v0

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x5c

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.operateInBand = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", .hopCountMax = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", .configParams = "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", .debugConfigs = "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "}"

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->operateInBand:[Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x3

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x3

    .line 13
    .line 14
    add-long/2addr v0, p2

    .line 15
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->hopCountMax:B

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 21
    .line 22
    const-wide/16 v1, 0x4

    .line 23
    .line 24
    add-long/2addr v1, p2

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 29
    .line 30
    const-wide/16 v0, 0x2c

    .line 31
    .line 32
    add-long/2addr p2, v0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p1, "Array element is not of the expected length"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x5c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
