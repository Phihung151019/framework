.class public Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemWifiApClientDhcpDetail"
.end annotation


# instance fields
.field deviceType:Ljava/lang/String;

.field mac:Ljava/lang/String;

.field manufacture:Ljava/lang/String;

.field osType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->osType:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->deviceType:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->manufacture:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->mac:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClientMac()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->deviceType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDeviceTypeAcronym()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->deviceType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->getDeviceTypeAcronym(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->manufacture:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getManufactureAcronym()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->manufacture:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->getManufacturerAcronym(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getOsType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->osType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOsTypeAcronym()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->osType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->getOSTypeAcronym(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "OS = "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->osType:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "("

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->getOsTypeAcronym()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, "), "

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "device type = "

    .line 47
    .line 48
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->deviceType:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->getDeviceTypeAcronym()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "manufacture = "

    .line 79
    .line 80
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->manufacture:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->getManufactureAcronym()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ")}"

    .line 99
    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method
