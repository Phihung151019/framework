.class public Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;
.super Ljava/lang/Object;
.source "SecUwbDeviceInfo.java"


# instance fields
.field private final macVersion:[B

.field private final phyVersion:[B

.field private final samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

.field private final uciGenericVersion:[B

.field private final uciTestVersion:[B


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .param p1, "payload"    # [B

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    const/4 v1, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciGenericVersion:[B

    .line 21
    iget-object v2, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciGenericVersion:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->macVersion:[B

    .line 23
    iget-object v2, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->macVersion:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 24
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->phyVersion:[B

    .line 25
    iget-object v2, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->phyVersion:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 26
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciTestVersion:[B

    .line 27
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciTestVersion:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_0

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 33
    .local v1, "samsungSpecificDataLength":I
    new-array v2, v1, [B

    .line 34
    .local v2, "extraData":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    new-instance v3, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-direct {v3, v2}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;-><init>([B)V

    iput-object v3, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    .line 37
    .end local v1    # "samsungSpecificDataLength":I
    .end local v2    # "extraData":[B
    :goto_0
    return-void
.end method


# virtual methods
.method public getChipId()[B
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->getUwbChipInfo()Lcom/samsung/uwb/support/data/param/deviceinfo/UwbChipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbChipInfo;->getChipInfo()[B

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceName()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->getDeviceName()Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;->getDeviceName()[B

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFiraMacMajorVersion()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->macVersion:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getFiraMacMinorVersion()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->macVersion:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public getFiraMacPatchVersion()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->macVersion:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getFiraPhyMajorVersion()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->phyVersion:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getFiraPhyMinorVersion()I
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->phyVersion:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public getFiraPhyPatchVersion()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->phyVersion:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getFiraUciGenMajorVersion()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciGenericVersion:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getFiraUciGenMinorVersion()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciGenericVersion:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public getFiraUciGenPatchVersion()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciGenericVersion:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getFiraUciTestMajorVersion()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciTestVersion:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getFiraUciTestMinorVersion()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciTestVersion:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public getFiraUciTestPatchVersion()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciTestVersion:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getFwMajorVersion()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->getFirmwareVersion()Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;->getFirmwareVersion()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 102
    :cond_0
    return v1
.end method

.method public getFwMinorVersion()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->getFirmwareVersion()Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;->getFirmwareVersion()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFwRcVersion()I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->getFirmwareVersion()Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;->getFirmwareVersion()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSamsungSpecificDataForDeviceInfo()Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    return-object v0
.end method

.method public getVendorUciMajorVersion()I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->getVendorUciVersion()Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;->getVendorUciVersion()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 123
    :cond_0
    return v1
.end method

.method public getVendorUciMinorVersion()I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->getVendorUciVersion()Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;->getVendorUciVersion()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVendorUciPatchVersion()I
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->getVendorUciVersion()Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;->getVendorUciVersion()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 149
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 150
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciGenericVersion:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    .line 151
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciGenericVersion:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciGenericVersion:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 150
    const-string v3, "UCI Generic Version: %d.%d%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 152
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->macVersion:[B

    aget-byte v1, v1, v2

    .line 153
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->macVersion:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->macVersion:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 152
    const-string v3, "MAC Version: %d.%d%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 154
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->phyVersion:[B

    aget-byte v1, v1, v2

    .line 155
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->phyVersion:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->phyVersion:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 154
    const-string v3, "PHY Generic Version: %d.%d%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciTestVersion:[B

    aget-byte v1, v1, v2

    .line 157
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciTestVersion:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->uciTestVersion:[B

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 156
    const-string v2, "UCI Test Version: %d.%d%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 158
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 159
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    if-nez v1, :cond_0

    .line 160
    const-string v1, "Samsung Specification Info: NULL"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->samsungSpecificDataForDeviceInfo:Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 164
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
