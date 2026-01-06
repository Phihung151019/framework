.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;,
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;,
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;,
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HtCapabilities;,
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;
    }
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final DBG:Z = false

.field private static final SHORT_MASK:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "SemInformationElementUtil0.2"

.field private static final VERSION:Ljava/lang/String; = "0.2"


# direct methods
.method static bridge synthetic -$$Nest$smparseMaxNumberSpatialStreamsFromMcsMap(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static mcsMapToStreamMap(II)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    shr-int/2addr p0, p1

    .line 6
    and-int/lit8 p0, p0, 0x3

    .line 7
    .line 8
    return p0
.end method

.method private static parseMaxNumberSpatialStreamsFromMcsMap(I)I
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x1

    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;->mcsMapToStreamMap(II)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v1
.end method

.method public static toHexString(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-byte v1, v3, v4

    .line 14
    .line 15
    invoke-static {v3}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 23
    .line 24
    const/16 v3, 0xff

    .line 25
    .line 26
    if-ne v1, v3, :cond_0

    .line 27
    .line 28
    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 29
    .line 30
    int-to-byte v1, v1

    .line 31
    new-array v3, v2, [B

    .line 32
    .line 33
    aput-byte v1, v3, v4

    .line 34
    .line 35
    invoke-static {v3}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    int-to-byte v1, v1

    .line 46
    new-array v2, v2, [B

    .line 47
    .line 48
    aput-byte v1, v2, v4

    .line 49
    .line 50
    invoke-static {v2}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 58
    .line 59
    invoke-static {p0}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method
