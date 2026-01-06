.class public Lcom/android/internal/telephony/SemCsgInfo;
.super Ljava/lang/Object;
.source "SemCsgInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    }
.end annotation


# instance fields
.field private blacklist mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field private blacklist mCsgId:I

.field private blacklist mCsgName:Ljava/lang/String;

.field private blacklist mOperatorNumeric:Ljava/lang/String;

.field private blacklist mRat:I

.field private blacklist mSignalStrength:I


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    .line 70
    sget-object v1, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    iput-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 94
    invoke-static {p5}, Lcom/android/internal/telephony/SemCsgInfo;->convertFromInt(I)Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    move-result-object p5

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/SemCsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SemCsgInfo$CsgListCat;I)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SemCsgInfo$CsgListCat;I)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 83
    iput p4, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    .line 84
    iput-object p5, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    .line 85
    iput p6, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemCsgInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemCsgInfo;->copyFrom(Lcom/android/internal/telephony/SemCsgInfo;)V

    return-void
.end method

.method public static blacklist convertFromInt(I)Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .locals 2

    .line 117
    sget-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return-object v0

    .line 122
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object p0

    .line 121
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object p0

    .line 120
    :cond_2
    sget-object p0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object p0
.end method


# virtual methods
.method protected blacklist copyFrom(Lcom/android/internal/telephony/SemCsgInfo;)V
    .locals 1

    .line 108
    iget v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    .line 109
    iget-object v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 111
    iget v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    iput v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    .line 112
    iget-object v0, p1, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    iput-object v0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    .line 113
    iget p1, p1, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    iput p1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    return-void
.end method

.method public blacklist getCategory()Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object p0
.end method

.method public blacklist getId()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    return p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getOperator()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRat()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    return p0
.end method

.method public blacklist getSignalStrength()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    const-string v1, "SemCsgInfo: { ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", RAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ", Category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemCsgInfo;->mCsgCat:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemCsgInfo;->mSignalStrength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "dBm }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
