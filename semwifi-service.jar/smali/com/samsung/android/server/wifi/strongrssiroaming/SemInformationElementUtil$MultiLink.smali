.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiLink"
.end annotation


# static fields
.field private static final BASIC_COMMON_INFO_FIELD_MIN_LEN:I = 0x7

.field private static final BASIC_IE_COMMOM_LINK_ID_MASK:I = 0xf

.field private static final BASIC_IE_COMMOM_LINK_ID_OFFSET:I = 0x7

.field private static final BASIC_IE_COMMON_INFO_LEN_OFFSET:I = 0x0

.field private static final BASIC_IE_COMMON_MLD_MAC_ADDRESS_OFFSET:I = 0x1

.field private static final BASIC_IE_MIN_LEN:I = 0x9

.field private static final BASIC_LINK_INFO_FIELD_MIN_LEN:I = 0x0

.field public static final BSS_PARAM_CHANGE_COUNT_PRESENT_MASK:I = 0x20

.field public static final BSS_PARAM_CHANGE_COUNT_PRESENT_OFFSET:I = 0x0

.field private static final COMMON_FIELD_START_INDEX:I = 0x2

.field private static final CONTROL_FIELD_LEN:I = 0x2

.field public static final EML_CAPABILITIES_PRESENT_MASK:I = 0x80

.field public static final EML_CAPABILITIES_PRESENT_OFFSET:I = 0x0

.field private static final IE_TYPE_MASK:I = 0x7

.field private static final IE_TYPE_OFFSET:I = 0x0

.field public static final LINK_ID_PRESENT_MASK:I = 0x10

.field public static final LINK_ID_PRESENT_OFFSET:I = 0x0

.field public static final MEDIUM_SYNC_DELAY_INFO_PRESENT_MASK:I = 0x40

.field public static final MEDIUM_SYNC_DELAY_INFO_PRESENT_OFFSET:I = 0x0

.field public static final MLD_CAPABILITIES_PRESENT_MASK:I = 0x1

.field public static final MLD_CAPABILITIES_PRESENT_OFFSET:I = 0x1

.field private static final PER_STA_SUB_ELEMENT_ID:I = 0x0

.field private static final PER_STA_SUB_ELEMENT_LINK_ID_MASK:I = 0xf

.field private static final PER_STA_SUB_ELEMENT_LINK_ID_OFFSET:I = 0x2

.field private static final PER_STA_SUB_ELEMENT_MAC_ADDRESS_PRESENT_MASK:I = 0x20

.field private static final PER_STA_SUB_ELEMENT_MAC_ADDRESS_PRESENT_OFFSET:I = 0x2

.field private static final PER_STA_SUB_ELEMENT_MIN_LEN:I = 0x5

.field private static final PER_STA_SUB_ELEMENT_STA_INFO_MAC_ADDRESS_OFFSET:I = 0x1

.field private static final PER_STA_SUB_ELEMENT_STA_INFO_OFFSET:I = 0x4

.field public static final TYPE_BASIC:I


# instance fields
.field private mAffiliatedLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation
.end field

.field private mEmlCapabilities:S

.field private mLinkId:I

.field private mMldCapabilities:S

.field private mMldMacAddress:Landroid/net/MacAddress;

