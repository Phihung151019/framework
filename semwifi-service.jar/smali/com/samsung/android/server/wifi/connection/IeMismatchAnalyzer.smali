.class public Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Util.IeMismatchAnalyzer"


# instance fields
.field private mAssocResponseLog:Ljava/lang/String;

.field private mIeMismatchLog:Ljava/lang/String;

.field private mRssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x7f

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mRssi:I

    .line 7
    .line 8
    return-void
.end method

.method private findEssentialLog(Lcom/samsung/android/server/wifi/connection/LogSet;)Z
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mIeMismatchLog:Ljava/lang/String;

    .line 6
    .line 7
    const/16 v0, -0x7f

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mRssi:I

    .line 10
    .line 11
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    if-lez v0, :cond_5

    .line 18
    .line 19
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 20
    .line 21
    add-int/lit8 v2, v0, -0x1

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mIeMismatchLog:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, "ASSOC REQ"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    const-string v2, "REASSOC REQ"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mRssi:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mIeMismatchLog:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    const-string v2, "ASSOC RESP"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    const-string v2, "REASSOC RESP"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    :cond_2
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const-string v2, "IE_MISMATCH"

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mIeMismatchLog:Ljava/lang/String;

    .line 104
    .line 105
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    xor-int/lit8 p0, p0, 0x1

    .line 115
    .line 116
    return p0
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->findEssentialLog(Lcom/samsung/android/server/wifi/connection/LogSet;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mIeMismatchLog:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "m3="

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const-string v0, "bssid="

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mRssi:I

    .line 46
    .line 47
    invoke-direct {v0, v1, p1, p0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mIeMismatchLog:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "assoc_rep="

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 81
    .line 82
    const/4 v1, 0x5

    .line 83
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;->mRssi:I

    .line 84
    .line 85
    invoke-direct {v0, v1, p1, p0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 90
    .line 91
    return-object p0
.end method
