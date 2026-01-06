.class public final Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;
.super Ljava/lang/Object;
.source "IccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperatorPlmnInfo"
.end annotation


# instance fields
.field public final blacklist lacTacEnd:I

.field public final blacklist lacTacStart:I

.field public final blacklist plmnNumericPattern:Ljava/lang/String;

.field public final blacklist pnnRecordId:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1905
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    .line 1906
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    .line 1907
    iput p3, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    .line 1908
    iput p4, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1945
    :cond_0
    instance-of v1, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1947
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    .line 1948
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    iget v3, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    iget v3, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getPnnIdx(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    .line 1917
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 1921
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1922
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    .line 1923
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1929
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    if-nez p1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    const v2, 0xfffe

    if-ne v1, v2, :cond_3

    .line 1930
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    :goto_1
    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_3
    if-lt p2, p1, :cond_5

    .line 1932
    iget p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    if-le p2, p1, :cond_4

    goto :goto_2

    .line 1933
    :cond_4
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    goto :goto_1

    :cond_5
    :goto_2
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    .line 1939
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1938
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{plmnNumericPattern = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->plmnNumericPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lacTacStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lacTacEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->lacTacEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pnnRecordId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->pnnRecordId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
