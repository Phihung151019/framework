.class public Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;
.super Ljava/lang/Object;
.source "SamsungSpecificDataForDeviceInfo.java"


# instance fields
.field private final samsungSpecificData:[B

.field private final tlvParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "payload"    # [B

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->samsungSpecificData:[B

    .line 15
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->samsungSpecificData:[B

    invoke-static {v0}, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceInfoParameter;->parse([B)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    .line 16
    return-void
.end method


# virtual methods
.method public getDeviceName()Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;

    return-object v0
.end method

.method public getFirmwareVersion()Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;

    return-object v0
.end method

.method public getSamsungSpecificData()[B
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->samsungSpecificData:[B

    return-object v0
.end method

.method public getTlvParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTxPower()Lcom/samsung/uwb/support/data/param/deviceinfo/TxPower;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/data/param/deviceinfo/TxPower;

    return-object v0
.end method

.method public getUwbChipInfo()Lcom/samsung/uwb/support/data/param/deviceinfo/UwbChipInfo;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbChipInfo;

    return-object v0
.end method

.method public getUwbsCalMode()Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;

    return-object v0
.end method

.method public getUwbsMaxPpmValue()Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsMaxPpmValue;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsMaxPpmValue;

    return-object v0
.end method

.method public getVendorUciVersion()Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 56
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->samsungSpecificData:[B

    array-length v1, v1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->samsungSpecificData:[B

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 57
    const-string v2, "Samsung Specification Info Length:%d, Value:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 59
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/SamsungSpecificDataForDeviceInfo;->tlvParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 60
    .local v2, "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    .end local v2    # "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