.field private mPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mPresent:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mLinkId:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mMldMacAddress:Landroid/net/MacAddress;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mAffiliatedLinks:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method private parseCommonInfoField(Landroid/net/wifi/ScanResult$InformationElement;)I
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0xff

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 14
    .line 15
    aget-byte v1, v1, v2

    .line 16
    .line 17
    and-int/lit8 v1, v1, 0x10

    .line 18
    .line 19
    const/16 v3, 0x9

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    const/16 v4, 0xa

    .line 27
    .line 28
    if-ge v1, v4, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 32
    .line 33
    aget-byte v1, v1, v3

    .line 34
    .line 35
    and-int/lit8 v1, v1, 0xf

    .line 36
    .line 37
    iput v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mLinkId:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v4, v3

    .line 41
    :goto_0
    const/4 v1, 0x3

    .line 42
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 43
    .line 44
    invoke-static {v5, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mMldMacAddress:Landroid/net/MacAddress;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    and-int/lit8 v1, v1, 0x20

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    :cond_3
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    and-int/lit8 v1, v1, 0x40

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x2

    .line 83
    .line 84
    :cond_4
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    and-int/lit16 v1, v1, 0x80

    .line 89
    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/lit8 v3, v4, 0x2

    .line 97
    .line 98
    if-lt v1, v3, :cond_6

    .line 99
    .line 100
    if-ge v0, v4, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iput-short v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mEmlCapabilities:S

    .line 108
    .line 109
    move v4, v3

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    :goto_1
    return v2

    .line 112
    :cond_7
    :goto_2
    const/4 v1, 0x1

    .line 113
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    and-int/2addr v1, v3

    .line 118
    if-eqz v1, :cond_a

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    add-int/lit8 v3, v4, 0x2

    .line 125
    .line 126
    if-lt v1, v3, :cond_9

    .line 127
    .line 128
    if-ge v0, v4, :cond_8

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_8
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput-short p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mMldCapabilities:S

    .line 136
    .line 137
    return v0

    .line 138
    :cond_9
    :goto_3
    return v2

    .line 139
    :cond_a
    return v0
.end method

.method private parseLinkInfoField(Landroid/net/wifi/ScanResult$InformationElement;I)Z
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v1, p2, 0x5

    .line 5
    .line 6
    if-lt v0, v1, :cond_6

    .line 7
    .line 8
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 9
    .line 10
    aget-byte v0, v0, p2

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 13
    .line 14
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 15
    .line 16
    add-int/lit8 v2, p2, 0x1

    .line 17
    .line 18
    aget-byte v1, v1, v2

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    add-int v3, p2, v1

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-lt v2, v3, :cond_5

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :goto_1
    move p2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Landroid/net/wifi/MloLink;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/net/wifi/MloLink;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 43
    .line 44
    add-int/lit8 v5, p2, 0x2

    .line 45
    .line 46
    aget-byte v2, v2, v5

    .line 47
    .line 48
    and-int/lit8 v2, v2, 0xf

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/net/wifi/MloLink;->setLinkId(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 54
    .line 55
    add-int/lit8 v6, p2, 0x4

    .line 56
    .line 57
    aget-byte v2, v2, v6

    .line 58
    .line 59
    and-int/lit16 v2, v2, 0xff

    .line 60
    .line 61
    add-int/lit8 v6, v2, 0x4

    .line 62
    .line 63
    if-ge v1, v6, :cond_2

    .line 64
    .line 65
    return v4

    .line 66
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 67
    .line 68
    aget-byte v1, v1, v5

    .line 69
    .line 70
    and-int/lit8 v1, v1, 0x20

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    const/4 v1, 0x7

    .line 75
    if-ge v2, v1, :cond_3

    .line 76
    .line 77
    return v4

    .line 78
    :cond_3
    add-int/lit8 v1, p2, 0x5

    .line 79
    .line 80
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 81
    .line 82
    add-int/lit8 p2, p2, 0xb

    .line 83
    .line 84
    invoke-static {v2, v1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {v0, p2}, Landroid/net/wifi/MloLink;->setApMacAddress(Landroid/net/MacAddress;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mAffiliatedLinks:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    :goto_2
    return v4

    .line 102
    :cond_6
    const/4 p0, 0x1

    .line 103
    return p0
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    if-ne v0, v1, :cond_6

    .line 6
    .line 7
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 8
    .line 9
    const/16 v1, 0x6b

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 15
    .line 16
    array-length v0, v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-byte v0, v0, v2

    .line 25
    .line 26
    and-int/lit8 v0, v0, 0x7

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 32
    .line 33
    array-length v0, v0

    .line 34
    const/16 v2, 0x9

    .line 35
    .line 36
    if-ge v0, v2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->parseCommonInfoField(Landroid/net/wifi/ScanResult$InformationElement;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    add-int/2addr v0, v1

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->parseLinkInfoField(Landroid/net/wifi/ScanResult$InformationElement;I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_5

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mPresent:Z

    .line 56
    .line 57
    :cond_6
    :goto_0
    return-void
.end method

.method public getAffiliatedLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mAffiliatedLinks:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getLinkId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mLinkId:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxNumOfSimultaneousLinks()I
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mMldCapabilities:S

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0xf

    .line 4
    .line 5
    return p0
.end method

.method public getMldCapabilities()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mMldCapabilities:S

    .line 2
    .line 3
    return p0
.end method

.method public getMldMacAddress()Landroid/net/MacAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mMldMacAddress:Landroid/net/MacAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTidToLinkMappingNegotiationSupport()I
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mMldCapabilities:S

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x60

    .line 4
    .line 5
    shr-int/lit8 p0, p0, 0x5

    .line 6
    .line 7
    return p0
.end method

.method public isPresent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->mPresent:Z

    .line 2
    .line 3
    return p0
.end method
