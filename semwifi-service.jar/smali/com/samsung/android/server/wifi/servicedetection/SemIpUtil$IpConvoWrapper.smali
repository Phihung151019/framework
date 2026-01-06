.class public Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpConvoWrapper"
.end annotation


# static fields
.field private static final ETHER_TYPE_IPV6:I = 0x86dd


# instance fields
.field private final hashCode:I

.field public isIpV4:Z

.field public isWanted:Z

.field public final mConvo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpAddressWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->isIpV4:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->isWanted:Z

    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    aget-byte v2, p1, v2

    .line 13
    .line 14
    const/16 v3, 0xff

    .line 15
    .line 16
    and-int/2addr v2, v3

    .line 17
    shl-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    const/16 v4, 0xd

    .line 20
    .line 21
    aget-byte v4, p1, v4

    .line 22
    .line 23
    and-int/2addr v4, v3

    .line 24
    or-int/2addr v2, v4

    .line 25
    int-to-short v2, v2

    .line 26
    invoke-static {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->asUint(S)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const v4, 0x86dd

    .line 31
    .line 32
    .line 33
    if-ne v2, v4, :cond_0

    .line 34
    .line 35
    const/16 v1, 0x10

    .line 36
    .line 37
    new-array v2, v1, [B

    .line 38
    .line 39
    new-array v4, v1, [B

    .line 40
    .line 41
    const/16 v5, 0x16

    .line 42
    .line 43
    invoke-static {p1, v5, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    const/16 v5, 0x26

    .line 47
    .line 48
    invoke-static {p1, v5, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x4

    .line 53
    new-array v4, v2, [B

    .line 54
    .line 55
    new-array v5, v2, [B

    .line 56
    .line 57
    const/16 v6, 0x1a

    .line 58
    .line 59
    invoke-static {p1, v6, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    const/16 v6, 0x1e

    .line 63
    .line 64
    invoke-static {p1, v6, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->isIpV4:Z

    .line 68
    .line 69
    move-object v2, v4

    .line 70
    move-object v4, v5

    .line 71
    :goto_0
    new-instance p1, Ljava/util/HashSet;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->mConvo:Ljava/util/Set;

    .line 77
    .line 78
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpAddressWrapper;

    .line 79
    .line 80
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpAddressWrapper;-><init>([B)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpAddressWrapper;

    .line 87
    .line 88
    invoke-direct {v1, v4}, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpAddressWrapper;-><init>([B)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->isIpV4:Z

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpAddressWrapper;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpAddressWrapper;->ipAddrBA:[B

    .line 115
    .line 116
    const/4 v2, 0x3

    .line 117
    aget-byte v1, v1, v2

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-ne v1, v3, :cond_1

    .line 124
    .line 125
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->isWanted:Z

    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->mConvo:Ljava/util/Set;

    .line 128
    .line 129
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->hashCode:I

    .line 138
    .line 139
    return-void
.end method

.method private static asUint(S)I
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast p1, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->mConvo:Ljava/util/Set;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->mConvo:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->hashCode:I

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->mConvo:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
