.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public cipherType:I

.field public passphrase:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public pmk:[B

.field public securityType:I


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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 8
    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 21
    .line 22
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;",
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
    mul-int/lit8 v3, v2, 0x38

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x38

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;",
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
    mul-int/lit8 v3, v1, 0x38

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x38

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 19
    .line 20
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 21
    .line 22
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 28
    .line 29
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 35
    .line 36
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_6

    .line 54
    .line 55
    return v1

    .line 56
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 14
    .line 15
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 6
    .line 7
    const-wide/16 v0, 0x4

    .line 8
    .line 9
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 15
    .line 16
    const-wide/16 v0, 0x8

    .line 17
    .line 18
    add-long/2addr v0, p3

    .line 19
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 20
    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v0, 0x28

    .line 27
    .line 28
    add-long v7, p3, v0

    .line 29
    .line 30
    const-wide/16 v0, 0x30

    .line 31
    .line 32
    add-long/2addr p3, v0

    .line 33
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    int-to-long v3, p3

    .line 38
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const/4 v9, 0x1

    .line 43
    move-object v2, p1

    .line 44
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    :goto_0
    if-ge p2, p3, :cond_0

    .line 55
    .line 56
    int-to-long v0, p2

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-static {p4, v0, p2, v1}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x38

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.securityType = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityType;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", .cipherType = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 23
    .line 24
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCipherSuiteType;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", .pmk = "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 37
    .line 38
    const-string v2, ", .passphrase = "

    .line 39
    .line 40
    invoke-static {v1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 44
    .line 45
    const-string v1, "}"

    .line 46
    .line 47
    invoke-static {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

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
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x8

    .line 15
    .line 16
    add-long/2addr v0, p2

    .line 17
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    const/16 v4, 0x20

    .line 23
    .line 24
    if-ne v3, v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-wide/16 v1, 0x28

    .line 36
    .line 37
    add-long/2addr v1, p2

    .line 38
    const-wide/16 v3, 0x30

    .line 39
    .line 40
    add-long/2addr v3, p2

    .line 41
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v3, 0x34

    .line 45
    .line 46
    add-long/2addr p2, v3

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static {p1, p2, p3, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move v8, v3

    .line 53
    :goto_0
    if-ge v8, v0, :cond_0

    .line 54
    .line 55
    int-to-long v6, v8

    .line 56
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    move-object v4, p2

    .line 63
    check-cast v4, Ljava/lang/Byte;

    .line 64
    .line 65
    const/4 v9, 0x1

    .line 66
    invoke-static/range {v4 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1, v1, v2, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p1, "Array element is not of the expected length"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x38

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
