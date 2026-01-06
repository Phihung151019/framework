.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiSystemCommonNotiType"
.end annotation


# static fields
.field private static maxConn:I = 0x8


# instance fields
.field private band:[B

.field private bandwidth:[B

.field private channel:[I

.field private numConn:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->maxConn:I

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->band:[B

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->bandwidth:[B

    .line 13
    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->channel:[I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->numConn:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public calculateSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->band:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    add-int/2addr v1, v0

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->bandwidth:[B

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    add-int/2addr v1, v0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->channel:[I

    .line 11
    .line 12
    array-length p0, p0

    .line 13
    mul-int/lit8 p0, p0, 0x2

    .line 14
    .line 15
    add-int/2addr p0, v1

    .line 16
    return p0
.end method

.method public updateInfo(BBI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->band:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->numConn:I

    .line 4
    .line 5
    aput-byte p1, v0, v1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->bandwidth:[B

    .line 8
    .line 9
    aput-byte p2, p1, v1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->channel:[I

    .line 12
    .line 13
    aput p3, p1, v1

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->numConn:I

    .line 18
    .line 19
    return-void
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->numConn:I

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->band:[B

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    aget-byte v4, v0, v3

    .line 15
    .line 16
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->bandwidth:[B

    .line 23
    .line 24
    array-length v1, v0

    .line 25
    move v3, v2

    .line 26
    :goto_1
    if-ge v3, v1, :cond_1

    .line 27
    .line 28
    aget-byte v4, v0, v3

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->channel:[I

    .line 37
    .line 38
    array-length v0, p0

    .line 39
    :goto_2
    if-ge v2, v0, :cond_2

    .line 40
    .line 41
    aget v1, p0, v2

    .line 42
    .line 43
    int-to-short v1, v1

    .line 44
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    return-void
.end method
