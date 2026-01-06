.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SipcFmtHdr"
.end annotation


# instance fields
.field ackSeq:B

.field cmdType:B

.field len:S

.field mainCmd:B

.field msgSeq:B

.field subCmd:B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->calculateSize()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/2addr v0, p1

    .line 9
    int-to-short p1, v0

    .line 10
    iput-short p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->len:S

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->msgSeq:B

    .line 14
    .line 15
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->ackSeq:B

    .line 16
    .line 17
    const/16 p1, 0x27

    .line 18
    .line 19
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->mainCmd:B

    .line 20
    .line 21
    const/16 p1, 0x51

    .line 22
    .line 23
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->subCmd:B

    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->cmdType:B

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public calculateSize()I
    .locals 0

    .line 1
    const/4 p0, 0x7

    .line 2
    return p0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->len:S

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->msgSeq:B

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->ackSeq:B

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->mainCmd:B

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->subCmd:B

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->cmdType:B

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    return-void
.end method
