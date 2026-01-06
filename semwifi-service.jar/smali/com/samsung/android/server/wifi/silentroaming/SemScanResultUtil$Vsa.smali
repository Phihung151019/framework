.class public Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vsa"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;
    }
.end annotation


# static fields
.field private static final ANQP_DOMAIN_ID_PRESENT_BIT:I = 0x4

.field private static final ANQP_PPS_MO_ID_BIT:I = 0x2

.field public static final BYTE_MASK:I = 0xff

.field public static final MBO_AP_CAP_IND_ATTR_CELL_DATA_AWARE:I = 0x40

.field public static final MBO_OCE_AID_ASSOCIATION_DISALLOWED:I = 0x4

.field public static final MBO_OCE_AID_MBO_AP_CAPABILITY_INDICATION:I = 0x1

.field public static final MBO_OCE_AID_OCE_AP_CAPABILITY_INDICATION:I = 0x65

.field public static final MBO_OCE_ATTRIBUTE_NOT_PRESENT:I = -0x1

.field public static final NIBBLE_MASK:I = 0xf

.field public static final OCE_AP_CAP_IND_ATTR_HLP:I = 0x20

.field private static final OUI_AIRONET:I = 0x4096

.field private static final OUI_TYPE_CCX:I = 0x3

.field private static final OUI_TYPE_HS20:I = 0x10

.field private static final OUI_TYPE_MBO_OCE:I = 0x16

.field private static final OUI_WFA_ALLIANCE:I = 0x506f9a

.field public static final SHORT_MASK:I = 0xffff


# instance fields
.field public IsCcxIe:Z

.field public IsMboApCellularDataAware:Z

.field public IsMboCapable:Z

.field public IsOceApHlp:Z

.field public IsOceCapable:Z

.field public anqpDomainID:I

.field public hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

.field public mboAssociationDisallowedReasonCode:I

.field public oui:[B


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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->anqpDomainID:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboCapable:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboApCellularDataAware:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceCapable:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceApHlp:Z

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->mboAssociationDisallowedReasonCode:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsCcxIe:Z

    .line 22
    .line 23
    return-void
.end method

.method private parseVsaHs20(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 14
    .line 15
    array-length v1, v1

    .line 16
    const/4 v2, 0x5

    .line 17
    if-lt v1, v2, :cond_6

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    and-int/lit16 v2, v1, 0xff

    .line 27
    .line 28
    shr-int/lit8 v2, v2, 0x4

    .line 29
    .line 30
    and-int/lit8 v2, v2, 0xf

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eq v2, v4, :cond_1

    .line 37
    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->Unknown:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 41
    .line 42
    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 43
    .line 44
    const-string v2, "SemScanResultUtil"

    .line 45
    .line 46
    const-string v4, "parseVsaHs20, hsRelease is Unknown"

    .line 47
    .line 48
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R3:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 53
    .line 54
    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R2:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R1:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 63
    .line 64
    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 65
    .line 66
    :goto_0
    and-int/lit8 v2, v1, 0x4

    .line 67
    .line 68
    if-eqz v2, :cond_6

    .line 69
    .line 70
    and-int/2addr v1, v3

    .line 71
    const-string v2, "HS20 indication element too short: "

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 76
    .line 77
    array-length v1, v1

    .line 78
    const/16 v3, 0x9

    .line 79
    .line 80
    if-lt v1, v3, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 94
    .line 95
    array-length p1, p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_4
    const/4 v3, 0x7

    .line 108
    :goto_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 109
    .line 110
    array-length v1, v1

    .line 111
    if-lt v1, v3, :cond_5

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const v0, 0xffff

    .line 118
    .line 119
    .line 120
    and-int/2addr p1, v0

    .line 121
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->anqpDomainID:I

    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 132
    .line 133
    array-length p1, p1

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_6
    return-void
.end method

.method private parseVsaMboOce(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-le v0, v1, :cond_6

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    and-int/lit16 v2, v2, 0xff

    .line 34
    .line 35
    if-eqz v2, :cond_7

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-le v2, v3, :cond_0

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_0
    new-array v2, v2, [B

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    if-eq v0, v1, :cond_4

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    if-eq v0, v4, :cond_3

    .line 55
    .line 56
    const/16 v4, 0x65

    .line 57
    .line 58
    if-eq v0, v4, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceCapable:Z

    .line 62
    .line 63
    aget-byte v0, v2, v3

    .line 64
    .line 65
    and-int/lit8 v0, v0, 0x20

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v1, v3

    .line 71
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceApHlp:Z

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    aget-byte v0, v2, v3

    .line 75
    .line 76
    and-int/lit16 v0, v0, 0xff

    .line 77
    .line 78
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->mboAssociationDisallowedReasonCode:I

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboCapable:Z

    .line 82
    .line 83
    aget-byte v0, v2, v3

    .line 84
    .line 85
    and-int/lit8 v0, v0, 0x40

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move v1, v3

    .line 91
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboApCellularDataAware:Z

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    invoke-static {}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->-$$Nest$sfgetDBG()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v0, ":parseMboOce MBO: "

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboCapable:Z

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, " cellDataAware: "

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboApCellularDataAware:Z

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, " AssocDisAllowRC: "

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->mboAssociationDisallowedReasonCode:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, " :OCE: "

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceCapable:Z

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, " OCE HLP: "

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceApHlp:Z

    .line 148
    .line 149
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    const-string p1, "SemScanResultUtil"

    .line 157
    .line 158
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x3

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->-$$Nest$sfgetDBG()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_5

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Invalid vendor specific element len: "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 21
    .line 22
    array-length p1, p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "SemScanResultUtil"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->oui:[B

    .line 44
    .line 45
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 46
    .line 47
    aget-byte v0, v0, v2

    .line 48
    .line 49
    and-int/lit16 v0, v0, 0xff

    .line 50
    .line 51
    const/16 v2, 0x10

    .line 52
    .line 53
    shl-int/2addr v0, v2

    .line 54
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    aget-byte v3, v3, v4

    .line 58
    .line 59
    and-int/lit16 v3, v3, 0xff

    .line 60
    .line 61
    shl-int/lit8 v3, v3, 0x8

    .line 62
    .line 63
    or-int/2addr v0, v3

    .line 64
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    aget-byte v3, v3, v5

    .line 68
    .line 69
    and-int/lit16 v3, v3, 0xff

    .line 70
    .line 71
    or-int/2addr v0, v3

    .line 72
    const v3, 0x506f9a

    .line 73
    .line 74
    .line 75
    const/4 v5, 0x4

    .line 76
    if-ne v0, v3, :cond_3

    .line 77
    .line 78
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 79
    .line 80
    array-length v3, v3

    .line 81
    if-lt v3, v5, :cond_3

    .line 82
    .line 83
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 84
    .line 85
    aget-byte v0, v0, v1

    .line 86
    .line 87
    if-eq v0, v2, :cond_2

    .line 88
    .line 89
    const/16 v1, 0x16

    .line 90
    .line 91
    if-eq v0, v1, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->parseVsaMboOce(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->parseVsaHs20(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    const/16 v2, 0x4096

    .line 103
    .line 104
    if-ne v0, v2, :cond_5

    .line 105
    .line 106
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 107
    .line 108
    array-length v0, v0

    .line 109
    if-lt v0, v5, :cond_5

    .line 110
    .line 111
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 112
    .line 113
    aget-byte p1, p1, v1

    .line 114
    .line 115
    if-eq p1, v1, :cond_4

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsCcxIe:Z

    .line 119
    .line 120
    :cond_5
    :goto_0
    return-void
.end method
