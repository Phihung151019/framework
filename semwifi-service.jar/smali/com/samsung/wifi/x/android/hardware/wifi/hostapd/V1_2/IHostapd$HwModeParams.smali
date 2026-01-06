.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HwModeParams"
.end annotation


# instance fields
.field public enable6GhzBand:Z

.field public enable80211AX:Z

.field public enableHeMultiUserBeamformer:Z

.field public enableHeSingleUserBeamformee:Z

.field public enableHeSingleUserBeamformer:Z

.field public enableHeTargetWakeTime:Z


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
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    .line 16
    .line 17
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;",
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
    mul-int/lit8 v3, v2, 0x6

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x6

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;",
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
    mul-int/lit8 v3, v1, 0x6

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x6

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 37
    .line 38
    if-eq v2, v3, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_5
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 44
    .line 45
    if-eq v2, v3, :cond_6

    .line 46
    .line 47
    return v1

    .line 48
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 51
    .line 52
    if-eq v2, v3, :cond_7

    .line 53
    .line 54
    return v1

    .line 55
    :cond_7
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    .line 56
    .line 57
    iget-boolean p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    .line 58
    .line 59
    if-eq p0, p1, :cond_8

    .line 60
    .line 61
    return v1

    .line 62
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 20
    .line 21
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    .line 32
    .line 33
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

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
    .locals 2

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 15
    .line 16
    const-wide/16 v0, 0x2

    .line 17
    .line 18
    add-long/2addr v0, p3

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 24
    .line 25
    const-wide/16 v0, 0x3

    .line 26
    .line 27
    add-long/2addr v0, p3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 33
    .line 34
    const-wide/16 v0, 0x4

    .line 35
    .line 36
    add-long/2addr v0, p3

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 42
    .line 43
    const-wide/16 v0, 0x5

    .line 44
    .line 45
    add-long/2addr p3, v0

    .line 46
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    .line 51
    .line 52
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x6

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.enable80211AX = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .enable6GhzBand = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .enableHeSingleUserBeamformer = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", .enableHeSingleUserBeamformee = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", .enableHeMultiUserBeamformer = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", .enableHeTargetWakeTime = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, "}"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x2

    .line 15
    .line 16
    add-long/2addr v0, p2

    .line 17
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0x3

    .line 23
    .line 24
    add-long/2addr v0, p2

    .line 25
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0x4

    .line 31
    .line 32
    add-long/2addr v0, p2

    .line 33
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0x5

    .line 39
    .line 40
    add-long/2addr p2, v0

    .line 41
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
