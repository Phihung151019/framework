.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnqpData"
.end annotation


# instance fields
.field public anqp3gppCellularNetwork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public domainName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public ipAddrTypeAvailability:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public naiRealm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public roamingConsortium:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public venueName:Ljava/util/ArrayList;
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
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 45
    .line 46
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;",
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
    mul-int/lit8 v3, v2, 0x60

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x60

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;",
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
    mul-int/lit8 v3, v1, 0x60

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x60

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    return v1

    .line 42
    :cond_4
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    return v1

    .line 53
    :cond_5
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    return v1

    .line 64
    :cond_6
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_7

    .line 73
    .line 74
    return v1

    .line 75
    :cond_7
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_8

    .line 84
    .line 85
    return v1

    .line 86
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

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
    .locals 10

    .line 1
    const-wide/16 v0, 0x8

    .line 2
    .line 3
    add-long/2addr v0, p3

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-long v2, v0

    .line 9
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/4 v8, 0x1

    .line 14
    move-object v1, p1

    .line 15
    move-wide v6, p3

    .line 16
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    move v2, v9

    .line 27
    :goto_0
    if-ge v2, v0, :cond_0

    .line 28
    .line 29
    int-to-long v3, v2

    .line 30
    invoke-virtual {p1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-wide/16 v2, 0x10

    .line 43
    .line 44
    add-long v6, p3, v2

    .line 45
    .line 46
    const-wide/16 v2, 0x18

    .line 47
    .line 48
    add-long/2addr v2, p3

    .line 49
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    int-to-long v2, p1

    .line 54
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    const/4 v8, 0x1

    .line 59
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    move v2, v9

    .line 69
    :goto_1
    if-ge v2, p1, :cond_1

    .line 70
    .line 71
    int-to-long v3, v2

    .line 72
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const-wide/16 v2, 0x20

    .line 85
    .line 86
    add-long v6, p3, v2

    .line 87
    .line 88
    const-wide/16 v2, 0x28

    .line 89
    .line 90
    add-long/2addr v2, p3

    .line 91
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    int-to-long v2, p1

    .line 96
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    const/4 v8, 0x1

    .line 101
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 108
    .line 109
    .line 110
    move v2, v9

    .line 111
    :goto_2
    if-ge v2, p1, :cond_2

    .line 112
    .line 113
    int-to-long v3, v2

    .line 114
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    const-wide/16 v2, 0x30

    .line 127
    .line 128
    add-long v6, p3, v2

    .line 129
    .line 130
    const-wide/16 v2, 0x38

    .line 131
    .line 132
    add-long/2addr v2, p3

    .line 133
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    int-to-long v2, p1

    .line 138
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    const/4 v8, 0x1

    .line 143
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 150
    .line 151
    .line 152
    move v2, v9

    .line 153
    :goto_3
    if-ge v2, p1, :cond_3

    .line 154
    .line 155
    int-to-long v3, v2

    .line 156
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 161
    .line 162
    const/4 v5, 0x1

    .line 163
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    const-wide/16 v2, 0x40

    .line 169
    .line 170
    add-long v6, p3, v2

    .line 171
    .line 172
    const-wide/16 v2, 0x48

    .line 173
    .line 174
    add-long/2addr v2, p3

    .line 175
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    int-to-long v2, p1

    .line 180
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 181
    .line 182
    .line 183
    move-result-wide v4

    .line 184
    const/4 v8, 0x1

    .line 185
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 192
    .line 193
    .line 194
    move v2, v9

    .line 195
    :goto_4
    if-ge v2, p1, :cond_4

    .line 196
    .line 197
    int-to-long v3, v2

    .line 198
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 203
    .line 204
    const/4 v5, 0x1

    .line 205
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    goto :goto_4

    .line 210
    :cond_4
    const-wide/16 v2, 0x50

    .line 211
    .line 212
    add-long v6, p3, v2

    .line 213
    .line 214
    const-wide/16 v2, 0x58

    .line 215
    .line 216
    add-long/2addr p3, v2

    .line 217
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    int-to-long v2, p1

    .line 222
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 223
    .line 224
    .line 225
    move-result-wide v4

    .line 226
    const/4 v8, 0x1

    .line 227
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    iget-object p3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 234
    .line 235
    .line 236
    :goto_5
    if-ge v9, p1, :cond_5

    .line 237
    .line 238
    int-to-long p3, v9

    .line 239
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 240
    .line 241
    .line 242
    move-result p3

    .line 243
    iget-object p4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 244
    .line 245
    const/4 v0, 0x1

    .line 246
    invoke-static {p3, p4, v9, v0}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    goto :goto_5

    .line 251
    :cond_5
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x60

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.venueName = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .roamingConsortium = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .ipAddrTypeAvailability = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", .naiRealm = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", .anqp3gppCellularNetwork = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", .domainName = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 59
    .line 60
    const-string v1, "}"

    .line 61
    .line 62
    invoke-static {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x8

    .line 8
    .line 9
    add-long/2addr v1, p2

    .line 10
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0xc

    .line 14
    .line 15
    add-long/2addr v1, p2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    move v8, v3

    .line 22
    :goto_0
    if-ge v8, v0, :cond_0

    .line 23
    .line 24
    int-to-long v6, v8

    .line 25
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v4, v1

    .line 32
    check-cast v4, Ljava/lang/Byte;

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    invoke-static/range {v4 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1, p2, p3, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-wide/16 v1, 0x10

    .line 50
    .line 51
    add-long/2addr v1, p2

    .line 52
    const-wide/16 v4, 0x18

    .line 53
    .line 54
    add-long/2addr v4, p2

    .line 55
    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v4, 0x1c

    .line 59
    .line 60
    add-long/2addr v4, p2

    .line 61
    invoke-static {p1, v4, v5, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    move v10, v3

    .line 66
    :goto_1
    if-ge v10, v0, :cond_1

    .line 67
    .line 68
    int-to-long v8, v10

    .line 69
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    move-object v6, v4

    .line 76
    check-cast v6, Ljava/lang/Byte;

    .line 77
    .line 78
    const/4 v11, 0x1

    .line 79
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const-wide/16 v1, 0x20

    .line 94
    .line 95
    add-long/2addr v1, p2

    .line 96
    const-wide/16 v4, 0x28

    .line 97
    .line 98
    add-long/2addr v4, p2

    .line 99
    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v4, 0x2c

    .line 103
    .line 104
    add-long/2addr v4, p2

    .line 105
    invoke-static {p1, v4, v5, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    move v10, v3

    .line 110
    :goto_2
    if-ge v10, v0, :cond_2

    .line 111
    .line 112
    int-to-long v8, v10

    .line 113
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    move-object v6, v4

    .line 120
    check-cast v6, Ljava/lang/Byte;

    .line 121
    .line 122
    const/4 v11, 0x1

    .line 123
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const-wide/16 v1, 0x30

    .line 138
    .line 139
    add-long/2addr v1, p2

    .line 140
    const-wide/16 v4, 0x38

    .line 141
    .line 142
    add-long/2addr v4, p2

    .line 143
    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 144
    .line 145
    .line 146
    const-wide/16 v4, 0x3c

    .line 147
    .line 148
    add-long/2addr v4, p2

    .line 149
    invoke-static {p1, v4, v5, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    move v10, v3

    .line 154
    :goto_3
    if-ge v10, v0, :cond_3

    .line 155
    .line 156
    int-to-long v8, v10

    .line 157
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    move-object v6, v4

    .line 164
    check-cast v6, Ljava/lang/Byte;

    .line 165
    .line 166
    const/4 v11, 0x1

    .line 167
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    goto :goto_3

    .line 172
    :cond_3
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const-wide/16 v1, 0x40

    .line 182
    .line 183
    add-long/2addr v1, p2

    .line 184
    const-wide/16 v4, 0x48

    .line 185
    .line 186
    add-long/2addr v4, p2

    .line 187
    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 188
    .line 189
    .line 190
    const-wide/16 v4, 0x4c

    .line 191
    .line 192
    add-long/2addr v4, p2

    .line 193
    invoke-static {p1, v4, v5, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    move v10, v3

    .line 198
    :goto_4
    if-ge v10, v0, :cond_4

    .line 199
    .line 200
    int-to-long v8, v10

    .line 201
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    move-object v6, v4

    .line 208
    check-cast v6, Ljava/lang/Byte;

    .line 209
    .line 210
    const/4 v11, 0x1

    .line 211
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    goto :goto_4

    .line 216
    :cond_4
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    const-wide/16 v1, 0x50

    .line 226
    .line 227
    add-long/2addr v1, p2

    .line 228
    const-wide/16 v4, 0x58

    .line 229
    .line 230
    add-long/2addr v4, p2

    .line 231
    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 232
    .line 233
    .line 234
    const-wide/16 v4, 0x5c

    .line 235
    .line 236
    add-long/2addr p2, v4

    .line 237
    invoke-static {p1, p2, p3, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    move v8, v3

    .line 242
    :goto_5
    if-ge v8, v0, :cond_5

    .line 243
    .line 244
    int-to-long v6, v8

    .line 245
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    move-object v4, p2

    .line 252
    check-cast v4, Ljava/lang/Byte;

    .line 253
    .line 254
    const/4 v9, 0x1

    .line 255
    invoke-static/range {v4 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    goto :goto_5

    .line 260
    :cond_5
    invoke-virtual {p1, v1, v2, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 261
    .line 262
    .line 263
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x60

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
