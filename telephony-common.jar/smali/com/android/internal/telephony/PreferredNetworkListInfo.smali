.class public Lcom/android/internal/telephony/PreferredNetworkListInfo;
.super Ljava/lang/Object;
.source "PreferredNetworkListInfo.java"


# instance fields
.field public blacklist mGsmAct:I

.field public blacklist mGsmCompactAct:I

.field public blacklist mIndex:I

.field public blacklist mMode:I

.field public blacklist mOperator:Ljava/lang/String;

.field public blacklist mPlmn:Ljava/lang/String;

.field public blacklist mUtranAct:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    .line 37
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    .line 41
    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    .line 42
    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    .line 56
    iput p5, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    .line 57
    iput p6, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    .line 58
    iput p7, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkListInfo;->copyFrom(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V

    return-void
.end method


# virtual methods
.method protected blacklist copyFrom(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V
    .locals 1

    .line 74
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    .line 75
    iget-object v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    .line 77
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    .line 78
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    .line 79
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    .line 80
    iget p1, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    iput p1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredNetworkListInfo: { index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gsmAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gsmCompactAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", utranAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
