.class public Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interworking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;
    }
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field public static final MAXIMUM_INTEGER_SIZE:I = 0x8

.field public static final MINIMUM_INTEGER_SIZE:I = 0x1


# instance fields
.field public ant:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

.field public hessid:J

.field public internet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->ant:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->internet:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->hessid:J

    .line 13
    .line 14
    return-void
.end method

.method public static readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p2, v0, :cond_3

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-gt p2, v1, :cond_3

    .line 7
    .line 8
    new-array v2, p2, [B

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    .line 19
    sub-int/2addr p2, v0

    .line 20
    :goto_0
    if-ltz p2, :cond_0

    .line 21
    .line 22
    shl-long p0, v3, v1

    .line 23
    .line 24
    aget-byte v0, v2, p2

    .line 25
    .line 26
    and-int/lit16 v0, v0, 0xff

    .line 27
    .line 28
    int-to-long v3, v0

    .line 29
    or-long/2addr v3, p0

    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-wide v3

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    :goto_1
    if-ge p0, p2, :cond_2

    .line 36
    .line 37
    aget-byte p1, v2, p0

    .line 38
    .line 39
    shl-long/2addr v3, v1

    .line 40
    and-int/lit16 p1, p1, 0xff

    .line 41
    .line 42
    int-to-long v5, p1

    .line 43
    or-long/2addr v3, v5

    .line 44
    add-int/lit8 p0, p0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    return-wide v3

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p1, "Invalid size "

    .line 51
    .line 52
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 2
    .line 3
    const/16 v1, 0x6b

    .line 4
    .line 5
    if-ne v0, v1, :cond_7

    .line 6
    .line 7
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 8
    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;->values()[Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    and-int/lit8 v3, v1, 0xf

    .line 28
    .line 29
    aget-object v2, v2, v3

    .line 30
    .line 31
    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->ant:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

    .line 32
    .line 33
    and-int/lit8 v1, v1, 0x10

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->internet:Z

    .line 42
    .line 43
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 44
    .line 45
    array-length v1, v1

    .line 46
    const/4 v3, 0x7

    .line 47
    const/4 v4, 0x3

    .line 48
    const/16 v5, 0x9

    .line 49
    .line 50
    if-eq v1, v2, :cond_2

    .line 51
    .line 52
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 53
    .line 54
    array-length v1, v1

    .line 55
    if-eq v1, v4, :cond_2

    .line 56
    .line 57
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 58
    .line 59
    array-length v1, v1

    .line 60
    if-eq v1, v3, :cond_2

    .line 61
    .line 62
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 63
    .line 64
    array-length v1, v1

    .line 65
    if-ne v1, v5, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "Bad Interworking element length: "

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 78
    .line 79
    array-length p1, p1

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_2
    :goto_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 92
    .line 93
    array-length v1, v1

    .line 94
    if-eq v1, v4, :cond_3

    .line 95
    .line 96
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 97
    .line 98
    array-length v1, v1

    .line 99
    if-ne v1, v5, :cond_4

    .line 100
    .line 101
    :cond_3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 102
    .line 103
    const/4 v2, 0x2

    .line 104
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 108
    .line 109
    array-length v1, v1

    .line 110
    if-eq v1, v3, :cond_6

    .line 111
    .line 112
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 113
    .line 114
    array-length p1, p1

    .line 115
    if-ne p1, v5, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    return-void

    .line 119
    :cond_6
    :goto_2
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 120
    .line 121
    const/4 v1, 0x6

    .line 122
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->hessid:J

    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "Element id is not INTERWORKING, : "

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0
.end method
