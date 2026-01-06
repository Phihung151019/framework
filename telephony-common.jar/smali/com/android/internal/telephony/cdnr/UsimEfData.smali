.class public final Lcom/android/internal/telephony/cdnr/UsimEfData;
.super Ljava/lang/Object;
.source "UsimEfData.java"

# interfaces
.implements Lcom/android/internal/telephony/cdnr/EfData;


# instance fields
.field private final blacklist mUsim:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/UsimEfData;->mUsim:Lcom/android/internal/telephony/uicc/SIMRecords;

    return-void
.end method


# virtual methods
.method public blacklist getEhplmnList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/UsimEfData;->mUsim:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOperatorPlmnList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPlmnNetworkNameList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/UsimEfData;->mUsim:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getServiceProviderDisplayInformation()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/UsimEfData;->mUsim:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderDisplayInformation()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/UsimEfData;->mUsim:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public blacklist getServiceProviderNameDisplayCondition(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/UsimEfData;->mUsim:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getCarrierNameDisplayCondition()I

    move-result p0

    or-int/lit8 p0, p0, 0x1

    return p0

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/UsimEfData;->mUsim:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getCarrierNameDisplayCondition()I

    move-result p0

    or-int/lit8 p0, p0, 0x2

    return p0
.end method
