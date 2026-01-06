.class public Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemWifiApSecurityTypeSupported"
.end annotation


# static fields
.field private static final SECURITY_ENHANCED_OPEN:B = 0x2t

.field private static final SECURITY_OPEN:B = 0x1t

.field private static final SECURITY_WPA2:B = 0x4t

.field private static final SECURITY_WPA2_WPA3:B = 0x8t

.field private static final SECURITY_WPA3:B = 0x10t


# instance fields
.field private securityTypeSupported:B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    int-to-byte v0, v0

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 2
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    return-void
.end method


# virtual methods
.method getSecurityTypeByteCode()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 2
    .line 3
    return p0
.end method

.method public isSecurityEnhancedOpenSupported()Z
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x2

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public isSecurityOpenSupported()Z
    .locals 1

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public isSecurityWPA2Supported()Z
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x4

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public isSecurityWPA2WPA3Supported()Z
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public isSecurityWPA3Supported()Z
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x10

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method setIsEnhancedOpenSupportedTrue()V
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 7
    .line 8
    return-void
.end method

.method setIsWPA3SupportedTrue()V
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    int-to-byte v0, v0

    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->securityTypeSupported:B

    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "isSecurityOpenSupported = "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->isSecurityOpenSupported()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "isSecurityEnhancedOpenSupported = "

    .line 35
    .line 36
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->isSecurityEnhancedOpenSupported()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "isSecurityWPA2Supported = "

    .line 59
    .line 60
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->isSecurityWPA2Supported()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "isSecurityWPA2WPA3Supported = "

    .line 83
    .line 84
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->isSecurityWPA2WPA3Supported()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "isSecurityWPA3Supported = "

    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->isSecurityWPA3Supported()Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method
