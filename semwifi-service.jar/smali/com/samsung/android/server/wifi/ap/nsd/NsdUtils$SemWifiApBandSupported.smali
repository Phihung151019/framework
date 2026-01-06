.class public Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemWifiApBandSupported"
.end annotation


# static fields
.field private static final BAND_24GHZ:B = 0x1t

.field private static final BAND_5GHZ:B = 0x2t

.field private static final BAND_6GHZ:B = 0x4t


# instance fields
.field private bandSupport:B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    int-to-byte v0, v0

    .line 2
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

    return-void
.end method


# virtual methods
.method getBandSupportByteCode()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

    .line 2
    .line 3
    return p0
.end method

.method public is24GhzSupported()Z
    .locals 1

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

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

.method public is5GhzSupported()Z
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

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

.method public is6GhzSupported()Z
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

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

.method public setIs5GhzBandSupportedTrue()V
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

    .line 7
    .line 8
    return-void
.end method

.method public setIs6GhzBandSupportedTrue()V
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->bandSupport:B

    .line 7
    .line 8
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
    const-string v2, "is24GhzSupported = "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->is24GhzSupported()Z

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
    const-string v3, "is5GhzSupported = "

    .line 35
    .line 36
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->is5GhzSupported()Z

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
    const-string v2, "is6GhzSupported = "

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->is6GhzSupported()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
