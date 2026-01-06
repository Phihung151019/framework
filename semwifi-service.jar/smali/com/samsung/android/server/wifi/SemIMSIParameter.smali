.class public Lcom/samsung/android/server/wifi/SemIMSIParameter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final MAX_IMSI_LENGTH:I = 0xf

.field public static final MCC_MNC_LENGTH_5:I = 0x5

.field public static final MCC_MNC_LENGTH_6:I = 0x6


# instance fields
.field private final mImsi:Ljava/lang/String;

.field private final mPrefix:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    .line 7
    .line 8
    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIMSIParameter;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0xf

    .line 14
    .line 15
    if-le v0, v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    move v2, v0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge v2, v4, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x30

    .line 32
    .line 33
    if-lt v3, v4, :cond_3

    .line 34
    .line 35
    const/16 v4, 0x39

    .line 36
    .line 37
    if-le v3, v4, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v2, v4, :cond_4

    .line 48
    .line 49
    new-instance v1, Lcom/samsung/android/server/wifi/SemIMSIParameter;

    .line 50
    .line 51
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemIMSIParameter;-><init>(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x1

    .line 60
    sub-int/2addr v4, v5

    .line 61
    if-ne v2, v4, :cond_6

    .line 62
    .line 63
    const/16 v4, 0x2a

    .line 64
    .line 65
    if-ne v3, v4, :cond_6

    .line 66
    .line 67
    const/4 v3, 0x5

    .line 68
    if-eq v2, v3, :cond_5

    .line 69
    .line 70
    const/4 v3, 0x6

    .line 71
    if-ne v2, v3, :cond_6

    .line 72
    .line 73
    :cond_5
    new-instance v1, Lcom/samsung/android/server/wifi/SemIMSIParameter;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v1, p0, v5}, Lcom/samsung/android/server/wifi/SemIMSIParameter;-><init>(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    :cond_6
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/server/wifi/SemIMSIParameter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/samsung/android/server/wifi/SemIMSIParameter;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    .line 14
    .line 15
    add-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public isFullImsi()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public matchesImsi(Ljava/lang/String;)Z
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v4, p1

    .line 19
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    move-object v4, p1

    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public matchesMccMnc(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x5

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x6

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 p0, 0x2a

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 26
    .line 27
    return-object p0
.end method
