.class public Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final PDC1_CATEGORY_NO_INTERNET_IP_GW:I = 0x5

.field static final PDC2_CATEGORY_ID_DHCP_FAIL:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PatternDHCPProblem"

.field private static final VERSION:Ljava/lang/String; = "Rev03"


# instance fields
.field private mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mDetectedCategoryId:I

.field private mDhcpResult:I

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    .line 6
    .line 7
    return-void
.end method

.method private checkCurrentAndGetReport(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 2
    .line 3
    iget v1, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private getDhcpResult(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v0, "dhcpResult"

    .line 7
    .line 8
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method private isValidIpAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v1, 0x10

    .line 20
    .line 21
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/16 v2, -0x1

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    new-instance v2, Ljava/math/BigInteger;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Ljava/math/BigInteger;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p3}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->toBytes([BI)[B

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-direct {p0, p3, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->toBytes([BI)[B

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance p3, Ljava/math/BigInteger;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p3, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/math/BigInteger;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {p1, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 122
    .line 123
    .line 124
    new-instance p0, Ljava/math/BigInteger;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-direct {p0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-ltz p2, :cond_1

    .line 142
    .line 143
    if-nez p2, :cond_2

    .line 144
    .line 145
    :cond_1
    if-ltz p0, :cond_3

    .line 146
    .line 147
    if-nez p0, :cond_2

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    const/4 p0, 0x0

    .line 151
    return p0

    .line 152
    :cond_3
    :goto_1
    return v3
.end method

.method private toBytes([BI)[B
    .locals 3

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    if-ge v1, p2, :cond_0

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    sub-int/2addr v2, v1

    .line 14
    if-ltz v2, :cond_0

    .line 15
    .line 16
    array-length v2, p1

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    sub-int/2addr v2, v1

    .line 20
    aget-byte v2, p1, v2

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    move v1, v0

    .line 37
    :goto_1
    sub-int v2, p2, p1

    .line 38
    .line 39
    if-ge v1, v2, :cond_1

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    new-array p1, p1, [B

    .line 56
    .line 57
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-ge v0, p2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Ljava/lang/Byte;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    aput-byte p2, p1, v0

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    return-object p1
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 p0, 0xc8

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0x12c

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    filled-new-array {p0, v0, v1}, [Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const-string v2, "Rev03"

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->getPatternId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    .line 15
    .line 16
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDhcpResult:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDhcpResult(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    const/4 v1, 0x7

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->getPatternId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    .line 50
    .line 51
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDhcpResult:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "dhcp"

    .line 2
    .line 3
    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 2
    .line 3
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 4
    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const/16 p0, -0x63

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "rssi"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/16 p1, -0x41

    .line 30
    .line 31
    if-lt p0, p1, :cond_0

    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    return v2

    .line 35
    :cond_1
    const/16 v1, 0x12c

    .line 36
    .line 37
    if-ne v0, v1, :cond_3

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->getDhcpResult(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eq p0, v3, :cond_2

    .line 44
    .line 45
    return v3

    .line 46
    :cond_2
    return v2

    .line 47
    :cond_3
    if-ne v0, v3, :cond_4

    .line 48
    .line 49
    return v3

    .line 50
    :cond_4
    return v2
.end method

.method public matches()Z
    .locals 7

    .line 2
    const-string v0, "assigned ip address is invalid, ip:"

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/16 v3, 0xb

    .line 4
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v3

    const/4 v4, 0x1

    .line 5
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->checkCurrentAndGetReport(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v5

    const/16 v6, 0xc8

    .line 6
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->checkCurrentAndGetReport(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v6

    invoke-direct {v1, v3, v5, v6}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getRssi()I

    move-result v1

    const/16 v3, -0x41

    const-string v5, "PatternDHCPProblem"

    if-ge v1, v3, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rssi: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getRssi()I

    move-result p0

    const-string v1, " < -65"

    .line 9
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v1, 0x12c

    .line 11
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->checkCurrentAndGetReport(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDhcpResult:I

    .line 13
    const-string v1, "dhcp result report not found"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->getDhcpResult(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDhcpResult:I

    if-eq v1, v4, :cond_3

    const/4 v0, 0x7

    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    .line 16
    const-string p0, "dhcp failed"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 17
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget v1, v1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    if-ne v1, v4, :cond_6

    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    .line 19
    const-string v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    .line 21
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget v6, v6, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    .line 22
    invoke-direct {p0, v1, v3, v6}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->isValidIpAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gw:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mask:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2

    .line 26
    :cond_5
    :goto_1
    const-string p0, "ip/gw are empty"

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return v2
.end method

.method public bridge synthetic matches(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
